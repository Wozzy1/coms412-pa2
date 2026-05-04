/*
   Frog Crossing Problem (SPIN / Promela Model)
   =============================================
   There are m green frogs on the left and m yellow frogs on the right,
   separated by one empty rock, giving N = 2m+1 total rocks.

   Green frogs (value 1) move left-to-right (increasing index).
   Yellow frogs (value 2) move right-to-left (decreasing index).

   Each frog may:
     - Step: move one rock forward if that rock is empty.
     - Jump: leap over exactly one frog of the OPPOSITE color onto an
             empty rock two positions ahead.

   Goal: all green frogs end up to the right of all yellow frogs,
         i.e., positions [0..m-1] hold yellow frogs and
              positions [m+1..N-1] hold green frogs
         (the empty rock ends up back in the middle).

   The LTL property is the NEGATION of the goal (so that SPIN's
   counter-example IS the solution trace).  Run with:

       spin -a frogcrossing.pml
       gcc -o pan pan.c
       ./pan -a -f           (find accepting cycle / exhaustive)

   Or for a direct counter-example (the plan):
       spin -ltl goal frogcrossing.pml
*/


/* ── Model parameter ──────────────────────────────────────────── */
#define N 7          /* total rocks; must be odd, N = 2m+1        */
#define M (N/2)      /* number of frogs of each colour            */

/* ── State ────────────────────────────────────────────────────── */
int position[N];
/*
   position[i] == 0  → empty rock
   position[i] == 1  → green frog  (moves toward higher indices)
   position[i] == 2  → yellow frog (moves toward lower  indices)
*/

/* ── Move macro ───────────────────────────────────────────────── */
/*
   pos1 : rock the frog is currently on
   pos2 : rock the frog moves to
   frog : 1 (green) or 2 (yellow)
*/
#define move(pos1, pos2, frog) \
    atomic { \
        printf("Frog %d moves from %d to %d\n", frog, pos1, pos2); \
        position[pos1] = 0; \
        position[pos2] = frog; \
    }

/* ── Initialisation ───────────────────────────────────────────── */
init {
    int i;

    /* Left half: green frogs (indices 0 .. M-1) */
    i = 0;
    do
    :: i < M  -> position[i] = 1; i++
    :: i >= M -> break
    od;

    /* Middle rock: empty */
    position[M] = 0;

    /* Right half: yellow frogs (indices M+1 .. N-1) */
    i = M + 1;
    do
    :: i < N  -> position[i] = 2; i++
    :: i >= N -> break
    od;

    /* ── Active mover process ─────────────────────────────────── */
    run mover()
}

/* ── Mover process ────────────────────────────────────────────── */
/*
   Keeps choosing a legal move until no move is available (deadlock
   = puzzle solved or stuck).  SPIN's exhaustive search will explore
   all orderings and find the one that reaches the goal.
*/
active proctype mover() {
    int i;
    do
    /*
       Green frog STEP: position i holds green (1),
       position i+1 is empty (0), and i+1 is in bounds.
    */
    :: atomic {
           i = 0;
           do
           :: i < N-1 ->
               if
               :: position[i] == 1 && position[i+1] == 0 ->
                   move(i, i+1, 1); break
               :: else -> skip
               fi;
               i++
           :: i >= N-1 -> break
           od
       }

    /*
       Green frog JUMP: position i holds green (1),
       position i+1 holds yellow (2),
       position i+2 is empty (0), and i+2 is in bounds.
    */
    :: atomic {
           i = 0;
           do
           :: i < N-2 ->
               if
               :: position[i] == 1 && position[i+1] == 2 && position[i+2] == 0 ->
                   move(i, i+2, 1); break
               :: else -> skip
               fi;
               i++
           :: i >= N-2 -> break
           od
       }

    /*
       Yellow frog STEP: position i holds yellow (2),
       position i-1 is empty (0), and i-1 is in bounds.
    */
    :: atomic {
           i = N-1;
           do
           :: i > 0 ->
               if
               :: position[i] == 2 && position[i-1] == 0 ->
                   move(i, i-1, 2); break
               :: else -> skip
               fi;
               i--
           :: i <= 0 -> break
           od
       }

    /*
       Yellow frog JUMP: position i holds yellow (2),
       position i-1 holds green (1),
       position i-2 is empty (0), and i-2 >= 0.
    */
    :: atomic {
           i = N-1;
           do
           :: i > 1 ->
               if
               :: position[i] == 2 && position[i-1] == 1 && position[i-2] == 0 ->
                   move(i, i-2, 2); break
               :: else -> skip
               fi;
               i--
           :: i <= 1 -> break
           od
       }
    od
}

/* ── Goal predicate ───────────────────────────────────────────── */
/*
   The puzzle is solved when:
     positions [0 .. M-1]   all contain yellow frogs (2)
     position  [M]          is empty                 (0)   [optional]
     positions [M+1 .. N-1] all contain green  frogs (1)

   We define a macro that evaluates to true when solved.
   For N=7 (M=3) this expands to an explicit check of all 7 cells.
   For a fully generic version you would need an inline or LTL macro
   -- here we provide both a direct inline and an LTL formula.
*/

/* Inline predicate (used in the LTL formula below) */
#define solved ( \
    position[0]==2 && position[1]==2 && position[2]==2 && \
    position[3]==0 && \
    position[4]==1 && position[5]==1 && position[6]==1 )

/*
   LTL specification
   -----------------
   We ask SPIN to verify that the goal is NEVER reached.
   If the property is violated, SPIN produces a counter-example
   that is exactly the sequence of moves that solves the puzzle.

   Verify with:
       spin -a frogcrossing.pml
       gcc -o pan pan.c
       ./pan -a
   Then replay the trail:
       spin -t -p frogcrossing.pml
*/
ltl goal { [] !solved }
