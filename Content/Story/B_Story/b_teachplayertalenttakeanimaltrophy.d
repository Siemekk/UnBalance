
func int b_teachplayertalenttakeanimaltrophy(var C_NPC slf,var C_NPC oth,var int trophy)
{
	var int kosten;
	kosten = b_getlearncosttalent(oth,NPC_TALENT_TAKEANIMALTROPHY,trophy);
	if(oth.lp < kosten)
	{
		PrintScreen(PRINT_NOTENOUGHLEARNPOINTS,-1,-1,FONT_SCREENSMALL,2);
		b_say(slf,oth,"$NOLEARNNOPOINTS");
		return FALSE;
	};
	oth.lp = oth.lp - kosten;
	Log_CreateTopic(TOPIC_TALENTANIMALTROPHY,LOG_NOTE);
	b_logentry(TOPIC_TALENTANIMALTROPHY,"Spis moich umiej�tno�ci �owieckich");
	if(trophy == TROPHY_TEETH)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_TEETH] = TRUE;
		Ico_Teeth="Ico_TeethYes.tga";
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� usuwania zwierz�cych k��w.");
	};
	if(trophy == TROPHY_MEAT)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[1] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� patroszenia zwierz�t.");
	};
	if(trophy == TROPHY_CLAWS)
	{
		Ico_Claws="Ico_ClawsYes.tga";
		PLAYER_TALENT_TAKEANIMALTROPHY[2] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� usuwania zwierz�tom pazur�w.");
	};
	if(trophy == TROPHY_FUR)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[3] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� �ci�gania futer z wilk�w, warg�w, cieniostwor�w i trolli.");
		Ico_Furs="Ico_FursYes.tga";
	};
	if(trophy == TROPHY_HEART)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[4] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� usuwania serc demon�w, ork�w, golem�w i jaszczurocz�ek�w.");
	};
	if(trophy == TROPHY_SHADOWHORN)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[5] = TRUE;
		Ico_ShadowHorn="Ico_ShadowHornYes.tga";
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� usuwania rog�w cieniostworom.");
	};
	if(trophy == TROPHY_FIRETONGUE)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[6] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,".Umiej�tno�� usuwania j�zyk�w jaszczurocz�ek�w, jaszczur�w, aligator�w.");
		Ico_FireLan="Ico_FireWaranYes.tga";
	};
	if(trophy == TROPHY_BFWING)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[7] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� pozyskiwania skrzyde� krwiopijc�w.");
		
	};
	if(trophy == TROPHY_BFSTING)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[8] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� pozyskiwania ��de� krwiopijc�w.");
		Ico_BloodFlySting="Ico_BloodFlyStingYes.tga";
		
	};
	if(trophy == TROPHY_MANDIBLES)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[9] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� pozyskiwania �uwaczek.");
	};
	if(trophy == TROPHY_CRAWLERPLATE)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[10] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY, "Umiej�tno�� usuwania pancerzy pe�zacza.");
		Ico_CrawlerPlate="Ico_ClawerPlateYes.tga";
	};
	if(trophy == TROPHY_DRGSNAPPERHORN)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[11] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� usuwania rog�w smoczych z�baczy.");
		
	};
	if(trophy == TROPHY_DRAGONSCALE)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[12] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� pozyskiwania smoczych �usek.");
	};
	if(trophy == TROPHY_DRAGONBLOOD)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[13] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� pozyskiwania smoczej krwi.");
	};
	if(trophy == TROPHY_REPTILESKIN)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[14] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� sk�rowania jaszczur�w, aligator�w i topielc�w");
		Ico_LurkerSkin="Ico_LurkerYes.tga";
	};
	PrintScreen(PRINT_LEARNTAKEANIMALTROPHY,-1,-1,FONT_SCREEN,2);
	Npc_SetTalentSkill(oth,NPC_TALENT_TAKEANIMALTROPHY,1);
	return TRUE;
};

