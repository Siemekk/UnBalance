
func int b_teachplayertalentsmith(var C_NPC slf,var C_NPC oth,var int waffe)
{
	var int kosten;
	kosten = b_getlearncosttalent(oth,NPC_TALENT_SMITH,waffe);
	if(oth.lp < kosten)
	{
		PrintScreen(PRINT_NOTENOUGHLEARNPOINTS,-1,-1,FONT_SCREENSMALL,2);
		b_say(slf,oth,"$NOLEARNNOPOINTS");
		return FALSE;
	};
	oth.lp = oth.lp - kosten;
	Log_CreateTopic(TOPIC_TALENTSMITH,LOG_NOTE);
	b_logentry(TOPIC_TALENTSMITH,"Je�li zechc� wyku� jak�� bro�, to po pierwsze b�d� mi potrzebne stalowe sztaby. Musz� rozgrza� je w piecu, a potem nada� im kszta�t broni na kowadle. Nast�pnie powinienem sch�odzi� ostrze i zaj�� si� jego wyko�czeniem na stole kowalskim. Gdy miecz jest gotowy powinien zosta� jeszcze naostrzony. Je�li zechc� nada� broni jakie� specjalne charakterystyki, to b�d� musia� u�y� dodatkowych sk�adnik�w.");
	if(waffe == WEAPON_FIRSTBLADE)
	{
		PLAYER_TALENT_SMITH[0] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Najprostszy miecz wymaga 3 stalowych sztab oraz 1 tkaniny.");
	};
	if(waffe == WEAPON_1H_SPECIAL_01)
	{
		PLAYER_TALENT_SMITH[WEAPON_1H_SPECIAL_01] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdob�d� 3 sztaby stali, 1 sztab� rudy oraz 1 sk�r�, zrobi� �D�UGI MIECZ Z RUDY�.");
	};
	if(waffe == WEAPON_2H_SPECIAL_01)
	{
		PLAYER_TALENT_SMITH[WEAPON_2H_SPECIAL_01] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdob�d� 4 sztaby stali, 2 sztaby rudy oraz 1 sk�r� i 1 tkanin�, zrobi� �MIECZ DWUR�CZNY Z RUDY�.");
	};
	if(waffe == WEAPON_1H_SPECIAL_02)
	{
		PLAYER_TALENT_SMITH[WEAPON_1H_SPECIAL_02] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdob�d� 3 sztaby stali 1 sztab� rudy oraz 1 sk�r�, zrobi� �MIECZ PӣTORAR�CZNY Z RUDY�.");
	};
	if(waffe == WEAPON_2H_SPECIAL_02)
	{
		PLAYER_TALENT_SMITH[WEAPON_2H_SPECIAL_02] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdob�d� 4 sztaby stali, 2 sztaby rudy oraz 1 sk�r� zrobi� �CIʯKI MIECZ DWUR�CZNY Z RUDY�.");
	};
	if(waffe == WEAPON_1H_SPECIAL_03)
	{
		PLAYER_TALENT_SMITH[WEAPON_1H_SPECIAL_03] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdob�d� 3 sztaby stali 2 sztaby rudy oraz 1 sk�r� i 1 czarn� per��, zrobi� �OSTRZE BOJOWE Z RUDY�.");
	};
	if(waffe == WEAPON_2H_SPECIAL_03)
	{
		PLAYER_TALENT_SMITH[WEAPON_2H_SPECIAL_03] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdob�d� 4 sztaby stali, 3 sztaby rudy oraz 2 sk�ry zrobi� �CIʯKIE OSTRZE BOJOWE Z RUDY�.");
	};
	if(waffe == WEAPON_1H_SPECIAL_04)
	{
		PLAYER_TALENT_SMITH[WEAPON_1H_SPECIAL_04] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdob�d� 5 sztab stali, 3 sztaby rudy oraz 5 porcji smoczej krwi, 1 sk�r� i 1 czarn� per�� zrobi� �OSTRZE Z RUDY NA SMOKI�.");
	};
	if(waffe == WEAPON_2H_SPECIAL_04)
	{
		PLAYER_TALENT_SMITH[WEAPON_2H_SPECIAL_04] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdob�d� 7 sztab stali, 4 sztaby rudy oraz 5 porcji smoczej krwi, 2 sk�ry, 1 diament i 1 ametyst zrobi� �DU�E OSTRZE Z RUDY NA SMOKI�.");
	};
	if(waffe == WEAPON_1H_DEATHBRINGER)
	{
		PLAYER_TALENT_SMITH[18] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdob�d� 6 sztab stali, 4 sztaby rudy oraz 6 porcji smoczej krwi, 2 sk�ry i 3 rubiny zrobi� 'DRUZGOC�CE OSTRZE Z RUDY'.");
	};
	if(waffe == WEAPON_2H_DEATHBRINGER)
	{
		PLAYER_TALENT_SMITH[19] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdob�d� 8 sztab stali, 5 sztab rudy oraz 7 porcji smoczej krwi, 2 sk�ry i 3 rubiny zrobi� 'DU�E DRUZGOC�CE OSTRZE Z RUDY'.");
	};
	if(waffe == WEAPON_1HFINESWORD)
	{
		PLAYER_TALENT_SMITH[9] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdob�d� 3 sztaby stali oraz tkanin� zrobi� 'DOBRY MIECZ'.");
	};
	if(waffe == WEAPON_SOT)
	{
		PLAYER_TALENT_SMITH[10] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdob�d� 3 sztaby stali oraz sk�r� zrobi� 'MIECZ PRAWDY'.");
	};
	if(waffe == WEAPON_FINEBASTARD)
	{
		PLAYER_TALENT_SMITH[11] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdob�d� 4 sztaby stali oraz sk�r� zrobi� 'DOBRY MIECZ PӣTORAR�CZNY'.");
	};
	if(waffe == WEAPON_ANDURIL)
	{
		PLAYER_TALENT_SMITH[12] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdob�d� 4 sztaby stali oraz sk�r� zrobi� 'WSPANIA�Y MIECZ PӣTORAR�CZNY'.");
	};
	if(waffe == WEAPON_FIRSTBLADE2H)
	{
		PLAYER_TALENT_SMITH[13] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdob�d� 5 sztab stali oraz tkanin� zrobi� 'PROSTY MIECZ DWUR�CZNY'.");
	};
	if(waffe == WEAPON_2HFINESWORD)
	{
		PLAYER_TALENT_SMITH[15] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdob�d� 5 sztab stali oraz tkanin� zrobi� 'DOBRY MIECZ DWUR�CZNY'.");
	};
	if(waffe == WEAPON_CLAYMORE)
	{
		PLAYER_TALENT_SMITH[14] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdob�d� 5 sztab stali oraz kawa�ek drewna zrobi� dwur�czny miecz - 'CLAYMORE'.");
	};
	if(waffe == WEAPON_DEMONSLAYER)
	{
		PLAYER_TALENT_SMITH[16] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdob�d� 7 sztab stali oraz tkanin� zrobi� dwur�czny miecz - 'POGROMCA DEMON�W'.");
	};
	if(waffe == WEAPON_FLAMEBERGE)
	{
		PLAYER_TALENT_SMITH[17] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdob�d� 7 sztab stali oraz 2 sk�ry zrobi� dwur�czny miecz -  'FLAMBERG'.");
	};
	PrintScreen(PRINT_LEARNSMITH,-1,-1,FONT_SCREEN,2);
	Npc_SetTalentSkill(oth,NPC_TALENT_SMITH,1);
	Ico_Smith="Ico_Smith_Yes.tga";
	return TRUE;
};

