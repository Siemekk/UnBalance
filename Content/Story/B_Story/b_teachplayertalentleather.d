
func int b_teachplayertalentleather(var C_NPC slf,var C_NPC oth,var int leatherfase)
{
	var int kosten;
	kosten = b_getlearncosttalent(oth,NPC_TALENT_LEATHER,leatherfase);
	if(oth.lp < kosten)
	{
		PrintScreen(PRINT_NOTENOUGHLEARNPOINTS,-1,-1,FONT_SCREENSMALL,2);
		b_say(slf,oth,"$NOLEARNNOPOINTS");
		return FALSE;
	};
	oth.lp = oth.lp - kosten;
	Log_CreateTopic(TOPIC_TALENTLEATHER,LOG_NOTE);
	if(leatherfase == LEATHERFASE_1)
	{
		Npc_SetTalentSkill(oth,NPC_TALENT_LEATHER,1);
		PLAYER_TALENT_LEATHER = TRUE;
		b_logentry(TOPIC_TALENTLEATHER,LOGTEXT_ADDON_LEATHER);
		return TRUE;
	};
};

