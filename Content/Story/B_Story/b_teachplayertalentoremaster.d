
func int b_teachplayertalentoremaster(var C_NPC slf,var C_NPC oth,var int ormastery)
{
	var int kosten;
	kosten = b_getlearncosttalent(oth,NPC_TALENT_OREMASTER,ormastery);
	if(oth.lp < kosten)
	{
		PrintScreen(PRINT_NOTENOUGHLEARNPOINTS,-1,-1,FONT_SCREENSMALL,2);
		b_say(slf,oth,"$NOLEARNNOPOINTS");
		return FALSE;
	};
	oth.lp = oth.lp - kosten;
	Log_CreateTopic(TOPIC_TALENTOREMASTER,LOG_NOTE);
	if(ormastery == ORMASTERY_1)
	{
		Ico_Minner="Ico_Minner_Yes.tga";
		Npc_SetTalentSkill(oth,NPC_TALENT_OREMASTER,1);
		PLAYER_TALENT_OREMASTER[0] = TRUE;
		b_logentry(TOPIC_TALENTOREMASTER,LOGTEXT_ADDON_ORE_1);
		AI_PrintScreen("Nauka: Górnictwo - poziom 1: kopacz",-1,52,FONT_SCREENBRIGHTLARGE,3);
	};
	if(ormastery == ORMASTERY_2)
	{
		Npc_SetTalentSkill(oth,NPC_TALENT_OREMASTER,2);
		Ico_Minner="Ico_Minner_Yes.tga";
		PLAYER_TALENT_OREMASTER[1] = TRUE;
		b_logentry(TOPIC_TALENTOREMASTER,LOGTEXT_ADDON_ORE_2);
		AI_PrintScreen("Nauka: Górnictwo - poziom 2: zaawansowany",-1,52,FONT_SCREENBRIGHTLARGE,3);
	};
	if(ormastery == ORMASTERY_3)
	{
		Npc_SetTalentSkill(oth,NPC_TALENT_OREMASTER,3);
		Ico_Minner="Ico_Minner_Yes.tga";
		PLAYER_TALENT_OREMASTER[2] = TRUE;
		b_logentry(TOPIC_TALENTOREMASTER,LOGTEXT_ADDON_ORE_3);
		AI_PrintScreen("Nauka: Górnictwo - poziom 3: ekspert",-1,52,FONT_SCREENBRIGHTLARGE,3);
	};
	return TRUE;
};

