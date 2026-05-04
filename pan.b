	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM goal */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC move_frogs */

	case 5: // STATE 1
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 8: // STATE 6
		;
		now.position[ Index((((P1 *)_this)->i+1), 11) ] = trpt->bup.ovals[1];
		now.position[ Index(((P1 *)_this)->i, 11) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 9: // STATE 13
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 13
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 14
		;
	/* 0 */	((P1 *)_this)->i = trpt->bup.oval;
		;
		;
		goto R999;

	case 12: // STATE 20
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 15: // STATE 25
		;
		now.position[ Index((((P1 *)_this)->i+2), 11) ] = trpt->bup.ovals[1];
		now.position[ Index(((P1 *)_this)->i, 11) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 16: // STATE 32
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 17: // STATE 32
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 18: // STATE 33
		;
	/* 0 */	((P1 *)_this)->i = trpt->bup.oval;
		;
		;
		goto R999;

	case 19: // STATE 39
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 22: // STATE 44
		;
		now.position[ Index((((P1 *)_this)->i-1), 11) ] = trpt->bup.ovals[1];
		now.position[ Index(((P1 *)_this)->i, 11) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 23: // STATE 51
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 24: // STATE 51
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 25: // STATE 52
		;
	/* 0 */	((P1 *)_this)->i = trpt->bup.oval;
		;
		;
		goto R999;

	case 26: // STATE 58
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 29: // STATE 63
		;
		now.position[ Index((((P1 *)_this)->i-2), 11) ] = trpt->bup.ovals[1];
		now.position[ Index(((P1 *)_this)->i, 11) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 30: // STATE 70
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 31: // STATE 70
		;
		((P1 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 71
		;
	/* 0 */	((P1 *)_this)->i = trpt->bup.oval;
		;
		;
		goto R999;

	case 33: // STATE 80
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 34: // STATE 1
		;
		((P0 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 36: // STATE 3
		;
		now.position[ Index(((P0 *)_this)->i, 11) ] = trpt->bup.oval;
		;
		goto R999;

	case 37: // STATE 4
		;
		((P0 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 38: // STATE 5
		;
	/* 0 */	((P0 *)_this)->i = trpt->bup.oval;
		;
		;
		goto R999;

	case 39: // STATE 10
		;
		now.position[ Index((11/2), 11) ] = trpt->bup.oval;
		;
		goto R999;

	case 40: // STATE 11
		;
		((P0 *)_this)->i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 42: // STATE 13
		;
		now.position[ Index(((P0 *)_this)->i, 11) ] = trpt->bup.oval;
		;
		goto R999;

	case 43: // STATE 14
		;
		((P0 *)_this)->i = trpt->bup.oval;
		;
		goto R999;

	case 44: // STATE 15
		;
	/* 0 */	((P0 *)_this)->i = trpt->bup.oval;
		;
		;
		goto R999;

	case 45: // STATE 20
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 46: // STATE 21
		;
		p_restor(II);
		;
		;
		goto R999;
	}

