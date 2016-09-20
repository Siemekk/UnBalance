
func void g_picklock(var int bsuccess,var int bbrokenopen)
{
	var int rnd;
	if(bsuccess)
	{
		if(bbrokenopen)
		{
			Snd_Play3d(self,"PICKLOCK_UNLOCK");
			Prints_Ext(PRINT_PICKLOCK_UNLOCK,RGBA(0,180,0,255));
		}
		else
		{
			Snd_Play3d(self,"PICKLOCK_SUCCESS");
			Prints_Ext(PRINT_PICKLOCK_SUCCESS,RGBA(0,180,0,255));
			B_GivePlayerXP(1);
		};
	}
	else if(bbrokenopen)
	{
		Snd_Play3d(self,"PICKLOCK_BROKEN");
		Prints_Ext(PRINT_PICKLOCK_BROKEN,RGBA(180,0,0,255));
		rnd = Hlp_Random(100);
		if(rnd <= 25)
		{
			Npc_SendPassivePerc(hero,PERC_ASSESSQUIETSOUND,hero,hero);
		};
	}
	else
	{
		Snd_Play3d(self,"PICKLOCK_FAILURE");
		Prints_Ext(PRINT_PICKLOCK_FAILURE,RGBA(255,160,0,255));
	};
};

