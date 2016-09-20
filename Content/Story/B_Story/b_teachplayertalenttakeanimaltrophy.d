
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
	b_logentry(TOPIC_TALENTANIMALTROPHY,"Spis moich umiejêtnoœci ³owieckich");
	if(trophy == TROPHY_TEETH)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_TEETH] = TRUE;
		Ico_Teeth="Ico_TeethYes.tga";
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ usuwania zwierzêcych k³ów.");
	};
	if(trophy == TROPHY_MEAT)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[1] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ patroszenia zwierz¹t.");
	};
	if(trophy == TROPHY_CLAWS)
	{
		Ico_Claws="Ico_ClawsYes.tga";
		PLAYER_TALENT_TAKEANIMALTROPHY[2] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ usuwania zwierzêtom pazurów.");
	};
	if(trophy == TROPHY_FUR)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[3] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ œci¹gania futer z wilków, wargów, cieniostworów i trolli.");
		Ico_Furs="Ico_FursYes.tga";
	};
	if(trophy == TROPHY_HEART)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[4] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ usuwania serc demonów, orków, golemów i jaszczurocz³eków.");
	};
	if(trophy == TROPHY_SHADOWHORN)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[5] = TRUE;
		Ico_ShadowHorn="Ico_ShadowHornYes.tga";
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ usuwania rogów cieniostworom.");
	};
	if(trophy == TROPHY_FIRETONGUE)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[6] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,".Umiejêtnoœæ usuwania jêzyków jaszczurocz³eków, jaszczurów, aligatorów.");
		Ico_FireLan="Ico_FireWaranYes.tga";
	};
	if(trophy == TROPHY_BFWING)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[7] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ pozyskiwania skrzyde³ krwiopijców.");
		
	};
	if(trophy == TROPHY_BFSTING)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[8] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ pozyskiwania ¿¹de³ krwiopijców.");
		Ico_BloodFlySting="Ico_BloodFlyStingYes.tga";
		
	};
	if(trophy == TROPHY_MANDIBLES)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[9] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ pozyskiwania ¿uwaczek.");
	};
	if(trophy == TROPHY_CRAWLERPLATE)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[10] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY, "Umiejêtnoœæ usuwania pancerzy pe³zacza.");
		Ico_CrawlerPlate="Ico_ClawerPlateYes.tga";
	};
	if(trophy == TROPHY_DRGSNAPPERHORN)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[11] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ usuwania rogów smoczych zêbaczy.");
		
	};
	if(trophy == TROPHY_DRAGONSCALE)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[12] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ pozyskiwania smoczych ³usek.");
	};
	if(trophy == TROPHY_DRAGONBLOOD)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[13] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ pozyskiwania smoczej krwi.");
	};
	if(trophy == TROPHY_REPTILESKIN)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[14] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ skórowania jaszczurów, aligatorów i topielców");
		Ico_LurkerSkin="Ico_LurkerYes.tga";
	};
	PrintScreen(PRINT_LEARNTAKEANIMALTROPHY,-1,-1,FONT_SCREEN,2);
	Npc_SetTalentSkill(oth,NPC_TALENT_TAKEANIMALTROPHY,1);
	return TRUE;
};

