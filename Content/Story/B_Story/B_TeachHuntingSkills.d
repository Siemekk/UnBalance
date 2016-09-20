//Ok spis umiejêtnoœci:
/*
-W¹troba kretoszczura
-Pióra 
-Jelitko cieniostwora
-Nici pe³zacza
-We³na
*/

func int Teach_NewAnimalsTrophy(var C_NPC slf, var C_NPC oth, var int talent, var int cost, var int NeedGold)
{
	var string msg;

	if(oth.lp < cost)
	{
	Prints2(PRINT_NOTENOUGHLEARNPOINTS);
	b_say(slf,oth,"$NOLEARNNOPOINTS");
	return FALSE;
	};

Log_CreateTopic(TOPIC_TALENTANIMALTROPHY,LOG_NOTE);
/********************************************/
if(Npc_HasItems(oth,Itmi_Gold)<NeedGold)
{
b_say(slf,oth,"$SHITNOGOLD");
var int GoldMiss; GoldMiss=  NeedGold-Npc_HasItems(oth,Itmi_Gold);
var string msg1; msg1= concatstrings("Brakuje mi ",Inttostring(GoldMiss));
msg1=concatstrings(msg1," szt. z³ota ");
Prints_Ext(msg1,RGBA(180,0,0,255));
return FALSE;
};
if(talent == TROPHY_TEETH)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_TEETH] = TRUE;
		Ico_Teeth="Ico_TeethYes.tga";
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ usuwania zwierzêcych k³ów.");
		msg="pozyskiwanie zêbów";
	};
	if(talent == TROPHY_MEAT)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[1] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ patroszenia zwierz¹t.");
		msg="pozyskiwanie miêsa";
	};
	if(talent == TROPHY_CLAWS)
	{
		Ico_Claws="Ico_ClawsYes.tga";
		PLAYER_TALENT_TAKEANIMALTROPHY[2] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ usuwania zwierzêtom pazurów.");
		msg="pozyskiwanie pazurów";
	};
	if(talent == TROPHY_FUR)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[3] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ œci¹gania futer z wilków, wargów, cieniostworów i trolli.");
		Ico_Furs="Ico_FursYes.tga";
		msg="pozyskiwanie skór";
	};
	if(talent == TROPHY_HEART)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[4] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ usuwania serc demonów, orków, golemów i jaszczurocz³eków.");
		msg="wycinanie serc";
	};
	if(talent == TROPHY_SHADOWHORN)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[5] = TRUE;
		Ico_ShadowHorn="Ico_ShadowHornYes.tga";
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ usuwania rogów cieniostworom.");
	msg="pozyskiwanie rogów cieniostwora";
	};
	
	if(talent == TROPHY_FIRETONGUE)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[6] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,".Umiejêtnoœæ usuwania jêzyków jaszczurocz³eków, jaszczurów, aligatorów.");
		Ico_FireLan="Ico_FireWaranYes.tga";
	msg="pozyskiwanie jêzyków";
	};
	
	if(talent == TROPHY_BFWING)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[7] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ pozyskiwania skrzyde³ krwiopijców.");
		msg="pozyskiwanie skrzyde³";
	};
	
	if(talent == TROPHY_BFSTING)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[8] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ pozyskiwania ¿¹de³ krwiopijców.");
		Ico_BloodFlySting="Ico_BloodFlyStingYes.tga";
		msg="pozyskiwanie ¿¹de³";
	};
	
	if(talent == TROPHY_MANDIBLES)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[9] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ pozyskiwania ¿uwaczek.");
		msg="pozyskiwanie ¿uwaczek";
	};
	
	if(talent == TROPHY_CRAWLERPLATE)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[10] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY, "Umiejêtnoœæ usuwania pancerzy pe³zacza.");
		Ico_CrawlerPlate="Ico_ClawerPlateYes.tga";
		msg="pozyskiwanie pancerzy pe³zacza";
	};
	
	if(talent == TROPHY_DRGSNAPPERHORN)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[11] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ usuwania rogów smoczych zêbaczy.");
		msg="pozyskiwanie rogów sztyletników";
	};

	if(talent == TROPHY_DRAGONSCALE)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[12] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ pozyskiwania smoczych ³usek.");
		msg="pozyskiwanie smoczych ³usek";
	};
	
	if(talent == TROPHY_DRAGONBLOOD)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[13] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ pozyskiwania smoczej krwi.");
	msg="pozyskiwanie smoczej krwi";
	};
	
	if(talent == TROPHY_REPTILESKIN)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[14] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ skórowania jaszczurów, aligatorów i topielców");
		Ico_LurkerSkin="Ico_LurkerYes.tga";
		msg="pozyskiwanie skór gadów";
	};
/********************************************/
	if(talent==TROPHY_LIVER)//w¹troba
	{
	player_talent_takeanimaltrophy[15]=TRUE;
	b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ pozyskiwania w¹troby kretoszczura.");
	msg="pozyskiwanie w¹troby kretoszczura";
	};
/********************************************/
	if(talent==TROPHY_FEATHER)//pióra
	{
	player_talent_takeanimaltrophy[16]=TRUE;
	b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ pozyskiwania piór harpii i œcierwojadów.");
	msg="pozyskiwanie piór.";
	};
/********************************************/
	if(talent==TROPHY_WTF)//jelito >.<
	{
	player_talent_takeanimaltrophy[17]=TRUE;
	b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ pozyskiwania jelita cieniostwora.");
	msg="pozyskiwanie jelita cieniostwora.";
	};
/********************************************/
	if(talent==TROPHY_WOOL)//we³na
	{
	player_talent_takeanimaltrophy[18]=TRUE;
	b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ pozyskiwania we³ny");
	msg="pozyskiwanie we³ny.";
	};
/********************************************/
	if(talent==TROPHY_THREAD)//niæ pe³zacza
	{
	player_talent_takeanimaltrophy[19]=TRUE;
	b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiejêtnoœæ pozyskiwania nici pe³zacza");
	msg="pozyskiwanie nici pe³zacza";
	};
/********************************************/
Prints2(ConcatStrings("Nowa umiejêtnoœæ: ",msg));
Npc_SetTalentSkill(oth,NPC_TALENT_TAKEANIMALTROPHY,1);

oth.lp = oth.lp - cost;
b_giveinvitems(oth,slf,itmi_gold,NeedGold);
Npc_RemoveInvItems(slf,itmi_gold,NeedGold);

return TRUE;
};
