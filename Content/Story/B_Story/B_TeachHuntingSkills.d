//Ok spis umiej�tno�ci:
/*
-W�troba kretoszczura
-Pi�ra 
-Jelitko cieniostwora
-Nici pe�zacza
-We�na
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
msg1=concatstrings(msg1," szt. z�ota ");
Prints_Ext(msg1,RGBA(180,0,0,255));
return FALSE;
};
if(talent == TROPHY_TEETH)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_TEETH] = TRUE;
		Ico_Teeth="Ico_TeethYes.tga";
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� usuwania zwierz�cych k��w.");
		msg="pozyskiwanie z�b�w";
	};
	if(talent == TROPHY_MEAT)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[1] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� patroszenia zwierz�t.");
		msg="pozyskiwanie mi�sa";
	};
	if(talent == TROPHY_CLAWS)
	{
		Ico_Claws="Ico_ClawsYes.tga";
		PLAYER_TALENT_TAKEANIMALTROPHY[2] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� usuwania zwierz�tom pazur�w.");
		msg="pozyskiwanie pazur�w";
	};
	if(talent == TROPHY_FUR)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[3] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� �ci�gania futer z wilk�w, warg�w, cieniostwor�w i trolli.");
		Ico_Furs="Ico_FursYes.tga";
		msg="pozyskiwanie sk�r";
	};
	if(talent == TROPHY_HEART)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[4] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� usuwania serc demon�w, ork�w, golem�w i jaszczurocz�ek�w.");
		msg="wycinanie serc";
	};
	if(talent == TROPHY_SHADOWHORN)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[5] = TRUE;
		Ico_ShadowHorn="Ico_ShadowHornYes.tga";
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� usuwania rog�w cieniostworom.");
	msg="pozyskiwanie rog�w cieniostwora";
	};
	
	if(talent == TROPHY_FIRETONGUE)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[6] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,".Umiej�tno�� usuwania j�zyk�w jaszczurocz�ek�w, jaszczur�w, aligator�w.");
		Ico_FireLan="Ico_FireWaranYes.tga";
	msg="pozyskiwanie j�zyk�w";
	};
	
	if(talent == TROPHY_BFWING)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[7] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� pozyskiwania skrzyde� krwiopijc�w.");
		msg="pozyskiwanie skrzyde�";
	};
	
	if(talent == TROPHY_BFSTING)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[8] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� pozyskiwania ��de� krwiopijc�w.");
		Ico_BloodFlySting="Ico_BloodFlyStingYes.tga";
		msg="pozyskiwanie ��de�";
	};
	
	if(talent == TROPHY_MANDIBLES)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[9] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� pozyskiwania �uwaczek.");
		msg="pozyskiwanie �uwaczek";
	};
	
	if(talent == TROPHY_CRAWLERPLATE)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[10] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY, "Umiej�tno�� usuwania pancerzy pe�zacza.");
		Ico_CrawlerPlate="Ico_ClawerPlateYes.tga";
		msg="pozyskiwanie pancerzy pe�zacza";
	};
	
	if(talent == TROPHY_DRGSNAPPERHORN)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[11] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� usuwania rog�w smoczych z�baczy.");
		msg="pozyskiwanie rog�w sztyletnik�w";
	};

	if(talent == TROPHY_DRAGONSCALE)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[12] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� pozyskiwania smoczych �usek.");
		msg="pozyskiwanie smoczych �usek";
	};
	
	if(talent == TROPHY_DRAGONBLOOD)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[13] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� pozyskiwania smoczej krwi.");
	msg="pozyskiwanie smoczej krwi";
	};
	
	if(talent == TROPHY_REPTILESKIN)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[14] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� sk�rowania jaszczur�w, aligator�w i topielc�w");
		Ico_LurkerSkin="Ico_LurkerYes.tga";
		msg="pozyskiwanie sk�r gad�w";
	};
/********************************************/
	if(talent==TROPHY_LIVER)//w�troba
	{
	player_talent_takeanimaltrophy[15]=TRUE;
	b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� pozyskiwania w�troby kretoszczura.");
	msg="pozyskiwanie w�troby kretoszczura";
	};
/********************************************/
	if(talent==TROPHY_FEATHER)//pi�ra
	{
	player_talent_takeanimaltrophy[16]=TRUE;
	b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� pozyskiwania pi�r harpii i �cierwojad�w.");
	msg="pozyskiwanie pi�r.";
	};
/********************************************/
	if(talent==TROPHY_WTF)//jelito >.<
	{
	player_talent_takeanimaltrophy[17]=TRUE;
	b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� pozyskiwania jelita cieniostwora.");
	msg="pozyskiwanie jelita cieniostwora.";
	};
/********************************************/
	if(talent==TROPHY_WOOL)//we�na
	{
	player_talent_takeanimaltrophy[18]=TRUE;
	b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� pozyskiwania we�ny");
	msg="pozyskiwanie we�ny.";
	};
/********************************************/
	if(talent==TROPHY_THREAD)//ni� pe�zacza
	{
	player_talent_takeanimaltrophy[19]=TRUE;
	b_logentry(TOPIC_TALENTANIMALTROPHY,"Umiej�tno�� pozyskiwania nici pe�zacza");
	msg="pozyskiwanie nici pe�zacza";
	};
/********************************************/
Prints2(ConcatStrings("Nowa umiej�tno��: ",msg));
Npc_SetTalentSkill(oth,NPC_TALENT_TAKEANIMALTROPHY,1);

oth.lp = oth.lp - cost;
b_giveinvitems(oth,slf,itmi_gold,NeedGold);
Npc_RemoveInvItems(slf,itmi_gold,NeedGold);

return TRUE;
};
