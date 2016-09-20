
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
	b_logentry(TOPIC_TALENTSMITH,"Jeœli zechcê wykuæ jak¹œ broñ, to po pierwsze bêd¹ mi potrzebne stalowe sztaby. Muszê rozgrzaæ je w piecu, a potem nadaæ im kszta³t broni na kowadle. Nastêpnie powinienem sch³odziæ ostrze i zaj¹æ siê jego wykoñczeniem na stole kowalskim. Gdy miecz jest gotowy powinien zostaæ jeszcze naostrzony. Jeœli zechcê nadaæ broni jakieœ specjalne charakterystyki, to bêdê musia³ u¿yæ dodatkowych sk³adników.");
	if(waffe == WEAPON_FIRSTBLADE)
	{
		PLAYER_TALENT_SMITH[0] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Najprostszy miecz wymaga 3 stalowych sztab oraz 1 tkaniny.");
	};
	if(waffe == WEAPON_1H_SPECIAL_01)
	{
		PLAYER_TALENT_SMITH[WEAPON_1H_SPECIAL_01] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdobêdê 3 sztaby stali, 1 sztabê rudy oraz 1 skórê, zrobiê ´D£UGI MIECZ Z RUDY´.");
	};
	if(waffe == WEAPON_2H_SPECIAL_01)
	{
		PLAYER_TALENT_SMITH[WEAPON_2H_SPECIAL_01] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdobêdê 4 sztaby stali, 2 sztaby rudy oraz 1 skórê i 1 tkaninê, zrobiê ´MIECZ DWURÊCZNY Z RUDY´.");
	};
	if(waffe == WEAPON_1H_SPECIAL_02)
	{
		PLAYER_TALENT_SMITH[WEAPON_1H_SPECIAL_02] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdobêdê 3 sztaby stali 1 sztabê rudy oraz 1 skórê, zrobiê ´MIECZ PÓ£TORARÊCZNY Z RUDY´.");
	};
	if(waffe == WEAPON_2H_SPECIAL_02)
	{
		PLAYER_TALENT_SMITH[WEAPON_2H_SPECIAL_02] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdobêdê 4 sztaby stali, 2 sztaby rudy oraz 1 skórê zrobiê ´CIÊ¯KI MIECZ DWURÊCZNY Z RUDY´.");
	};
	if(waffe == WEAPON_1H_SPECIAL_03)
	{
		PLAYER_TALENT_SMITH[WEAPON_1H_SPECIAL_03] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdobêdê 3 sztaby stali 2 sztaby rudy oraz 1 skórê i 1 czarn¹ per³ê, zrobiê ´OSTRZE BOJOWE Z RUDY´.");
	};
	if(waffe == WEAPON_2H_SPECIAL_03)
	{
		PLAYER_TALENT_SMITH[WEAPON_2H_SPECIAL_03] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdobêdê 4 sztaby stali, 3 sztaby rudy oraz 2 skóry zrobiê ´CIÊ¯KIE OSTRZE BOJOWE Z RUDY´.");
	};
	if(waffe == WEAPON_1H_SPECIAL_04)
	{
		PLAYER_TALENT_SMITH[WEAPON_1H_SPECIAL_04] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdobêdê 5 sztab stali, 3 sztaby rudy oraz 5 porcji smoczej krwi, 1 skórê i 1 czarn¹ per³ê zrobiê ´OSTRZE Z RUDY NA SMOKI´.");
	};
	if(waffe == WEAPON_2H_SPECIAL_04)
	{
		PLAYER_TALENT_SMITH[WEAPON_2H_SPECIAL_04] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdobêdê 7 sztab stali, 4 sztaby rudy oraz 5 porcji smoczej krwi, 2 skóry, 1 diament i 1 ametyst zrobiê ´DU¯E OSTRZE Z RUDY NA SMOKI´.");
	};
	if(waffe == WEAPON_1H_DEATHBRINGER)
	{
		PLAYER_TALENT_SMITH[18] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdobêdê 6 sztab stali, 4 sztaby rudy oraz 6 porcji smoczej krwi, 2 skóry i 3 rubiny zrobiê 'DRUZGOC¥CE OSTRZE Z RUDY'.");
	};
	if(waffe == WEAPON_2H_DEATHBRINGER)
	{
		PLAYER_TALENT_SMITH[19] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdobêdê 8 sztab stali, 5 sztab rudy oraz 7 porcji smoczej krwi, 2 skóry i 3 rubiny zrobiê 'DU¯E DRUZGOC¥CE OSTRZE Z RUDY'.");
	};
	if(waffe == WEAPON_1HFINESWORD)
	{
		PLAYER_TALENT_SMITH[9] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdobêdê 3 sztaby stali oraz tkaninê zrobiê 'DOBRY MIECZ'.");
	};
	if(waffe == WEAPON_SOT)
	{
		PLAYER_TALENT_SMITH[10] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdobêdê 3 sztaby stali oraz skórê zrobiê 'MIECZ PRAWDY'.");
	};
	if(waffe == WEAPON_FINEBASTARD)
	{
		PLAYER_TALENT_SMITH[11] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdobêdê 4 sztaby stali oraz skórê zrobiê 'DOBRY MIECZ PÓ£TORARÊCZNY'.");
	};
	if(waffe == WEAPON_ANDURIL)
	{
		PLAYER_TALENT_SMITH[12] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdobêdê 4 sztaby stali oraz skórê zrobiê 'WSPANIA£Y MIECZ PÓ£TORARÊCZNY'.");
	};
	if(waffe == WEAPON_FIRSTBLADE2H)
	{
		PLAYER_TALENT_SMITH[13] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdobêdê 5 sztab stali oraz tkaninê zrobiê 'PROSTY MIECZ DWURÊCZNY'.");
	};
	if(waffe == WEAPON_2HFINESWORD)
	{
		PLAYER_TALENT_SMITH[15] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdobêdê 5 sztab stali oraz tkaninê zrobiê 'DOBRY MIECZ DWURÊCZNY'.");
	};
	if(waffe == WEAPON_CLAYMORE)
	{
		PLAYER_TALENT_SMITH[14] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdobêdê 5 sztab stali oraz kawa³ek drewna zrobiê dwurêczny miecz - 'CLAYMORE'.");
	};
	if(waffe == WEAPON_DEMONSLAYER)
	{
		PLAYER_TALENT_SMITH[16] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdobêdê 7 sztab stali oraz tkaninê zrobiê dwurêczny miecz - 'POGROMCA DEMONÓW'.");
	};
	if(waffe == WEAPON_FLAMEBERGE)
	{
		PLAYER_TALENT_SMITH[17] = TRUE;
		b_logentry(TOPIC_TALENTSMITH,"Gdy zdobêdê 7 sztab stali oraz 2 skóry zrobiê dwurêczny miecz -  'FLAMBERG'.");
	};
	PrintScreen(PRINT_LEARNSMITH,-1,-1,FONT_SCREEN,2);
	Npc_SetTalentSkill(oth,NPC_TALENT_SMITH,1);
	Ico_Smith="Ico_Smith_Yes.tga";
	return TRUE;
};

