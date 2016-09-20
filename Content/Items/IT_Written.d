
instance STANDARDBRIEF(C_ITEM)
{
	name = "List";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = usestandardbrief;
	scemename = "MAP";
	description = "TypowyList";
};


func void usestandardbrief()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"TypowyList");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Bla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla bla");
	Doc_Show(ndocid);
};


instance STANDARDBUCH(C_ITEM)
{
	name = "TypowaKsi��ka";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_05.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "TypowaKsi��ka";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = usestandardbuch;
};


func void usestandardbuch()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Brown_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Brown_R.tga",0);
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"TypowaKsi��ka Strona 1");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Bla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla bla");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,0,"Bla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla bBla blaBla blaBla blaBlaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla bla");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_SetFont(ndocid,1,FONT_BOOKHEADLINE);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"TypowaKsi��ka Strona 2");
	Doc_SetFont(ndocid,1,FONT_BOOK);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Bla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla bla");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Bla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla bla");
	Doc_Show(ndocid);
};


instance ITWR_MAP_NEWWORLD(C_ITEM)
{
	name = "Mapa teren�w Khorinis";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION | ITEM_MULTI;
	value = 250;
	visual = "ItWr_Map_01.3DS";
	material = MAT_LEATHER;
	scemename = "MAP";
	on_state[0] = use_map_newworld;
	description = name;
	text[0] = "";
	text[1] = "";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void use_map_newworld()
{
	var int document;
	if(Npc_IsPlayer(self))
	{
		b_setplayermap(itwr_map_newworld);
	};
	document = Doc_CreateMap();
	Doc_SetPages(document,1);
	Doc_SetPage(document,0,"Map_NewWorld.tga",TRUE);
	Doc_SetLevel(document,"NewWorld\NewWorld.zen");
	Doc_SetLevelCoords(document,-28000,50000,120000,-75000);
	Doc_Show(document);
};


instance ITWR_MAP_NEWWORLD_CITY(C_ITEM)
{
	name = "Mapa miasta Khorinis";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION | ITEM_MULTI;
	value = 50;
	visual = "ItWr_Map_01.3DS";
	material = MAT_LEATHER;
	scemename = "MAP";
	on_state[0] = use_map_newworld_city;
	description = name;
	text[0] = "";
	text[1] = "";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void use_map_newworld_city()
{
	var int document;
	if(Npc_IsPlayer(self))
	{
		b_setplayermap(itwr_map_newworld_city);
	};
	document = Doc_CreateMap();
	Doc_SetPages(document,1);
	Doc_SetPage(document,0,"Map_NewWorld_City.tga",TRUE);
	Doc_SetLevel(document,"NewWorld\NewWorld.zen");
	Doc_SetLevelCoords(document,-6900,11800,21600,-9400);
	Doc_Show(document);
};


instance ITWR_MAP_OLDWORLD(C_ITEM)
{
	name = "Mapa G�rniczej Doliny";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION | ITEM_MULTI;
	value = 350;
	visual = "ItWr_Map_01.3DS";
	material = MAT_LEATHER;
	scemename = "MAP";
	on_state[0] = use_map_oldworld;
	description = name;
	text[0] = "";
	text[1] = "";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void use_map_oldworld()
{
	var int document;
	if(Npc_IsPlayer(self))
	{
		b_setplayermap(itwr_map_oldworld);
	};
	document = Doc_CreateMap();
	Doc_SetPages(document,1);
	Doc_SetPage(document,0,"Map_OldWorld.tga",TRUE);
	Doc_SetLevel(document,"OldWorld\OldWorld.zen");
	Doc_SetLevelCoords(document,-78500,47500,54000,-53000);
	Doc_Show(document);
};


var int lerne_einhand;
var int lerne_zweihand;
var int lerne_jagdbow;
var int kampfkunst_bonuslp;

instance ITWR_EINHANDBUCH(C_ITEM)
{
	name = "Sztuka walki";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 5000;
	visual = "ItWr_Book_02_04.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Kunszt obronny po�udniowc�w";
	text[2] = "Ksi��ka opisuj�ca sztuk�";
	text[3] = "walki broniami jednor�cznymi.";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = useeinhandbuch;
};


func void useeinhandbuch()
{
	var int ndocid;
	if(LERNE_EINHAND == FALSE)
	{
		b_raisefighttalent(self,NPC_TALENT_1H,5);
		Print("Bro� jednor�czna +5");
		LERNE_EINHAND = TRUE;
		Snd_Play("Levelup");
	};
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Red_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Red_R.tga",0);
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Kunszt obronny po�udniowc�w");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Po�udniowiec w por�wnaniu z mieszka�cem p�nocy nie polega tak bardzo na sile fizycznej, preferuj�c zwinno��, a gor�cy klimat jego ojczyzny zmusza go do korzystania z l�ejszych i daj�cych wi�ksz� swobod� ruch�w pancerzy. W zwi�zku z tym styl walki ludzi po�udnia jest ca�kowicie inny od tego, do kt�rego jeste�my przyzwyczajeni. ");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_SetFont(ndocid,1,FONT_BOOKHEADLINE);
	Doc_PrintLine(ndocid,1,"");
	Doc_SetFont(ndocid,1,FONT_BOOK);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Prawdopodobnie najs�ynniejszym manewrem wywodz�cym si� z po�udnia jest jednor�czny blok po��czony z krokiem wstecz: cofni�cie si� pozwala na zmniejszenie si�y wrogiego ciosu i umo�liwia przyj�cie postawy u�atwiaj�cej wyprowadzenie kontrataku.");
	Doc_PrintLine(ndocid,1,"");
	Doc_Show(ndocid);
};


instance ITWR_ZWEIHANDBUCH(C_ITEM)
{
	name = "Taktyka walki";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 5000;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Bloki dwur�czne";
	text[2] = "Ksi��ka opisuj�ca sztuk�";
	text[3] = "walki broniami dwur�cznymi.";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = usezweihandbuch;
};


func void usezweihandbuch()
{
	var int ndocid;
	if(LERNE_ZWEIHAND == FALSE)
	{
		b_raisefighttalent(self,NPC_TALENT_2H,5);
		Print("Bro� dwur�czna +5");
		LERNE_ZWEIHAND = TRUE;
		Snd_Play("Levelup");
	};
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Red_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Red_R.tga",0);
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Bloki dwur�czne");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Blokowanie cios�w przeciwnika za pomoc� broni dwur�cznej umo�liwia silnym wojownikom gwa�towne powstrzymanie wroga i przerwanie ewentualnej kombinacji jego cios�w. ");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_SetFont(ndocid,1,FONT_BOOKHEADLINE);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"");
	Doc_SetFont(ndocid,1,FONT_BOOK);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Zatrzymany w ten spos�b przeciwnik traci inicjatyw� i �atwiej go potem skutecznie zaatakowa�.");
	Doc_Show(ndocid);
};


instance ITWR_BLOODFLY_01(C_ITEM)
{
	name = "Krwiopijcy";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 150;
	visual = "ItWr_Book_02_01_2.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Krwiopijcy";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = useitwr_bloodfly_01;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void useitwr_bloodfly_01()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Brown_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Brown_R.tga",0);
	Doc_SetFont(ndocid,-1,"font_15_book.tga");
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_PrintLine(ndocid,0,"Krwiopijcy");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0," ");
	Doc_SetFont(ndocid,-1,"font_10_book.TGA");
	Doc_PrintLine(ndocid,0,"o krwiopijcach");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Ale w miejscu, gzie grunt jest podmok�y a powietrze wilgotne, krwiopijcy zbieraj� si� stadami, zwabione zapachem potu �ywych istot. Swoimi ��d�ami u�miercaj� ofiary i ucztuj� na ich krwi.");
	Doc_PrintLine(ndocid,0,"");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"My�liwi z bagien nauczyli si� pozyskiwa� ��d�a tych drapie�c�w. W tym celu nacinaj� wn�trzno�ci krwiopijc�w i usuwaj� ostro�nie ��d�o wraz z otaczj�c� je tkank�. Nast�pnie zeskrobuj� niejadalne mi�so...");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_Show(ndocid);
	if(PLAYER_TALENT_TAKEANIMALTROPHY[8] == FALSE)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[8] = TRUE;
		Log_CreateTopic(TOPIC_TALENTANIMALTROPHY,LOG_NOTE);
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Teraz mog�:");
		b_logentry(TOPIC_TALENTANIMALTROPHY,"... usuwa� ��d�a z martwych krwiopijc�w.");
		Print("Wyuczony usuwania ��de�");
	};
};


instance ITWR_ASTRONOMIE(C_ITEM)
{
	name = "Astronomia";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 140;
	visual = "ItWr_Book_02_05_1.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Astronomia";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = useastronomie;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void useastronomie()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Brown_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Brown_R.tga",0);
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_SetFont(ndocid,-1,"font_10_book.tga");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"W centrum wszech�wiata znajduje si� Morgrad, co zawiera cztery �ywio�y � ziemi�, wod�, ogie� i wiatr, Morgrad, co jest wiecznie niespokojnym sercem Beliara. A nad nim rozci�ga si� sfera niebios.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"W odwiecznej hierarchii kosmosu cz�owiek stoi po�rodku. Jego dusza pozwala mu do�wiadcza� �ask niebia�skich, ale jego cia�o stworzone jest z substancji Morgradu. Jest wi�c cz�owiek odzwierciedleniem ca�ego �wiata.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Orbity wszystkich planet, czyli drogi, jakie pokonuj� okr��aj�c Morgrad, zmieniaj� si� nieznacznie z up�ywem lat. Pewnym jest zatem, i� zmierza powoli do jakiego� celu.");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Obserwuj�c ruch ksi�yca na nocnym niebie ustalili�my pierwszy kalendarz.");
	Doc_Show(ndocid);
};


instance ITWR_KAMPFKUNST(C_ITEM)
{
	name = "Sztuki walki";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 640;
	visual = "ItWr_Book_02_03_2.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Sztuki walki";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = usekampfkunst;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void usekampfkunst()
{
	var int ndocid;
	if(KAMPFKUNST_BONUSLP == FALSE)
	{
		hero.lp = hero.lp + 2;
		KAMPFKUNST_BONUSLP = TRUE;
		Snd_Play("Levelup");
		Print("Punkty nauki +2");
	};
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Brown_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Brown_R.tga",0);
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_SetFont(ndocid,-1,"font_10_book.tga");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Od 2000 lat nauki mistrz�w kszta�tuj� rozw�j sztuki walki.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Zr�czno��, opanowanie, szybko��, zdolno�� obserwacji i b�yskawicznego podejmowania decyzji � wszystkie te umiej�tno�ci nale�y bezustannie doskonali�. Jedynie doskona�a koordynacja ruch�w i zachowanie w�a�ciwej postawy pozwol� na prawid�owy rozw�j twych umiej�tno�ci");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Przes�anie duchowych i cielesnych nauk Mistrza przetrwa�o wiele lat.");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Jego niepospolity sukces by� natchnieniem dla kolejnych pokole�. �wiat zmienia� si� bez przerwy, ale idealna harmonia si� duchowych i sprawno�ci cia�a pozosta�a niezmienn�.");
	Doc_Show(ndocid);
};


instance ITWR_SMITHMASTERBOOK_LVL1(C_ITEM)
{
	name = "Sztuka kowalstwa - Tom 1";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 1000;
	visual = "ITWR_SmithMasterBook_lvl1.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Sztuka kowalstwa - Tom 1";
	text[1] = "Ksi��ka opisuj�ca tajniki kucia broni.";
	text[3] = "";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = usesmithmasterbook_lvl1;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void usesmithmasterbook_lvl1()
{
	var int ndocid;
	if(Npc_IsPlayer(self))
	{
		if(((PLAYER_TALENT_SMITH[12] || PLAYER_TALENT_SMITH[17]) == TRUE) && (KNOWS_SMITHMASTERBOOK_LVL1 == FALSE))
		{
			KNOWS_SMITHMASTERBOOK_LVL1 = TRUE;
			b_say(self,self,"DIA_Addon_Vatras_GuildBypass_BACK_15_00");
			b_logentry(TOPIC_TALENTSMITH,"Teraz wiem jak ulepszy� Wspania�y Miecz P�torar�czny oraz Flamberg.");
		};
		if(KNOWS_SMITHMASTERBOOK_LVL1 == FALSE)
		{
			b_say(self,self,"DIA_Thorben_PleaseTeach_Later_15_00");
			Print(PRINT_NOPICKLOCKTALENT);
		};
	};
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Brown_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Brown_R.tga",0);
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_SetFont(ndocid,-1,"font_10_book.tga");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Ta ksi��ka zawiera sporo informacji na temat kucia broni.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Kowalstwo - poziom podstawowy.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Wspania�y miecz p�torar�czny:");
	Doc_PrintLines(ndocid,1,"Poszerzaj�c ostrze miecza, bro� stanie si� bardziej �mierciono�na, jednak�e b�dzie przez to trudniejsza we w�adaniu.");
	Doc_PrintLines(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"Flamberg:");
	Doc_PrintLines(ndocid,1,"Dodanie zaostrzonych hak�w nad jelcem, zapewni ochron� dla d�oni trzymaj�cego, a tak�e pozwoli zada� dodatkowe obra�enia. Tak jak poprzednio - jest to okupione cz�ciow� utrat� mobilno�ci.");
	Doc_PrintLines(ndocid,1,"");
	Doc_Show(ndocid);
};


instance ITWR_SMITHMASTERBOOK_LVL2(C_ITEM)
{
	name = "Sztuka kowalstwa - Tom 2";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 1500;
	visual = "ITWR_SmithMasterBook_lvl1.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Sztuka kowalstwa - Tom 2";
	text[1] = "Ksi��ka opisuj�ca tajniki kucia broni.";
	text[2] = "Pozwala poprawi� swe umiej�tno�ci.";
	text[3] = "Wymaga dobrej znajomo�ci poprzedniego tomu.";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = usesmithmasterbook_lvl2;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void usesmithmasterbook_lvl2()
{
	var int ndocid;
	if(Npc_IsPlayer(self))
	{
		if(((PLAYER_TALENT_SMITH[12] || PLAYER_TALENT_SMITH[17]) == TRUE) && (KNOWS_SMITHMASTERBOOK_LVL1 == TRUE) && (KNOWS_SMITHMASTERBOOK_LVL2 == FALSE))
		{
			KNOWS_SMITHMASTERBOOK_LVL2 = TRUE;
			b_say(self,self,"DIA_Addon_Vatras_GuildBypass_BACK_15_00");
			b_logentry(TOPIC_TALENTSMITH,"Teraz wiem jak jeszcze bardziej ulepszy� Wspania�y Miecz P�torar�czny oraz Flamberg.");
		};
		if(KNOWS_SMITHMASTERBOOK_LVL2 == FALSE)
		{
			b_say(self,self,"DIA_Thorben_PleaseTeach_Later_15_00");
			Print(PRINT_NOPICKLOCKTALENT);
		};
	};
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Brown_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Brown_R.tga",0);
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_SetFont(ndocid,-1,"font_10_book.tga");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Ta ksi��ka zawiera sporo informacji na temat kucia broni.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Kowalstwo - poziom zaawansowany.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Wspania�y miecz p�torar�czny:");
	Doc_PrintLines(ndocid,1,"Zamiast zwyk�ego ostrza mo�na u�y� z�bkowanego - uczyni to bro� znacznie bardziej niebezpieczn�.");
	Doc_PrintLines(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"Flamberg:");
	Doc_PrintLines(ndocid,1,"Z�bkowane ostrze w przypadku broni tak du�ej sprawi, �e bez problemu bedzie ona w stanie rozdziera� pancerz wroga. Potrzeba do tego jednak sporo si�y.");
	Doc_PrintLines(ndocid,1,"");
	Doc_Show(ndocid);
};


instance ITWR_SMITHMASTERBOOK_LVL3(C_ITEM)
{
	name = "Sztuka kowalstwa - Tom 3";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 2000;
	visual = "ITWR_SmithMasterBook_lvl1.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Sztuka kowalstwa - Tom 3";
	text[1] = "Ksi��ka opisuj�ca tajniki kucia broni.";
	text[2] = "Pozwala poprawi� swe umiej�tno�ci.";
	text[3] = "Wymaga dobrej znajomo�ci poprzednich tom�w.";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = usesmithmasterbook_lvl3;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void usesmithmasterbook_lvl3()
{
	var int ndocid;
	if(Npc_IsPlayer(self))
	{
		if(((PLAYER_TALENT_SMITH[12] || PLAYER_TALENT_SMITH[17]) == TRUE) && (KNOWS_SMITHMASTERBOOK_LVL2 == TRUE) && (KNOWS_SMITHMASTERBOOK_LVL3 == FALSE))
		{
			KNOWS_SMITHMASTERBOOK_LVL3 = TRUE;
			b_say(self,self,"DIA_Addon_Vatras_GuildBypass_BACK_15_00");
			b_logentry(TOPIC_TALENTSMITH,"Teraz wiem w jaki spos�b maksymalnie ulepszy� Wspania�y Miecz P�torar�czny oraz Flamberg.");
		};
		if(KNOWS_SMITHMASTERBOOK_LVL3 == FALSE)
		{
			b_say(self,self,"DIA_Thorben_PleaseTeach_Later_15_00");
			Print(PRINT_NOPICKLOCKTALENT);
		};
	};
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Brown_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Brown_R.tga",0);
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_SetFont(ndocid,-1,"font_10_book.tga");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Ta ksi��ka zawiera sporo informacji na temat kucia broni.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Kowalstwo - poziom mistrzowski.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Wspania�y miecz p�torar�czny:");
	Doc_PrintLines(ndocid,1,"Dodanie hak�w pomi�dzy jelcem, a z�bkowan� cz�ci� ostrza, zapewni dodatkow� ochron� oraz pozwoli zada� dodatkowe obra�enia, ale jednocze�nie zwi�kszy mas� broni i uczyni j� mniej por�czn�.");
	Doc_PrintLines(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"Flamberg:");
	Doc_PrintLines(ndocid,1,"Dob�r odpowiedniej g�owicy dla trzonu r�koje�ci mo�e sprawi�, �e w niekt�rych sytuacjach broni� b�dzie mo�na zada� wi�cej obra�e�, zwi�kszy to jednak ci�ar miecza.");
	Doc_PrintLines(ndocid,1,"");
	Doc_Show(ndocid);
};


instance ITWR_JAGD_UND_BEUTE(C_ITEM)
{
	name = "My�liwy i ofiara";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 3000;
	visual = "ItWr_Book_02_02_2.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "My�liwy i ofiara";
	text[2] = "Ksi��ka po�wi�cona jest sztuce";
	text[3] = "polowania z �ukiem.";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = usejagd_und_beute;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void usejagd_und_beute()
{
	var int ndocid;
	if(LERNE_JAGDBOW == FALSE)
	{
		b_raisefighttalent(self,NPC_TALENT_BOW,3);
		Print("�ucznictwo +3");
		LERNE_JAGDBOW = TRUE;
		Snd_Play("Levelup");
	};
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Brown_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Brown_R.tga",0);
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_SetFont(ndocid,-1,"font_10_book.tga");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Jego zapiski przetrwa�y ca�e wieki i po dzi� dzie� uznawane s� za najznakomitsze kompendium wiedzy o polowaniu. Po d�ugich latach star� na p�nocnym pograniczu, niemal ka�dy obywatel potrafi pos�ugiwa� si� �ukiem. Jednak sztuka polowania daleko wykracza poza podstawowe zasady strzelania z �uku. Zwierzyna jest wszak p�ocha i nieprzewidywalna.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Polowanie z �ukiem ma swe pocz�tku w czasach staro�ytnych. W ci�gu ca�ych tysi�cleci nie zasz�y w technikach �owieckich wi�ksze zmiany i tak ju� najprawdopodobniej pozostanie. Jakie czynniki wp�ywaj� tak naprawd� na skuteczno�� pos�ugiwania si� �ukiem? To w�a�nie rozpoznanie tych czynnik�w czyni prawdziwego mistrza �ucznictwa.");
	Doc_Show(ndocid);
};


instance ITWR_LEHREN_DER_GOETTER1(C_ITEM)
{
	name = "M�dro�� bog�w - Tom 1";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 75;
	visual = "ItWr_Book_02_01_1.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "M�dro�� bog�w";
	text[0] = "                                    Tom 1";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = uselehren_der_goetter1;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void uselehren_der_goetter1()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Red_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Red_R.tga",0);
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_SetFont(ndocid,-1,"font_10_book.tga");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Wys�uchajcie s��w bo�ych, bo pragn� oni, by�cie ich wys�uchali. Przestrzegajcie praw bo�ych, bo chc� oni, by�cie ich przestrzegali. Czcijcie kap�an�w bo�ych, bo oni s� wybra�cami �aski...");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"S�owa Innosa: A gdyby�cie nie mogli ich poj�c, nie odrzucajcie s��w kap�an�w, bo g�osz� oni moj� m�dro��. Gdy� ja jestem S�o�cem na niebie, �wiat�em i �yciem na Ziemi. A wszystko, co wrogiem jest S�o�ca, jest i moim wrogiem, i zostanie wygnane do krainy wiecznej ciemno�ci.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"S�owa Adanosa: �yjcie i pracujcie, bo dzie� stworzono po to, by m�� m�g� �y� i pracowa�. Szukajcie wiedzy, by�cie mogli przekaza� j� synom swoim, gdy� taka jest wola moja. Ale strze�cie si�, bo cz�ek g�upi i leniwy zostanie wygnany do krainy wiecznej ciemno��i.");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"S�owa Beliara: A ktokolwiek wyst�pi przeciw woli bo�ej, ze mn� b�dzie mia� do czynienia. Na jego cia�o b�l ze�l� okrutny, a jego duch p�jdzie ze mn� do krainy wiecznej ciemno�ci.");
	Doc_Show(ndocid);
};


instance ITWR_LEHREN_DER_GOETTER2(C_ITEM)
{
	name = "M�dro�� bog�w - Tom 2";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 75;
	visual = "ItWr_Book_02_01_1.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "M�dro�� bog�w";
	text[0] = "                                    Tom 2";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = uselehren_der_goetter2;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void uselehren_der_goetter2()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Red_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Red_R.tga",0);
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_SetFont(ndocid,-1,"font_10_book.tga");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"O zaraniu dziej�w: Na pocz�tku nie by�o dnia ani nocy, i �adne �ywe stworzenie nie przemierza�o �wiata. Wtedy pojawi� si� Innos, a jego blask pada� na Ziemi�. Innos obdarzy� �wiat darem �ycia. Ale �adne stworzenie nie �mia�o spojrze� na twarz Innosa, wi�c dobry b�g stworzy� S�o�ce. Lecz mimo to, jasno�� by�a zbyt wielka, tote� Innos podzieli� si� na dwoje i tak powsta� Beliar. Beliar stworzy� noc. Teraz cz�owiek m�g� wreszcie �y�, lecz nie wiedzia� jak. Dlatego Innos podzieli� si� po raz wt�ry i tak powsta� Adanos. Adanos przyni�s� ludziom pomys�owo�� i m�dro��.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Dlatego Innos postanowi� zostawi� ludzko�� pod opiek� Adanosa i uda� si� na spoczynek. Lecz Beliar p�on�� z zazdro�ci, gdy� ludzie bali si� go i nie oddawali mu czci. Tedy postanowi� Beliar stworzy� cz�owieka, kt�ry modli�by si� tylko do niego. Ale cz�owiek �w by� jako wszyscy inni, i ba� si� Beliara i nie oddawa� mu czci. B�g nocy rozz�o�ci� si� i zabi� cz�owieka krzycz�c: Dobrze! B�jcie si� mnie zatem, ale cze�� oddacie mi, cho�by po �mierci. Tymi s�owy ustanowi� Beliar �mier� � kres �ywota ludzkiego.");
	Doc_Show(ndocid);
};


instance ITWR_LEHREN_DER_GOETTER3(C_ITEM)
{
	name = "M�dro�� bog�w - Tom 3";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 75;
	visual = "ItWr_Book_02_01_1.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "M�dro�� bog�w";
	text[0] = "                                    Tom 3";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = uselehren_der_goetter3;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void uselehren_der_goetter3()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Red_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Red_R.tga",0);
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_SetFont(ndocid,-1,"font_10_book.tga");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Innos pozwoli�, by ludzie mogli go us�ysze� i przemawia� do niego. Pozwoli� im r�wnie� czyni� cuda i nazwa� je magi�. Dzi�ki magii, ludzie zacz�li zmienia� �wiat wedle swego upodobania, jedni m�drze, inni g�upio. Widz�c to, Innos zabra� dar magii ludziom g�upim i pozostawi� go w r�kach ludzi �wiat�ych. Obdarzy� ich r�wnie� innymi �askami, czyni�c swoim kap�anami i nadaj�c im miano mag�w.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Ludzie czcili kap�an�w Innosa i oddawali im cze��, ale wielu mag�w odwr�ci�o si� od Innosa i uciek�o si� pod opiek� jego boskiego brata � Adanosa. Kasta mag�w uleg�a rozbiciu. Ci, kt�rzy pod��ali za bogiem m�dro�ci nazwali siebie magami Kr�gu Wody. Wyznawcy Innosa nazywani za� byli Magami Ognia.");
	Doc_Show(ndocid);
};


instance ITWR_MYRTANAS_LYRIK(C_ITEM)
{
	name = "Poezja Myrta�ska";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 80;
	visual = "ItWr_Book_02_02_1.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Poezja Myrta�ska";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = usemyrtanas_lyrik;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void usemyrtanas_lyrik()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Red_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Red_R.tga",0);
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_SetFont(ndocid,-1,"font_10_book.tga");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"    Pie��");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"          Skruchy");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Na pocz�tku by�a moc, jak jasny �nieg bia�a,");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Dzi� niewielka cz�stka dawnej chwa�y pozosta�a.");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Przypomina o jedno�ci z dawny lat,");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"jak�e r�nej od chciwo�ci, kt�r� �wiat");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"nasz zdepta� i odrzuci� po wsze czasy,");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Nasz duch nie zdzier�y� ostatecznej pr�by");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"a po��danie b�dzie �r�d�em naszej zguby.");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Bo nie masz ju� jedno�ci na tym �wiecie.");
	Doc_PrintLines(ndocid,1,"");
	Doc_Show(ndocid);
};


instance ITWR_DAS_MAGISCHE_ERZ(C_ITEM)
{
	name = "Magiczna ruda";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_02_3.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Magiczna ruda";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = usedas_magische_erz;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void usedas_magische_erz()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Brown_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Brown_R.tga",0);
	Doc_SetFont(ndocid,-1,"font_15_book.tga");
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_PrintLine(ndocid,0,"Magiczna ruda");
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,-1,"font_10_book.tga");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Najlepsz� rud� do wyrobu wszelkiego rodzaju or�a znale�� mo�na w kopalniach w dolinie Khorinis. Wykut� z niej bro� cechuje niebywa�a wytrzyma�o��. Pok�ady rudy wyst�puj� zwykle g��boko pod ziemi�, lecz g�upcem ten, kto nie podejmie trudu wydobycia jej na �wiat�o dzienne. Niewiele jest takich skarb�w na �wiecie.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Magiczna bro� przebije ka�dy pancerz i pogruchocze ka�d� tarcz�. Zaiste, kr�lewski to or� i kr�lewsk� cen� trzeba zap�aci� za cho�by sztylet wykuty z tego szlachetnego kruszcu. Tako� surow� cen� p�ac� g�rnicy pracuj�cy w kopalniach. Rud� nie�atwo oddzieli� od skalnych pok�ad�w, tak jakby z ca�ych si� walczy�a, by� pozosta� w �onie matki Ziemi.");
	Doc_Show(ndocid);
};


instance ITWR_SCHLACHT_UM_VARANT1(C_ITEM)
{
	name = "Bitwa o Varant - Tom 1";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 90;
	visual = "ItWr_Book_02_03_1.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Bitwa o Varant";
	text[0] = "                                    Tom 1";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = useschlacht_um_varant1;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void useschlacht_um_varant1()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Red_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Red_R.tga",0);
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_SetFont(ndocid,-1,"font_10_book.tga");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"...ale sprytny Rhobar postanowi� zaatakowa�. Zebra� swoje si�y i kaza� im n�ka� s�absz� praw� flank� nieprzyjaciela. Nie trac�c chwili, kr�l pchn�� najlepsze swe oddzia�y na wroga, i przebi� si� przeze� niczym miecz przecinaj�cy m�a. Wojska Kr�lewskie par�y zatem bez wytchnienia w stron� Varant. Rhobar wiedzia� wszak, �e jedyna szansa ocalenia le�y w rozbiciu armii nieprzyjaciela i niedopuszczeniu do po��czenia si� Gellona i Lukkora. Najpierw jednak postanowi� przeci�� ich linie zaopatrzenia...");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Najpierw jednak postanowi� przeci�� ich linie zaopatrzenia...");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"...Gellon poleg�, a jego armia posz�a w rozsypk�. Ale Rhobar nie zamierza� da� przeciwnikowi chwili wytchnienia i rzuci� swe si�y na pozosta�e oddzia�y wroga. Tu jednak Lukkor rzuci� si� na kr�lewskich znienacka i zada� straszliwy cios wyczerpanym wojskom Rhobara...");
	Doc_Show(ndocid);
};


instance ITWR_SCHLACHT_UM_VARANT2(C_ITEM)
{
	name = "Bitwa o Varant - Tom 2";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 90;
	visual = "ItWr_Book_02_03_1.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Bitwa o Varant";
	text[0] = "                                    Tom 2";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = useschlacht_um_varant2;
	inv_zbias = INVCAM_ENTF_BOOK_STANDARD;
	inv_rotz = INVCAM_Z_BOOK_STANDARD;
	inv_rotx = INVCAM_X_BOOK_STANDARD;
};


func void useschlacht_um_varant2()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Red_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Red_R.tga",0);
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_SetFont(ndocid,-1,"font_10_book.tga");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Wojna by�a sko�czona. Varant straci�o swe morskie porty, tak potrzebne do zaopatrywania armii. Kr�l Rhobar nie traci� wi�cej czasu, lecz zostawi� swych genera��w, by ci rozprawili si� z niedobitkami nieprzyjaciela. Varrantczycy posiadali ju� tylko jedno ognisko oporu, zgromadzone wok� Lukkora, najpot�niejszego genera�a ca�ego narodu i umiej�tne zmieni� pora�k� w zwyci�stwo.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Ale teraz jego armia znalaz�a si� w potrzasku. Sytuacja wydawa�a si� beznadziejna, cho� jego wojska przewy�sza�y kr�lewskie si�� i wyposa�eniem. Oto jeden z myrta�skich bohater�w, m�ny genera� imieniem Lee, zwabi� przeciwnika w pu�apk�. Na podmok�ej, bagiennej ziemi ci�ka kawaleria Lukkora nie mia�a �adnych szans ze zwinnymi �o�nierzami Lee. Zdziesi�tkowane oddzia�y Varantu musia�y w ko�cu uzna� wy�szo�� przeciwnika. Lukkor zosta� pokonany!");
	Doc_Show(ndocid);
};


instance GOETTERGABE(C_ITEM)
{
	name = "Dar bog�w";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_01.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Dar bog�w";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = usegoettergabe;
};


func void usegoettergabe()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Mage_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Mage_R.tga",0);
	Doc_SetFont(ndocid,-1,"font_15_book.tga");
	Doc_PrintLine(ndocid,0,"Magia");
	Doc_PrintLine(ndocid,0,"");
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_PrintLine(ndocid,0," ");
	Doc_SetFont(ndocid,-1,"font_10_book.TGA");
	Doc_PrintLine(ndocid,0,"Dar bog�w");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Z dawien dawna cz�ek pr�bowa� zg��bi� natur� i genez� sztuk magicznych. Jeno gdzie rozpocz�� takie poszukiwania? Czy magi� mo�na w og�le opisa�? Pr�no szuka� r�wnie niesp�jnego zjawiska we �wiecie: wszak magia jednako leczy i zabija, tworzy i niszczy.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Gdzie zatem szuka� tej nieopisanej pot�gi? Magia jest tym, czym jest � najpot�niejszym i najwspanialszym darem, jaki cz�owiek otrzyma� od bog�w. Baczcie jeno, by dar �w rych�o nie sta� si� przekle�stwem, gdy� nieliczni b�d� w stanie zrozumie� magi� i wykorzysta� j� do w�asnych cel�w. Inni sami zostan� wykorzystani");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"Barihos z Laran");
	Doc_Show(ndocid);
};


instance GEHEIMNISSE_DER_ZAUBEREI(C_ITEM)
{
	name = "Tajniki Magii";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_02.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Tajniki Magii";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = usegeheimnisse_der_zauberei;
};


func void usegeheimnisse_der_zauberei()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Mage_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Mage_R.tga",0);
	Doc_SetFont(ndocid,-1,"font_10_book.tga");
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Tajniki Magii");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Magia nie zamieszkuje w ciele samego magusa. Jest on raczej jako zmy�lny rzemie�lnik, a ona jako narz�dzie jego. Tako� pocz�tkuj�cy magus uczy si� jak on� moc okie�zna� i kierowa� ni� wedle swojej woli.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Jego duch nadaje owej mocy po��dany kszta�t, ogniskuje j� i wreszcie uwalnia. W takich chwilach dusza magusa wznosi si� ponad nasz �wiat i spoziera na Drug� Stron�, gdzie stoi pa�ac pot�gi, kt�r� on kszta�tuje i przekazuje.");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"Barthos z Laran");
	Doc_Show(ndocid);
};


instance MACHTVOLLE_KUNST(C_ITEM)
{
	name = "Pot�ga magii";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Pot�ga magii";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = usemachtvolle_kunst;
};


func void usemachtvolle_kunst()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Mage_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Mage_R.tga",0);
	Doc_SetFont(ndocid,-1,"font_15_book.tga");
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Pot�ga magii");
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,-1,"font_10_book.tga");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Droga maga");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Zdolno�� ��czenia si� z bosk� moc�, powoli wzrasta u maga. Pocz�tkowo kie�kuje jak ma�e drzewko i trzeba o ni� dba�, by nie zmarnia�a. Ale je�li to drzewko dojrzeje, za�wieci pe�nym blaskiem.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Ro�nie i ro�nie, staje si� silniejsza z ka�dym dniem. To jest to, co dzieje si� z pocz�tkuj�cym Magiem. Jego, pocz�tkowo, bardzo ma�e si�y, z czasem rosn� i rozwijaj� si�. Doprowadzi� sw� moc do najwy�szej doskona�o�ci, jest �wi�tym obowi�zkiem maga, bo drzewko to, posadzone zosta�o przez samych Bog�w i Jest najwi�kszym darem jaki mo�e otrzyma� �miertelnik.");
	Doc_Show(ndocid);
};


instance ELEMENTARE_ARCANEI(C_ITEM)
{
	name = "Arcanum �ywio��w";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_04.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Arcanum �ywio��w";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = useelementare_arcanei;
};


func void useelementare_arcanei()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Mage_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Mage_R.tga",0);
	Doc_SetFont(ndocid,-1,"font_15_book.tga");
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Arcanum �ywio��w");
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,-1,"font_10_book.tga");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Miejsce Magii w ziemskim porz�dku.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Wiele bada� przeprowadzano, g�owi�c si� nad zale�no�ci� magii od wszelakich �ywio��w. W rezultacie przyj�to, i� je�li ona � magia � ostatecznym, najpot�niejszym �ywio�em ze wszystkich. Wszak to dzi�ki niej magus mo�e kszta�towa� pozosta�e si�y natury wedle w�asnego upodobania.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Ka�dy �ywio�, w swej najczystszej formie, ujawnia powi�zania z magi�. Oczywi�cie, naturalne manifestacje takich powi�za� nale�� do rzadko�ci i s� skrz�tnie poszukiwane. Zdolno�� magusa do kontrolowania pot�gi �ywio��w stanowi ostateczny dow�d, i� magia jest najczystszym i najwspanialszym dobrem obecnym w naszej egzystencji.");
	Doc_Show(ndocid);
};


instance WAHRE_MACHT(C_ITEM)
{
	name = "Prawdziwa Moc";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_05.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Prawdziwa Moc";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = usewahre_macht;
};


func void usewahre_macht()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Mage_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Mage_R.tga",0);
	Doc_SetFont(ndocid,-1,"font_15_book.tga");
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Prawdziwa Moc");
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,-1,"font_10_book.tga");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"�wi�ta powinno�� M�drca");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"To pot�ga odr�nia magusa od zwyk�ego �miertelnika. W�adny wykorzystywa� bosk� moc, magus wyj�ty jest spod tych wszystkich praw natury, kt�re dotycz� ludzi prostych i kr�l�w jednako.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Gdy magus osi�gnie poziom, kt�ry pozwoli mu wykroczy� poza granice ludzkiej egzystencji, wst�puje do �wiata niedost�pnego zwyk�ym �miertelnikom. Mo�e prze�amywa� bariery czasu i przestrzeni, i nawet �mier� � ostateczna bariera � nie jest mu straszna.");
	Doc_Show(ndocid);
};
instance Itwr_Magic_Cage(C_ITEM)
{
	name = "Magiczna pu�apka";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 500;
	visual = "ItWr_Book_02_02.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Magiczna pu�apka";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = use_magiccagebook;
};


func void use_magiccagebook()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Mage_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Mage_R.tga",0);
	Doc_SetFont(ndocid,-1,"font_10_book.tga");
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Magiczna pu�apka");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Niewiele ludzi wie o tym. Lecz w magiczne runy mo�na zaklina� r�ne surowce mineralne. Jednym z tego przyk�ad�w jest zakl�cie 'Magicznej pu�apki'. Aby je stworzy� nale�y po��czy� magiczn� run� z stalow� sztab�.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Oczywi�cie nale�y te� wzmocni� moc runy. Dlatego dodajemy r�wniesz sztab� magicznej rudy. Co ciekawe katalizatorem nie okazuje si� nic rzadkiego lecz na m�j gust pospolitego. Mowa tu mianowicie o niebieskim bzie. Wystarczy pola� kamie� wyci�giem z 15 niebieskich bz�w.");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"Runy nale�y u�ywa� z rozwag� Altus z Thorniary");
	Doc_Show(ndocid);
	PLAYER_TALENT_RUNES[SPL_MAGICCAGE] = TRUE;
};
