
func int b_teachplayertalentarmor(var C_NPC slf,var C_NPC oth,var int armastery,var int kosten, var int NeedGold)
{

	if(oth.lp < kosten)
	{
		PrintScreen(PRINT_NOTENOUGHLEARNPOINTS,-1,-1,FONT_SCREENSMALL,2);
		b_say(slf,oth,"$NOLEARNNOPOINTS");
		return FALSE;
	};
	if(Npc_HasItems(oth,Itmi_Gold)<NeedGold)
	{
	b_say(slf,oth,"$SHITNOGOLD");
	var int GoldMiss; GoldMiss=  NeedGold-Npc_HasItems(oth,Itmi_Gold);
	var string msg; msg= concatstrings("Brakuje mi ",Inttostring(GoldMiss));
	msg=concatstrings(msg," szt. z³ota ");
	Prints_Ext(msg,RGBA(180,0,0,255));
	return FALSE;
	};
	oth.lp = oth.lp - kosten;
	
	b_giveinvitems(oth,slf,itmi_gold,NeedGold);
	Npc_RemoveInvItems(slf,itmi_gold,NeedGold);
	
	Log_CreateTopic(TOPIC_TALENTSMITH,LOG_NOTE);
	if(armastery == ARMASTERY_1)
	{
		Npc_SetTalentSkill(oth,NPC_TALENT_ARMOR,1);
		PLAYER_TALENT_ARMOR[0] = TRUE;
		Ico_ArmorMaking="Ico_Armor_Yes.tga";
		b_logentry(TOPIC_TALENTSMITH,LOGTEXT_ADDON_ARMOR_1);
		PrintScreen("Nauka: P³atnerstwo - poziom 1: podstawowy",-1,-1,FONT_SCREEN,2);
	};
	if(armastery == ARMASTERY_2)
	{
		Npc_SetTalentSkill(oth,NPC_TALENT_ARMOR,2);
		PLAYER_TALENT_ARMOR[1] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,LOGTEXT_ADDON_ARMOR_2);
		Ico_ArmorMaking="Ico_Armor_Yes.tga";
		PrintScreen("Nauka: P³atnerstwo - poziom 2: zaawansowany",-1,-1,FONT_SCREEN,2);
	};
	if(armastery == ARMASTERY_3)
	{
		Npc_SetTalentSkill(oth,NPC_TALENT_ARMOR,3);
		PLAYER_TALENT_ARMOR[2] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,LOGTEXT_ADDON_ARMOR_3);
		Ico_ArmorMaking="Ico_Armor_Yes.tga";
		PrintScreen("Nauka: P³atnerstwo - poziom 3: mistrz",-1,-1,FONT_SCREEN,2);
	};
	return TRUE;
};

