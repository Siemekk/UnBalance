
instance FA_ENEMY_PREHIT_12(C_FIGHTAI)
{
	move[0] = MOVE_JUMPBACK;
	move[1] = MOVE_PARADE;
};

instance FA_ENEMY_STORMPREHIT_12(C_FIGHTAI)
{
	move[0] = MOVE_STRAFE;
};

instance FA_MY_W_COMBO_12(C_FIGHTAI)
{
};

instance FA_MY_W_RUNTO_12(C_FIGHTAI)
{
	move[0] = MOVE_TURN;
};

instance FA_MY_W_STRAFE_12(C_FIGHTAI)
{
};

instance FA_MY_W_FOCUS_12(C_FIGHTAI)
{
	move[0] = MOVE_FRONTATTACK;
	move[1] = MOVE_TRIPLEATTACK;
	move[2] = MOVE_ATTACK;
	move[3] = MOVE_WAIT;
	move[4] = MOVE_TRIPLEATTACK;
	move[5] = MOVE_WAIT;
};

instance FA_MY_W_NOFOCUS_12(C_FIGHTAI)
{
	move[0] = MOVE_TURN;
};

instance FA_MY_G_COMBO_12(C_FIGHTAI)
{
};

instance FA_MY_G_RUNTO_12(C_FIGHTAI)
{
	move[0] = MOVE_RUN;
};

instance FA_MY_G_STRAFE_12(C_FIGHTAI)
{
};

instance FA_MY_G_FOCUS_12(C_FIGHTAI)
{
	move[0] = MOVE_RUN;
	move[1] = MOVE_RUN;
	move[2] = MOVE_STRAFE;
};

instance FA_MY_FK_FOCUS_12(C_FIGHTAI)
{
	move[0] = MOVE_RUN;
};

instance FA_MY_G_FK_NOFOCUS_12(C_FIGHTAI)
{
	move[0] = MOVE_TURN;
};

instance FA_MY_FK_FOCUS_FAR_12(C_FIGHTAI)
{
	move[0] = MOVE_ATTACK;
};

instance FA_MY_FK_NOFOCUS_FAR_12(C_FIGHTAI)
{
	move[0] = MOVE_TURN;
};

instance FA_MY_FK_FOCUS_MAG_12(C_FIGHTAI)
{
	move[0] = MOVE_ATTACK;
	move[1] = MOVE_WAIT_EXT;
	move[2] = MOVE_WAIT_EXT;
	move[3] = MOVE_WAIT_EXT;
};

instance FA_MY_FK_NOFOCUS_MAG_12(C_FIGHTAI)
{
	move[0] = MOVE_TURN;
};

