#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM goal */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [(!(!((((((((((((position[0]==2)&&(position[1]==2))&&(position[2]==2))&&(position[3]==2))&&(position[4]==2))&&(position[5]==0))&&(position[6]==1))&&(position[7]==1))&&(position[8]==1))&&(position[9]==1))&&(position[10]==1)))))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][1] = 1;
		if (!( !( !((((((((((((now.position[0]==2)&&(now.position[1]==2))&&(now.position[2]==2))&&(now.position[3]==2))&&(now.position[4]==2))&&(now.position[5]==0))&&(now.position[6]==1))&&(now.position[7]==1))&&(now.position[8]==1))&&(now.position[9]==1))&&(now.position[10]==1))))))
			continue;
		/* merge: assert(!(!(!((((((((((((position[0]==2)&&(position[1]==2))&&(position[2]==2))&&(position[3]==2))&&(position[4]==2))&&(position[5]==0))&&(position[6]==1))&&(position[7]==1))&&(position[8]==1))&&(position[9]==1))&&(position[10]==1))))))(0, 2, 6) */
		reached[2][2] = 1;
		spin_assert( !( !( !((((((((((((now.position[0]==2)&&(now.position[1]==2))&&(now.position[2]==2))&&(now.position[3]==2))&&(now.position[4]==2))&&(now.position[5]==0))&&(now.position[6]==1))&&(now.position[7]==1))&&(now.position[8]==1))&&(now.position[9]==1))&&(now.position[10]==1))))), " !( !( !((((((((((((position[0]==2)&&(position[1]==2))&&(position[2]==2))&&(position[3]==2))&&(position[4]==2))&&(position[5]==0))&&(position[6]==1))&&(position[7]==1))&&(position[8]==1))&&(position[9]==1))&&(position[10]==1)))))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[2][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC move_frogs */
	case 5: // STATE 1 - frogcrossing-starter.txt:82 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("move_frogs:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - frogcrossing-starter.txt:84 - [((i<(11-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((P1 *)_this)->i<(11-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - frogcrossing-starter.txt:86 - [(((position[i]==1)&&(position[(i+1)]==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(((now.position[ Index(((P1 *)_this)->i, 11) ]==1)&&(now.position[ Index((((P1 *)_this)->i+1), 11) ]==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 4 - frogcrossing-starter.txt:87 - [printf('Frog %d moves from %d to %d\\n',1,i,(i+1))] (0:18:2 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		Printf("Frog %d moves from %d to %d\n", 1, ((P1 *)_this)->i, (((P1 *)_this)->i+1));
		/* merge: position[i] = 0(18, 5, 18) */
		reached[1][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.position[ Index(((P1 *)_this)->i, 11) ];
		now.position[ Index(((P1 *)_this)->i, 11) ] = 0;
#ifdef VAR_RANGES
		logval("position[move_frogs:i]", now.position[ Index(((P1 *)_this)->i, 11) ]);
#endif
		;
		/* merge: position[(i+1)] = 1(18, 6, 18) */
		reached[1][6] = 1;
		(trpt+1)->bup.ovals[1] = now.position[ Index((((P1 *)_this)->i+1), 11) ];
		now.position[ Index((((P1 *)_this)->i+1), 11) ] = 1;
#ifdef VAR_RANGES
		logval("position[(move_frogs:i+1)]", now.position[ Index((((P1 *)_this)->i+1), 11) ]);
#endif
		;
		/* merge: goto :b3(18, 8, 18) */
		reached[1][8] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 9: // STATE 10 - frogcrossing-starter.txt:88 - [(1)] (16:0:1 - 1)
		IfNotBlocked
		reached[1][10] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(16, 12, 16) */
		reached[1][12] = 1;
		;
		/* merge: i = (i+1)(16, 13, 16) */
		reached[1][13] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("move_frogs:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 17, 16) */
		reached[1][17] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 10: // STATE 13 - frogcrossing-starter.txt:90 - [i = (i+1)] (0:16:1 - 2)
		IfNotBlocked
		reached[1][13] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("move_frogs:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 17, 16) */
		reached[1][17] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 11: // STATE 14 - frogcrossing-starter.txt:91 - [((i>=(11-1)))] (18:0:1 - 1)
		IfNotBlocked
		reached[1][14] = 1;
		if (!((((P1 *)_this)->i>=(11-1))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.oval = ((P1 *)_this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->i = 0;
		/* merge: goto :b3(0, 15, 18) */
		reached[1][15] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 12: // STATE 20 - frogcrossing-starter.txt:97 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("move_frogs:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 21 - frogcrossing-starter.txt:99 - [((i<(11-2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][21] = 1;
		if (!((((P1 *)_this)->i<(11-2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 22 - frogcrossing-starter.txt:101 - [((((position[i]==1)&&(position[(i+1)]==2))&&(position[(i+2)]==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		if (!((((now.position[ Index(((P1 *)_this)->i, 11) ]==1)&&(now.position[ Index((((P1 *)_this)->i+1), 11) ]==2))&&(now.position[ Index((((P1 *)_this)->i+2), 11) ]==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 23 - frogcrossing-starter.txt:102 - [printf('Frog %d moves from %d to %d\\n',1,i,(i+2))] (0:37:2 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		Printf("Frog %d moves from %d to %d\n", 1, ((P1 *)_this)->i, (((P1 *)_this)->i+2));
		/* merge: position[i] = 0(37, 24, 37) */
		reached[1][24] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.position[ Index(((P1 *)_this)->i, 11) ];
		now.position[ Index(((P1 *)_this)->i, 11) ] = 0;
#ifdef VAR_RANGES
		logval("position[move_frogs:i]", now.position[ Index(((P1 *)_this)->i, 11) ]);
#endif
		;
		/* merge: position[(i+2)] = 1(37, 25, 37) */
		reached[1][25] = 1;
		(trpt+1)->bup.ovals[1] = now.position[ Index((((P1 *)_this)->i+2), 11) ];
		now.position[ Index((((P1 *)_this)->i+2), 11) ] = 1;
#ifdef VAR_RANGES
		logval("position[(move_frogs:i+2)]", now.position[ Index((((P1 *)_this)->i+2), 11) ]);
#endif
		;
		/* merge: goto :b4(37, 27, 37) */
		reached[1][27] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 16: // STATE 29 - frogcrossing-starter.txt:103 - [(1)] (35:0:1 - 1)
		IfNotBlocked
		reached[1][29] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(35, 31, 35) */
		reached[1][31] = 1;
		;
		/* merge: i = (i+1)(35, 32, 35) */
		reached[1][32] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("move_frogs:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 36, 35) */
		reached[1][36] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 17: // STATE 32 - frogcrossing-starter.txt:105 - [i = (i+1)] (0:35:1 - 2)
		IfNotBlocked
		reached[1][32] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("move_frogs:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 36, 35) */
		reached[1][36] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 18: // STATE 33 - frogcrossing-starter.txt:106 - [((i>=(11-2)))] (37:0:1 - 1)
		IfNotBlocked
		reached[1][33] = 1;
		if (!((((P1 *)_this)->i>=(11-2))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.oval = ((P1 *)_this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->i = 0;
		/* merge: goto :b4(0, 34, 37) */
		reached[1][34] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 19: // STATE 39 - frogcrossing-starter.txt:112 - [i = (11-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][39] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (11-1);
#ifdef VAR_RANGES
		logval("move_frogs:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 40 - frogcrossing-starter.txt:114 - [((i>0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][40] = 1;
		if (!((((P1 *)_this)->i>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: // STATE 41 - frogcrossing-starter.txt:116 - [(((position[i]==2)&&(position[(i-1)]==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][41] = 1;
		if (!(((now.position[ Index(((P1 *)_this)->i, 11) ]==2)&&(now.position[ Index((((P1 *)_this)->i-1), 11) ]==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 42 - frogcrossing-starter.txt:117 - [printf('Frog %d moves from %d to %d\\n',2,i,(i-1))] (0:56:2 - 1)
		IfNotBlocked
		reached[1][42] = 1;
		Printf("Frog %d moves from %d to %d\n", 2, ((P1 *)_this)->i, (((P1 *)_this)->i-1));
		/* merge: position[i] = 0(56, 43, 56) */
		reached[1][43] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.position[ Index(((P1 *)_this)->i, 11) ];
		now.position[ Index(((P1 *)_this)->i, 11) ] = 0;
#ifdef VAR_RANGES
		logval("position[move_frogs:i]", now.position[ Index(((P1 *)_this)->i, 11) ]);
#endif
		;
		/* merge: position[(i-1)] = 2(56, 44, 56) */
		reached[1][44] = 1;
		(trpt+1)->bup.ovals[1] = now.position[ Index((((P1 *)_this)->i-1), 11) ];
		now.position[ Index((((P1 *)_this)->i-1), 11) ] = 2;
#ifdef VAR_RANGES
		logval("position[(move_frogs:i-1)]", now.position[ Index((((P1 *)_this)->i-1), 11) ]);
#endif
		;
		/* merge: goto :b5(56, 46, 56) */
		reached[1][46] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 23: // STATE 48 - frogcrossing-starter.txt:118 - [(1)] (54:0:1 - 1)
		IfNotBlocked
		reached[1][48] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(54, 50, 54) */
		reached[1][50] = 1;
		;
		/* merge: i = (i-1)(54, 51, 54) */
		reached[1][51] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i-1);
#ifdef VAR_RANGES
		logval("move_frogs:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 55, 54) */
		reached[1][55] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 24: // STATE 51 - frogcrossing-starter.txt:120 - [i = (i-1)] (0:54:1 - 2)
		IfNotBlocked
		reached[1][51] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i-1);
#ifdef VAR_RANGES
		logval("move_frogs:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 55, 54) */
		reached[1][55] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 25: // STATE 52 - frogcrossing-starter.txt:121 - [((i<=0))] (56:0:1 - 1)
		IfNotBlocked
		reached[1][52] = 1;
		if (!((((P1 *)_this)->i<=0)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.oval = ((P1 *)_this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->i = 0;
		/* merge: goto :b5(0, 53, 56) */
		reached[1][53] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 26: // STATE 58 - frogcrossing-starter.txt:127 - [i = (11-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][58] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (11-1);
#ifdef VAR_RANGES
		logval("move_frogs:i", ((P1 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 59 - frogcrossing-starter.txt:129 - [((i>1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][59] = 1;
		if (!((((P1 *)_this)->i>1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 60 - frogcrossing-starter.txt:131 - [((((position[i]==2)&&(position[(i-1)]==1))&&(position[(i-2)]==0)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][60] = 1;
		if (!((((now.position[ Index(((P1 *)_this)->i, 11) ]==2)&&(now.position[ Index((((P1 *)_this)->i-1), 11) ]==1))&&(now.position[ Index((((P1 *)_this)->i-2), 11) ]==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 61 - frogcrossing-starter.txt:132 - [printf('Frog %d moves from %d to %d\\n',2,i,(i-2))] (0:75:2 - 1)
		IfNotBlocked
		reached[1][61] = 1;
		Printf("Frog %d moves from %d to %d\n", 2, ((P1 *)_this)->i, (((P1 *)_this)->i-2));
		/* merge: position[i] = 0(75, 62, 75) */
		reached[1][62] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.position[ Index(((P1 *)_this)->i, 11) ];
		now.position[ Index(((P1 *)_this)->i, 11) ] = 0;
#ifdef VAR_RANGES
		logval("position[move_frogs:i]", now.position[ Index(((P1 *)_this)->i, 11) ]);
#endif
		;
		/* merge: position[(i-2)] = 2(75, 63, 75) */
		reached[1][63] = 1;
		(trpt+1)->bup.ovals[1] = now.position[ Index((((P1 *)_this)->i-2), 11) ];
		now.position[ Index((((P1 *)_this)->i-2), 11) ] = 2;
#ifdef VAR_RANGES
		logval("position[(move_frogs:i-2)]", now.position[ Index((((P1 *)_this)->i-2), 11) ]);
#endif
		;
		/* merge: goto :b6(75, 65, 75) */
		reached[1][65] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 30: // STATE 67 - frogcrossing-starter.txt:133 - [(1)] (73:0:1 - 1)
		IfNotBlocked
		reached[1][67] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(73, 69, 73) */
		reached[1][69] = 1;
		;
		/* merge: i = (i-1)(73, 70, 73) */
		reached[1][70] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i-1);
#ifdef VAR_RANGES
		logval("move_frogs:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[1][74] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 31: // STATE 70 - frogcrossing-starter.txt:135 - [i = (i-1)] (0:73:1 - 2)
		IfNotBlocked
		reached[1][70] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->i;
		((P1 *)_this)->i = (((P1 *)_this)->i-1);
#ifdef VAR_RANGES
		logval("move_frogs:i", ((P1 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 74, 73) */
		reached[1][74] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 32: // STATE 71 - frogcrossing-starter.txt:136 - [((i<=1))] (75:0:1 - 1)
		IfNotBlocked
		reached[1][71] = 1;
		if (!((((P1 *)_this)->i<=1)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.oval = ((P1 *)_this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->i = 0;
		/* merge: goto :b6(0, 72, 75) */
		reached[1][72] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 33: // STATE 80 - frogcrossing-starter.txt:140 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][80] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 34: // STATE 1 - frogcrossing-starter.txt:60 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->i;
		((P0 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 2 - frogcrossing-starter.txt:62 - [((i<(11/2)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((P0 *)_this)->i<(11/2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 3 - frogcrossing-starter.txt:62 - [position[i] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = now.position[ Index(((P0 *)_this)->i, 11) ];
		now.position[ Index(((P0 *)_this)->i, 11) ] = 1;
#ifdef VAR_RANGES
		logval("position[:init::i]", now.position[ Index(((P0 *)_this)->i, 11) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: // STATE 4 - frogcrossing-starter.txt:62 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->i;
		((P0 *)_this)->i = (((P0 *)_this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 5 - frogcrossing-starter.txt:63 - [((i>=(11/2)))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((P0 *)_this)->i>=(11/2))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.oval = ((P0 *)_this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->i = 0;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 10 - frogcrossing-starter.txt:66 - [position[(11/2)] = 0] (0:0:1 - 3)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = now.position[ Index((11/2), 11) ];
		now.position[ Index((11/2), 11) ] = 0;
#ifdef VAR_RANGES
		logval("position[(11/2)]", now.position[ Index((11/2), 11) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: // STATE 11 - frogcrossing-starter.txt:67 - [i = ((11/2)+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->i;
		((P0 *)_this)->i = ((11/2)+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 12 - frogcrossing-starter.txt:70 - [((i<11))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!((((P0 *)_this)->i<11)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 13 - frogcrossing-starter.txt:70 - [position[i] = 2] (0:0:1 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = now.position[ Index(((P0 *)_this)->i, 11) ];
		now.position[ Index(((P0 *)_this)->i, 11) ] = 2;
#ifdef VAR_RANGES
		logval("position[:init::i]", now.position[ Index(((P0 *)_this)->i, 11) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: // STATE 14 - frogcrossing-starter.txt:70 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->i;
		((P0 *)_this)->i = (((P0 *)_this)->i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P0 *)_this)->i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 15 - frogcrossing-starter.txt:71 - [((i>=11))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (!((((P0 *)_this)->i>=11)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: i */  (trpt+1)->bup.oval = ((P0 *)_this)->i;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->i = 0;
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 20 - frogcrossing-starter.txt:74 - [(run move_frogs())] (0:0:0 - 3)
		IfNotBlocked
		reached[0][20] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 21 - frogcrossing-starter.txt:75 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

