
instance FA_ENEMY_PREHIT_7(C_FIGHTAI)
{
	move[0] = MOVE_STRAFE;
};

instance FA_ENEMY_STORMPREHIT_7(C_FIGHTAI)
{
	move[0] = MOVE_STRAFE;
};

instance FA_MY_W_COMBO_7(C_FIGHTAI)
{
};

instance FA_MY_W_RUNTO_7(C_FIGHTAI)
{
	move[0] = MOVE_TURN;
};

instance FA_MY_W_STRAFE_7(C_FIGHTAI)
{
};

instance FA_MY_W_FOCUS_7(C_FIGHTAI)
{
	move[0] = MOVE_ATTACK;
	move[1] = MOVE_STRAFE;
};

instance FA_MY_W_NOFOCUS_7(C_FIGHTAI)
{
	move[0] = MOVE_TURN;
};

instance FA_MY_G_COMBO_7(C_FIGHTAI)
{
};

instance FA_MY_G_RUNTO_7(C_FIGHTAI)
{
	move[0] = MOVE_ATTACK;
};

instance FA_MY_G_STRAFE_7(C_FIGHTAI)
{
};

instance FA_MY_G_FOCUS_7(C_FIGHTAI)
{
	move[0] = MOVE_RUN;
};

instance FA_MY_FK_FOCUS_7(C_FIGHTAI)
{
	move[0] = MOVE_RUN;
};

instance FA_MY_G_FK_NOFOCUS_7(C_FIGHTAI)
{
	move[0] = MOVE_TURN;
};

instance FA_MY_FK_FOCUS_FAR_7(C_FIGHTAI)
{
	move[0] = MOVE_ATTACK;
};

instance FA_MY_FK_NOFOCUS_FAR_7(C_FIGHTAI)
{
	move[0] = MOVE_TURN;
};

instance FA_MY_FK_FOCUS_MAG_7(C_FIGHTAI)
{
	move[0] = MOVE_ATTACK;
	move[1] = MOVE_WAIT_LONGER;
	move[2] = MOVE_WAIT_LONGER;
	move[3] = MOVE_WAIT_LONGER;
};

instance FA_MY_FK_NOFOCUS_MAG_7(C_FIGHTAI)
{
	move[0] = MOVE_TURN;
};

