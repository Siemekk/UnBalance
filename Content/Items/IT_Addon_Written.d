
instance ITWR_ADDON_HINWEIS_02(C_ITEM)
{
	name = "Wa�na wiadomo��";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 250;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_hinweis_02;
	scemename = "MAP";
	description = name;
	text[0] = "Z gospody w obozie bandyt�w";
};


func void use_hinweis_02()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Hej ludzie,");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Lou znikn�� na bagnie. Pewnikiem ze�ar�y go w�e.");
	Doc_PrintLines(ndocid,0,"Co gorsza, wraz z nim znikn�� klucz do drzwi.");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Ten, kto go znajdzie, b�dzie m�g� zatrzyma� rzeczy Lou.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Snaf");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_HEALTH_04(C_ITEM)
{
	name = "Mikstura lecznicza � przepis";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 1000;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_heilrezept_04;
	scemename = "MAP";
	description = "Pe�nia �ycia";
	text[2] = "Warzenie silnej mikstury.";
	text[3] = "Wymagana jest znajomo�� eliksiru leczenia.";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void use_heilrezept_04()
{
	var int ndocid;
	if(Npc_IsPlayer(self))
	{
		if((PLAYER_TALENT_ALCHEMY[POTION_HEALTH_03] == TRUE) && (PLAYER_TALENT_ALCHEMY[POTION_HEALTH_04] == FALSE))
		{
			PLAYER_TALENT_ALCHEMY[POTION_HEALTH_04] = TRUE;
			Snd_Play("LevelUP");
			b_logentry(TOPIC_TALENTALCHEMY,"Do przygotowania mikstury leczniczej potrzebne s� 3 esencje lecznicze oraz 1 rdest polny.");
		};
	};
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Tworzenie mikstury leczniczej:");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Potrzebny jest jeden rdest polny, a tak�e trzy esencje lecznicze.");
	Doc_PrintLines(ndocid,0,"Po��cz je zgodnie z przepisem na tworzenie eliksiru leczenia.");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Mikstura mo�e zosta� przygotowana jedynie przez alchemika, kt�ry zna przepis na eliksir leczenia.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_MANA_04(C_ITEM)
{
	name = "Mikstura many � przepis";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 1500;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_manarezept_04;
	scemename = "MAP";
	description = "Pe�nia many";
	text[2] = "Warzenie silnej mikstury.";
	text[3] = "Wymagana jest znajomo�� eliksiru many.";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void use_manarezept_04()
{
	var int ndocid;
	if(Npc_IsPlayer(self))
	{
		if((PLAYER_TALENT_ALCHEMY[POTION_MANA_03] == TRUE) && (PLAYER_TALENT_ALCHEMY[POTION_MANA_04] == FALSE))
		{
			PLAYER_TALENT_ALCHEMY[POTION_MANA_04] = TRUE;
			Snd_Play("LevelUP");
			b_logentry(TOPIC_TALENTALCHEMY,"Do przygotowania mikstury many potrzebne s� 3 esencje many oraz 1 rdest polny.");
		};
	};
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Warzenie mikstury many:");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Potrzebny jest jeden rdest polny, a tak�e trzy esencje many.");
	Doc_PrintLines(ndocid,0,"Po��cz je zgodnie z przepisem na tworzenie eliksiru many.");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Ta mikstura mo�e by� przygotowana jedynie przez alchemika, kt�ry zna przepis na eliksir many.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_BAPEHBE(C_ITEM)
{
	name = "Przepis na mikstur� z le�nych jag�d";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 975;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_rezept_bapehb9i;
	scemename = "MAP";
	description = "Uzdrawiaj�cy wywar z le�nych jag�d.";
	text[2] = "Aby przygotowa� mikstur� potrzebna jest";
	text[3] = "gar�� le�nych jag�d i woda.";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void use_rezept_bapehb9i()
{
	var int ndocid;
	if(Npc_IsPlayer(self))
	{
		if(KNOWS_BAPEHBE == FALSE)
		{
			KNOWS_BAPEHBE = TRUE;
			Snd_Play("LevelUP");
			b_logentry(TOPIC_TALENTALCHEMY,"Na wywar potrzebne jest 10 le�nych jag�d i butelka wody.");
		};
	};
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Uzdrawiaj�cy wywar z le�nych jag�d:");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Musisz mie� 10 le�nych jag�d i butelk� wody.");
	Doc_PrintLines(ndocid,0,"Gotowa� dok�adnie mieszaj�c.");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_PERM_MUSHROOMMP(C_ITEM)
{
	name = "Przepis na eliksir many z ciemnych grzyb�w";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 1800;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_perm_mushroommp;
	scemename = "MAP";
	description = "Eliksir z ciemnych grzyb�w.";
	text[2] = "Aby uwarzy� ten pot�ny eliksir potrzeba";
	text[3] = "du�ej ilo�ci ciemnych grzyb�w.";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void use_perm_mushroommp()
{
	var int ndocid;
	if(Npc_IsPlayer(self))
	{
		if((PLAYER_TALENT_ALCHEMY[POTION_MANA_03] == TRUE) && (KNOWS_MUSHROOMMP == FALSE))
		{
			KNOWS_MUSHROOMMP = TRUE;
			Snd_Play("LevelUP");
			b_logentry(TOPIC_TALENTALCHEMY,"Aby przygotowa� specjalny eliksir many, musisz mie� co najmniej 50 ciemnych grzyb�w.");
		};
	};
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Przygotowanie eliksiru z ciemnych grzyb�w:");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Potrzeba pi��dziesi�t ciemnych grzyb�w.");
	Doc_PrintLines(ndocid,0,"Gotowa� dok�adnie mieszaj�c.");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"T� mikstur� stworzy� mo�e tylko alchemik znaj�cy przepis na eliksir many.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_PERM_PDEFMOSS(C_ITEM)
{
	name = "Moc Umar�ych";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 1100;
	visual = "ItWr_Book_02_01_2.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_perm_pdefmoss;
	scemename = "MAP";
	description = "Moc Umar�ych";
	text[2] = "Zawiera informacje";
	text[3] = "o nieznanym eliksirze.";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void use_perm_pdefmoss()
{
	var int ndocid;
	if(Npc_IsPlayer(self))
	{
		if(((PLAYER_TALENT_ALCHEMY[POTION_PERM_STR] == TRUE) || (PLAYER_TALENT_ALCHEMY[POTION_PERM_DEX] == TRUE) || (PLAYER_TALENT_ALCHEMY[POTION_PERM_MANA] == TRUE) || (PLAYER_TALENT_ALCHEMY[POTION_PERM_HEALTH] == TRUE)) && (KNOWS_PDEFMOSS == FALSE))
		{
			KNOWS_PDEFMOSS = TRUE;
			Snd_Play("LevelUP");
			b_logentry(TOPIC_TALENTALCHEMY,"Do przygotowania specjalnego eliksiru ochronnego, potrzebujemy mech cmentarny i kilka ko�ci szkieletu.");
		};
		if(KNOWS_PDEFMOSS == FALSE)
		{
			Print(PRINT_NOPICKLOCKTALENT);
			b_say(hero,hero,"DIA_Thorben_PleaseTeach_Later_15_00");
		};
	};
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Mage_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Mage_R.tga",0);
	Doc_SetFont(ndocid,-1,"font_10_book.tga");
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Moc Umar�ych");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Szkielety wspiera jaka� magiczna si�a, wzmacnia je ... Badaj�c ich szcz�tki, odkry�em, �e po �mierci nie trac� swej mocy. Utrzymuje si� ona w nich przez d�ugi czas, nast�pnie stopniowo zanika rozchodz�c si� w powietrzu.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Eksperymenty ujawni�y, �e energia ta mo�e by� wykorzystana do wzmocnienia naszego ko��ca. Je�li zmieli� ko�ci, wymiesza� proszek z mchem cmentarnym i gotowa� wed�ug receptury, uzyskamy substancj� zawieraj�c� t� moc.");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"Pustelnik Kolgrim");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_HINWEIS_01(C_ITEM)
{
	name = "Wa�na wiadomo��";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 250;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_hinweis_01;
	scemename = "MAP";
	description = name;
	text[0] = "Wisia�a w chacie na bagnie";
};


func void use_hinweis_01()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Hej ludzie,");
	Doc_PrintLines(ndocid,0,"Rzeczy z tych skrzy� s� tylko na nag�e wypadki.");
	Doc_PrintLines(ndocid,0,"I s� dla nas WSZYSTKICH. Wi�c si�gajcie tam tylko wtedy, kiedy naprawd� musicie.");
	Doc_PrintLines(ndocid,0,"I nie bierzcie wi�cej, ni� potrzebujecie.");
	Doc_PrintLines(ndocid,0,"Uda si�, je�li wszyscy b�dziemy si� tego trzyma�.");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Fletcher");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_WILLIAM_01(C_ITEM)
{
	name = "Li�cik";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 250;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_william_01;
	scemename = "MAP";
	description = name;
	text[0] = "Ten list mia� przy sobie rybak William.";
};


func void use_william_01()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Williamie,");
	Doc_PrintLines(ndocid,0,"Kiedy ksi�yc jest w pe�ni, stra�nicy s� rozkojarzeni.");
	Doc_PrintLines(ndocid,0,"Przekradnij si� � ale b�d� ostro�ny!");
	Doc_PrintLines(ndocid,0,"Je�li b�dziesz i�� drewnian� tam�, uda ci si� wydosta� z bagna.");
	Doc_PrintLines(ndocid,0,"Ob�z pirat�w jest po drugiej stronie doliny, daleko na zachodzie.");
	Doc_PrintLines(ndocid,0,"Kiedy tam dotrzesz, z �atwo�ci� uciekniesz �odzi�.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Kto�, kto dobrze Ci �yczy");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_MCELIXIER_01(C_ITEM)
{
	name = "Przepis";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 250;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_mcelixier_01;
	scemename = "MAP";
	description = name;
	text[0] = "Przepis mikstury przemiany duszy";
	text[1] = "Ta mikstura przywraca utracone wspomnienia.";
};


func void use_mcelixier_01()
{
	var int ndocid;
	KNOWS_MCELIXIER = TRUE;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"Mikstura przemiany duszy");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Do przyrz�dzenia tej mikstury potrzebna jest wydzielina z dw�ch ��de� krwiopijc�w.");
	Doc_PrintLines(ndocid,0,"Dodaj do tego jeden ekstrakt many, a tak�e esencj� lecznicz�.");
	Doc_PrintLines(ndocid,0,"W ko�cu dosyp do ca�o�ci woreczek czerwonego pieprzu.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Tylko do�wiadczony alchemik wie, jak pobra� wydzielin� z ��d�a potrzebn� do zrobienia tej mikstury.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_PIRATES_01(C_ITEM)
{
	name = "Brudny papier";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 250;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_pirates_01;
	scemename = "MAP";
	description = name;
	text[0] = "Ten papier by� w kieszeni Angusa.";
};


func void use_pirates_01()
{
	var int ndocid;
	READ_JUANSTEXT = TRUE;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"Piraci,");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Za�atwcie dla nas ostatni �adunek.");
	Doc_PrintLine(ndocid,0,"Przywie�cie go do jaskini. Tam si� spotkamy.");
	Doc_PrintLines(ndocid,0,"Zap�ac� wam w z�ocie. Podw�jn� cen�.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Tak w�a�nie zrobimy.");
	Doc_PrintLine(ndocid,0,"Tom");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_JOINT_01(C_ITEM)
{
	name = "Zielony nowicjusz";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 250;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_joint_rezept_01;
	scemename = "MAP";
	description = name;
	text[0] = "Le�a� w skrzyni Fortuna";
};


func void use_joint_rezept_01()
{
	var int ndocid;
	GREEN_EXTREM = TRUE;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"Zielony nowicjusz");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"...Te �odygi mo�na ca�kiem nie�le zwija�, ale nie ma por�wnania z tym, co mieli�my w obozie na bagnie.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Je�li wezm� wyci�g z dw�ch �odyg bagiennego ziela i zmieszam go z polnym rdestem, mo�na to b�dzie por�wna� do zielonego nowicjusza.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Zielony nowicjusz �agodzi wszystkie b�le i oczyszcza umys�.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_LOU_REZEPT(C_ITEM)
{
	name = "Przepis na M�ot Lou ";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 70;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = uselourezept;
	scemename = "MAP";
	description = name;
	text[0] = "Jak przygotowa� M�ot Lou.";
};


func void uselourezept()
{
	var int ndocid;
	KNOWS_LOUSHAMMER = TRUE;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"Przepis na M�ot Lou");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Sk�adniki mocnej nalewki:");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Bierzesz butelk�, a tak�e dwie rzepy i spor� gar�� bagiennego ziela.");
	Doc_PrintLines(ndocid,0,"Dodajesz do tego k�y b�otnego w�a.");
	Doc_PrintLines(ndocid,0,"Mieszasz w butelce i gotujesz z dzia�k� rumu.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Na zdrowie.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Wed�ug starego �lepca lepiej nie wdycha� wyziew�w!");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_LOU_REZEPT2(C_ITEM)
{
	name = "Przepis na podw�jny M�ot Lou";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 140;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = uselourezept2;
	scemename = "MAP";
	description = name;
	text[0] = "Jak przygotowa� podw�jny M�ot Lou.";
};


func void uselourezept2()
{
	var int ndocid;
	KNOWS_SCHLAFHAMMER = TRUE;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"Podw�jny M�ot Lou");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"We� stary, dobry M�ot Lou i przedestyluj go jeszcze raz.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Ten wywar mo�e przyrz�dzi� jedynie kto� do�wiadczony w destylacji.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Profan mo�e od tego nie tylko o�lepn��, ale te� ca�kiem wyzion�� ducha.");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_PIRATENTOD(C_ITEM)
{
	name = "Szybki �led�";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 250;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = userezeptpiratentod;
	scemename = "MAP";
	description = name;
	text[0] = "Przepis na przygotowanie Szybkiego �ledzia.";
};


func void userezeptpiratentod()
{
	var int ndocid;
	KNOWS_SCHNELLERHERING = TRUE;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"Szybki �led� (m�j przepis)");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Ma�y klinek dla porz�dnych ch�opak�w");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Jak zwykle, potrzebna b�dzie butelka. Wlej do niej jedn� porcj� rumu i dodaj �wie�� ryb�.");
	Doc_PrintLines(ndocid,0,"Kiedy tylko p�yn zrobi si� ��ty, wyjmij ryb� i dopraw gar�ci� soli");
	Doc_PrintLines(ndocid,0,"�wie�o zebranego z�batego ziela.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Uwa�aj! Ta nalewka naprawd� stawia na nogi.");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance FAKESCROLL_ADDON(C_ITEM)
{
	name = "Kawa�ek papieru";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	hp = 5;
	hp_max = 5;
	weight = 1;
	value = 0;
	visual = "Fakescroll.3ds";
	material = MAT_LEATHER;
	scemename = "MAPSEALED";
	description = name;
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITWR_ADDON_SUMMONANCIENTGHOST(C_ITEM)
{
	name = "Przywo�anie Quarhodrona";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 250;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = usesummonancientghost;
	scemename = "MAP";
	description = name;
	text[0] = "Za pomoc� tego zwoju mo�esz przywo�a� Quarhodrona.";
};


func void usesummonancientghost()
{
	if(SC_SUMMONEDANCIENTGHOST == FALSE)
	{
		b_say(self,self,"$ADDON_SUMMONANCIENTGHOST");
		if(Npc_GetDistToWP(self,"ADW_ANCIENTGHOST") < 1000)
		{
			Wld_InsertNpc(none_addon_111_quarhodron,"ADW_ANCIENTGHOST");
			Wld_PlayEffect("spellFX_Maya_Ghost",none_addon_111_quarhodron,none_addon_111_quarhodron,0,0,0,FALSE);
			Wld_PlayEffect("SPELLFX_LIGHTSTAR_WHITE",none_addon_111_quarhodron,none_addon_111_quarhodron,0,0,0,FALSE);
			Snd_Play("MFX_GhostVoice");
			Snd_Play("MFX_Firestorm_Cast");
			Snd_Play("MFX_Lightning_Origin");
			SC_SUMMONEDANCIENTGHOST = TRUE;
		}
		else
		{
			b_say(self,self,"$ADDON_ANCIENTGHOST_NOTNEAR");
		};
	};
};


instance ITWR_MAP_ADDONWORLD(C_ITEM)
{
	name = "Zapomniana dolina budowniczych";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION | ITEM_MULTI;
	value = 250;
	visual = "ItWr_Map_01.3DS";
	material = MAT_LEATHER;
	scemename = "MAP";
	on_state[0] = use_map_addonworld;
	description = name;
	text[0] = "";
	text[1] = "";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void use_map_addonworld()
{
	var int document;
	if(Npc_IsPlayer(self))
	{
		b_setplayermap(itwr_map_addonworld);
	};
	document = Doc_CreateMap();
	Doc_SetPages(document,1);
	Doc_SetPage(document,0,"Map_AddonWorld.tga",TRUE);
	Doc_SetLevel(document,"Addon\AddonWorld.zen");
	Doc_SetLevelCoords(document,-47783,36300,43949,-32300);
	Doc_Show(document);
};


instance ITWR_ADDON_BMCRFT_01(C_ITEM)
{
	name = "Projekt pancerza";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 1000;
	visual = "ArmorCrft_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_bmcrft_01;
	scemename = "MAP";
	description = "Projekt pancerza.";
	text[1] = "Stary projekt jakiego� pancerza.";
	text[3] = "Wymagana zaawansowana znajomo�� p�atnerstwa.";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void use_bmcrft_01()
{
	var int ndocid;
	if(Npc_IsPlayer(self))
	{
		if((KNOWS_BATTLEMAGE == FALSE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
		{
			KNOWS_BATTLEMAGE = TRUE;
			b_say(self,self,"DIA_Cipher_Joints_Running_15_00");
			b_logentry(TOPIC_TALENTSMITH,"Znalaz�em jaki� stary projekt zbroi, przyda�o by si� go wypr�bowa�.");
		};
		if((KNOWS_BATTLEMAGE == FALSE) && (PLAYER_TALENT_ARMOR[1] == FALSE))
		{
			b_say(self,self,"DIA_Thorben_PleaseTeach_Later_15_00");
			Print(PRINT_NOPICKLOCKTALENT);
		};
	};
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"ArmorCrft_01.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_TACRFT_01(C_ITEM)
{
	name = "Projekt pancerza";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 440;
	visual = "ArmorCrft_02.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_tacrft_01;
	scemename = "MAP";
	description = "Projekt sk�rzanego pancerza z trola";
	text[1] = "Wyja�nia tajniki tworzenia pancerza z trola.";
	text[3] = "Wymagany podstawowy poziom p�atnerstwa.";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void use_tacrft_01()
{
	var int ndocid;
	if(Npc_IsPlayer(self))
	{
		if((KNOWS_TROLLARCRFT == FALSE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
		{
			KNOWS_TROLLARCRFT = TRUE;
			b_say(self,self,"DIA_Addon_Vatras_GuildBypass_BACK_15_00");
			b_logentry(TOPIC_TALENTSMITH,"Teraz mog� zrobi� pancerz ze sk�ry trolla.");
		};
		if((KNOWS_TROLLARCRFT == FALSE) && (PLAYER_TALENT_ARMOR[0] == FALSE))
		{
			b_say(self,self,"DIA_Thorben_PleaseTeach_Later_15_00");
			Print(PRINT_NOPICKLOCKTALENT);
		};
	};
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"ArmorCrft_02.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_SLDBOCRFT_01(C_ITEM)
{
	name = "Projekt zbroi z czarnej rudy";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 6500;
	visual = "ArmorCrft_03.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_sldbocrft_01;
	scemename = "MAP";
	description = "Projekt zbroi z czarnej rudy.";
	text[1] = "Uczy kucia zbroi z czarnej rudy.";
	text[3] = "Wymagany mistrzowski poziom p�atnerstwa.";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void use_sldbocrft_01()
{
	var int ndocid;
	if(Npc_IsPlayer(self))
	{
		if((KNOWS_SLDBLACKORE == FALSE) && (PLAYER_TALENT_ARMOR[2] == TRUE))
		{
			KNOWS_SLDBLACKORE = TRUE;
			b_say(self,self,"DIA_Cipher_Joints_Running_15_00");
			b_logentry(TOPIC_TALENTSMITH,"Teraz mog� wyku� zbroj� z czarnej rudy.");
		};
		if((KNOWS_SLDBLACKORE == FALSE) && (PLAYER_TALENT_ARMOR[2] == FALSE))
		{
			b_say(self,self,"DIA_Thorben_PleaseTeach_Later_15_00");
			Print(PRINT_NOPICKLOCKTALENT);
		};
	};
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"ArmorCrft_03.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_SLDG3CRFT_01(C_ITEM)
{
	name = "Projekt pancerza z Myrtany";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 3400;
	visual = "ArmorCrft_04.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_sldg3crft_01;
	scemename = "MAP";
	description = "Projekt pancerza myrta�skiego najemnika";
	text[1] = "Zawiera instrukcje wykucia myrta�skiego pancerza.";
	text[3] = "Wymagana zaawansowana znajomo�� p�atnerstwa.";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void use_sldg3crft_01()
{
	var int ndocid;
	if(Npc_IsPlayer(self))
	{
		if((KNOWS_SLDG3 == FALSE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
		{
			KNOWS_SLDG3 = TRUE;
			b_say(self,self,"DIA_Addon_Vatras_GuildBypass_BACK_15_00");
			b_logentry(TOPIC_TALENTSMITH,"Teraz mog� wyku� myrta�ski pancerz.");
		};
		if((KNOWS_SLDG3 == FALSE) && (PLAYER_TALENT_ARMOR[1] == FALSE))
		{
			b_say(self,self,"DIA_Thorben_PleaseTeach_Later_15_00");
			Print(PRINT_NOPICKLOCKTALENT);
		};
	};
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"ArmorCrft_04.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_W2KNIGHTCRFT_01(C_ITEM)
{
	name = "Projekt kr�lewskiego pancerza";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 3950;
	visual = "ArmorCrft_05.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_w2knightcrft_01;
	scemename = "MAP";
	description = "Schemat vengardzkiego pancerza ";
	text[1] = "Pancerz u�ywany przez gwardi� kr�lewsk�.";
	text[2] = "Prawdziwe dzie�o sztuki.";
	text[3] = "Wymagana zaawansowana znajomo�� p�atnerstwa.";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void use_w2knightcrft_01()
{
	var int ndocid;
	if(Npc_IsPlayer(self))
	{
		if((KNOWS_W2KNIGHT == FALSE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
		{
			KNOWS_W2KNIGHT = TRUE;
			b_say(self,self,"DIA_Addon_Vatras_GuildBypass_BACK_15_00");
			b_logentry(TOPIC_TALENTSMITH,"Teraz mog� wyku� kr�lewski pancerz.");
		};
		if((KNOWS_W2KNIGHT == FALSE) && (PLAYER_TALENT_ARMOR[1] == FALSE))
		{
			b_say(self,self,"DIA_Thorben_PleaseTeach_Later_15_00");
			Print(PRINT_NOPICKLOCKTALENT);
		};
	};
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"ArmorCrft_05.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_W2KNIGHTCRFT_GRD1TO2(C_ITEM)
{
	name = "Projekt wzmocnienia kr�lewskiego pancerza.";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 1150;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_w2_grd1to2;
	scemename = "MAP";
	description = name;
	text[1] = "Szczeg�owo opisuje spos�b usprawnienia tej zbroi.";
	text[3] = "Wymagana zaawansowana znajomo�� p�atnerstwa.";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void use_w2_grd1to2()
{
	var int ndocid;
	if(Npc_IsPlayer(self))
	{
		if((KNOWS_W2KNIGHT_GRD1TO2 == FALSE) && (KNOWS_W2KNIGHT == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
		{
			KNOWS_W2KNIGHT_GRD1TO2 = TRUE;
			b_say(self,self,"DIA_Addon_Vatras_GuildBypass_BACK_15_00");
			b_logentry(TOPIC_TALENTSMITH,"Teraz potrafi� usprawni� kr�lewski pancerz, wzmacniaj�c ochron� ramion i n�g.");
		};
		if((KNOWS_W2KNIGHT_GRD1TO2 == FALSE) || (KNOWS_W2KNIGHT == FALSE) || (PLAYER_TALENT_ARMOR[1] == FALSE))
		{
			b_say(self,self,"DIA_Thorben_PleaseTeach_Later_15_00");
			Print(PRINT_NOPICKLOCKTALENT);
		};
	};
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Kr�lewski pancerz");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Stalowe naramienniki:");
	Doc_PrintLine(ndocid,0,"    2x sztaba stali, sk�ra.");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Stalowe nagolenniki:");
	Doc_PrintLine(ndocid,0,"    2x sztaba stali, sk�ra.");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_W2KNIGHTCRFT_GRD3TO4(C_ITEM)
{
	name = "Projekt wzmocnienia kr�lewskiego pancerza.";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 2300;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_w2_grd3to4;
	scemename = "MAP";
	description = name;
	text[1] = "Opisuje dalsze usprawnienia tej zbroi.";
	text[3] = "Wymagana wiedza na temat poprzednich usprawnie�";
	text[4] = "oraz mistrzowska znajomo�� p�atnerstwa.";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void use_w2_grd3to4()
{
	var int ndocid;
	if(Npc_IsPlayer(self))
	{
		if((KNOWS_W2KNIGHT_GRD3TO4 == FALSE) && (KNOWS_W2KNIGHT_GRD1TO2 == TRUE) && (PLAYER_TALENT_ARMOR[2] == TRUE))
		{
			KNOWS_W2KNIGHT_GRD3TO4 = TRUE;
			b_say(self,self,"DIA_Addon_Vatras_GuildBypass_BACK_15_00");
			b_logentry(TOPIC_TALENTSMITH,"Teraz mog� znacz�co usprawni� kr�lewski pancerz wzmacniaj�c ochron� przy sercu, d�oniach i stopach.");
		};
		if((KNOWS_W2KNIGHT_GRD3TO4 == FALSE) || (KNOWS_W2KNIGHT_GRD1TO2 == FALSE) || (PLAYER_TALENT_ARMOR[2] == FALSE))
		{
			b_say(self,self,"DIA_Thorben_PleaseTeach_Later_15_00");
			Print(PRINT_NOPICKLOCKTALENT);
		};
	};
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Kr�lewski pancerz");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Dodatkowe p�yty stali do ochrony gard�a i serca, oraz okute stal� buty maj�ce chroni� stopy:");
	Doc_PrintLine(ndocid,0,"    4x sztaba stali, sk�ra.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Stalowe r�kawice chroni�ce d�onie:");
	Doc_PrintLine(ndocid,0,"     4x sztaba stali, 3x sk�ra.");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_W2KNIGHTCRFT_GRD5TO7(C_ITEM)
{
	name = "Projekt wzmocnienia kr�lewskiego pancerza.";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 3450;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_w2_grd5to7;
	scemename = "MAP";
	description = name;
	text[1] = "Pozwala maksymalnie wzmoni� kr�lewski pancerz.";
	text[3] = "Wymagana wiedza na temat poprzednich usprawnie�";
	text[4] = "oraz mistrzowska znajomo�� p�atnerstwa.";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void use_w2_grd5to7()
{
	var int ndocid;
	if(Npc_IsPlayer(self))
	{
		if((KNOWS_W2KNIGHT_GRD5TO7 == FALSE) && (KNOWS_W2KNIGHT_GRD3TO4 == TRUE) && (PLAYER_TALENT_ARMOR[2] == TRUE))
		{
			KNOWS_W2KNIGHT_GRD5TO7 = TRUE;
			b_say(self,self,"DIA_Addon_Vatras_GuildBypass_BACK_15_00");
			b_logentry(TOPIC_TALENTSMITH,"Teraz mog� maksymalnie usprawni� kr�lewski pancerz dodaj�c dodatkow� ochron� dla ramion, �okci i st�p.");
		};
		if((KNOWS_W2KNIGHT_GRD5TO7 == FALSE) || (KNOWS_W2KNIGHT_GRD3TO4 == FALSE) || (PLAYER_TALENT_ARMOR[2] == FALSE))
		{
			b_say(self,self,"DIA_Thorben_PleaseTeach_Later_15_00");
			Print(PRINT_NOPICKLOCKTALENT);
		};
	};
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Kr�lewski pancerz");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Stalowe na�okietniki:");
	Doc_PrintLine(ndocid,0,"    3x sztaba stali.");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Stalowa nakolanniki:");
	Doc_PrintLine(ndocid,0,"    4x sztaba stali, 2x sk�ra.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Usprawnione naramienniki chroni�ce szyj� i obojczyk:");
	Doc_PrintLine(ndocid,0,"    5x sztaba stali, 2x sk�ra.");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};

