
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
	name = "TypowaKsi¹¿ka";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_05.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "TypowaKsi¹¿ka";
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
	Doc_PrintLines(ndocid,0,"TypowaKsi¹¿ka Strona 1");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Bla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla bla");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,0,"Bla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla bBla blaBla blaBla blaBlaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla bla");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_SetFont(ndocid,1,FONT_BOOKHEADLINE);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"TypowaKsi¹¿ka Strona 2");
	Doc_SetFont(ndocid,1,FONT_BOOK);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Bla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla bla");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Bla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla blaBla bla");
	Doc_Show(ndocid);
};


instance ITWR_MAP_NEWWORLD(C_ITEM)
{
	name = "Mapa terenów Khorinis";
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
	name = "Mapa Górniczej Doliny";
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
	description = "Kunszt obronny po³udniowców";
	text[2] = "Ksi¹¿ka opisuj¹ca sztukê";
	text[3] = "walki broniami jednorêcznymi.";
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
		Print("Broñ jednorêczna +5");
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
	Doc_PrintLines(ndocid,0,"Kunszt obronny po³udniowców");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Po³udniowiec w porównaniu z mieszkañcem pó³nocy nie polega tak bardzo na sile fizycznej, preferuj¹c zwinnoœæ, a gor¹cy klimat jego ojczyzny zmusza go do korzystania z l¿ejszych i daj¹cych wiêksz¹ swobodê ruchów pancerzy. W zwi¹zku z tym styl walki ludzi po³udnia jest ca³kowicie inny od tego, do którego jesteœmy przyzwyczajeni. ");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_SetFont(ndocid,1,FONT_BOOKHEADLINE);
	Doc_PrintLine(ndocid,1,"");
	Doc_SetFont(ndocid,1,FONT_BOOK);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Prawdopodobnie najs³ynniejszym manewrem wywodz¹cym siê z po³udnia jest jednorêczny blok po³¹czony z krokiem wstecz: cofniêcie siê pozwala na zmniejszenie si³y wrogiego ciosu i umo¿liwia przyjêcie postawy u³atwiaj¹cej wyprowadzenie kontrataku.");
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
	description = "Bloki dwurêczne";
	text[2] = "Ksi¹¿ka opisuj¹ca sztukê";
	text[3] = "walki broniami dwurêcznymi.";
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
		Print("Broñ dwurêczna +5");
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
	Doc_PrintLines(ndocid,0,"Bloki dwurêczne");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Blokowanie ciosów przeciwnika za pomoc¹ broni dwurêcznej umo¿liwia silnym wojownikom gwa³towne powstrzymanie wroga i przerwanie ewentualnej kombinacji jego ciosów. ");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_SetFont(ndocid,1,FONT_BOOKHEADLINE);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"");
	Doc_SetFont(ndocid,1,FONT_BOOK);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Zatrzymany w ten sposób przeciwnik traci inicjatywê i ³atwiej go potem skutecznie zaatakowaæ.");
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
	Doc_PrintLines(ndocid,0,"Ale w miejscu, gzie grunt jest podmok³y a powietrze wilgotne, krwiopijcy zbieraj¹ siê stadami, zwabione zapachem potu ¿ywych istot. Swoimi ¿¹d³ami uœmiercaj¹ ofiary i ucztuj¹ na ich krwi.");
	Doc_PrintLine(ndocid,0,"");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Myœliwi z bagien nauczyli siê pozyskiwaæ ¿¹d³a tych drapie¿ców. W tym celu nacinaj¹ wnêtrznoœci krwiopijców i usuwaj¹ ostro¿nie ¿¹d³o wraz z otaczj¹c¹ je tkank¹. Nastêpnie zeskrobuj¹ niejadalne miêso...");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_Show(ndocid);
	if(PLAYER_TALENT_TAKEANIMALTROPHY[8] == FALSE)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[8] = TRUE;
		Log_CreateTopic(TOPIC_TALENTANIMALTROPHY,LOG_NOTE);
		b_logentry(TOPIC_TALENTANIMALTROPHY,"Teraz mogê:");
		b_logentry(TOPIC_TALENTANIMALTROPHY,"... usuwaæ ¿¹d³a z martwych krwiopijców.");
		Print("Wyuczony usuwania ¿¹de³");
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
	Doc_PrintLines(ndocid,0,"W centrum wszechœwiata znajduje siê Morgrad, co zawiera cztery ¿ywio³y – ziemiê, wodê, ogieñ i wiatr, Morgrad, co jest wiecznie niespokojnym sercem Beliara. A nad nim rozci¹ga siê sfera niebios.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"W odwiecznej hierarchii kosmosu cz³owiek stoi poœrodku. Jego dusza pozwala mu doœwiadczaæ ³ask niebiañskich, ale jego cia³o stworzone jest z substancji Morgradu. Jest wiêc cz³owiek odzwierciedleniem ca³ego œwiata.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Orbity wszystkich planet, czyli drogi, jakie pokonuj¹ okr¹¿aj¹c Morgrad, zmieniaj¹ siê nieznacznie z up³ywem lat. Pewnym jest zatem, i¿ zmierza powoli do jakiegoœ celu.");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Obserwuj¹c ruch ksiê¿yca na nocnym niebie ustaliliœmy pierwszy kalendarz.");
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
	Doc_PrintLines(ndocid,0,"Od 2000 lat nauki mistrzów kszta³tuj¹ rozwój sztuki walki.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Zrêcznoœæ, opanowanie, szybkoœæ, zdolnoœæ obserwacji i b³yskawicznego podejmowania decyzji – wszystkie te umiejêtnoœci nale¿y bezustannie doskonaliæ. Jedynie doskona³a koordynacja ruchów i zachowanie w³aœciwej postawy pozwol¹ na prawid³owy rozwój twych umiejêtnoœci");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Przes³anie duchowych i cielesnych nauk Mistrza przetrwa³o wiele lat.");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Jego niepospolity sukces by³ natchnieniem dla kolejnych pokoleñ. Œwiat zmienia³ siê bez przerwy, ale idealna harmonia si³ duchowych i sprawnoœci cia³a pozosta³a niezmienn¹.");
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
	text[1] = "Ksi¹¿ka opisuj¹ca tajniki kucia broni.";
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
			b_logentry(TOPIC_TALENTSMITH,"Teraz wiem jak ulepszyæ Wspania³y Miecz Pó³torarêczny oraz Flamberg.");
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
	Doc_PrintLines(ndocid,0,"Ta ksi¹¿ka zawiera sporo informacji na temat kucia broni.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Kowalstwo - poziom podstawowy.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Wspania³y miecz pó³torarêczny:");
	Doc_PrintLines(ndocid,1,"Poszerzaj¹c ostrze miecza, broñ stanie siê bardziej œmiercionoœna, jednak¿e bêdzie przez to trudniejsza we w³adaniu.");
	Doc_PrintLines(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"Flamberg:");
	Doc_PrintLines(ndocid,1,"Dodanie zaostrzonych haków nad jelcem, zapewni ochronê dla d³oni trzymaj¹cego, a tak¿e pozwoli zadaæ dodatkowe obra¿enia. Tak jak poprzednio - jest to okupione czêœciow¹ utrat¹ mobilnoœci.");
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
	text[1] = "Ksi¹¿ka opisuj¹ca tajniki kucia broni.";
	text[2] = "Pozwala poprawiæ swe umiejêtnoœci.";
	text[3] = "Wymaga dobrej znajomoœci poprzedniego tomu.";
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
			b_logentry(TOPIC_TALENTSMITH,"Teraz wiem jak jeszcze bardziej ulepszyæ Wspania³y Miecz Pó³torarêczny oraz Flamberg.");
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
	Doc_PrintLines(ndocid,0,"Ta ksi¹¿ka zawiera sporo informacji na temat kucia broni.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Kowalstwo - poziom zaawansowany.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Wspania³y miecz pó³torarêczny:");
	Doc_PrintLines(ndocid,1,"Zamiast zwyk³ego ostrza mo¿na u¿yæ z¹bkowanego - uczyni to broñ znacznie bardziej niebezpieczn¹.");
	Doc_PrintLines(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"Flamberg:");
	Doc_PrintLines(ndocid,1,"Z¹bkowane ostrze w przypadku broni tak du¿ej sprawi, ¿e bez problemu bedzie ona w stanie rozdzieraæ pancerz wroga. Potrzeba do tego jednak sporo si³y.");
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
	text[1] = "Ksi¹¿ka opisuj¹ca tajniki kucia broni.";
	text[2] = "Pozwala poprawiæ swe umiejêtnoœci.";
	text[3] = "Wymaga dobrej znajomoœci poprzednich tomów.";
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
			b_logentry(TOPIC_TALENTSMITH,"Teraz wiem w jaki sposób maksymalnie ulepszyæ Wspania³y Miecz Pó³torarêczny oraz Flamberg.");
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
	Doc_PrintLines(ndocid,0,"Ta ksi¹¿ka zawiera sporo informacji na temat kucia broni.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Kowalstwo - poziom mistrzowski.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Wspania³y miecz pó³torarêczny:");
	Doc_PrintLines(ndocid,1,"Dodanie haków pomiêdzy jelcem, a z¹bkowan¹ czêœci¹ ostrza, zapewni dodatkow¹ ochronê oraz pozwoli zadaæ dodatkowe obra¿enia, ale jednoczeœnie zwiêkszy masê broni i uczyni j¹ mniej porêczn¹.");
	Doc_PrintLines(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"Flamberg:");
	Doc_PrintLines(ndocid,1,"Dobór odpowiedniej g³owicy dla trzonu rêkojeœci mo¿e sprawiæ, ¿e w niektórych sytuacjach broni¹ bêdzie mo¿na zadaæ wiêcej obra¿eñ, zwiêkszy to jednak ciê¿ar miecza.");
	Doc_PrintLines(ndocid,1,"");
	Doc_Show(ndocid);
};


instance ITWR_JAGD_UND_BEUTE(C_ITEM)
{
	name = "Myœliwy i ofiara";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 3000;
	visual = "ItWr_Book_02_02_2.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Myœliwy i ofiara";
	text[2] = "Ksi¹¿ka poœwiêcona jest sztuce";
	text[3] = "polowania z ³ukiem.";
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
		Print("£ucznictwo +3");
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
	Doc_PrintLines(ndocid,0,"Jego zapiski przetrwa³y ca³e wieki i po dziœ dzieñ uznawane s¹ za najznakomitsze kompendium wiedzy o polowaniu. Po d³ugich latach staræ na pó³nocnym pograniczu, niemal ka¿dy obywatel potrafi pos³ugiwaæ siê ³ukiem. Jednak sztuka polowania daleko wykracza poza podstawowe zasady strzelania z ³uku. Zwierzyna jest wszak p³ocha i nieprzewidywalna.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Polowanie z ³ukiem ma swe pocz¹tku w czasach staro¿ytnych. W ci¹gu ca³ych tysi¹cleci nie zasz³y w technikach ³owieckich wiêksze zmiany i tak ju¿ najprawdopodobniej pozostanie. Jakie czynniki wp³ywaj¹ tak naprawdê na skutecznoœæ pos³ugiwania siê ³ukiem? To w³aœnie rozpoznanie tych czynników czyni prawdziwego mistrza ³ucznictwa.");
	Doc_Show(ndocid);
};


instance ITWR_LEHREN_DER_GOETTER1(C_ITEM)
{
	name = "M¹droœæ bogów - Tom 1";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 75;
	visual = "ItWr_Book_02_01_1.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "M¹droœæ bogów";
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
	Doc_PrintLines(ndocid,0,"Wys³uchajcie s³ów bo¿ych, bo pragn¹ oni, byœcie ich wys³uchali. Przestrzegajcie praw bo¿ych, bo chc¹ oni, byœcie ich przestrzegali. Czcijcie kap³anów bo¿ych, bo oni s¹ wybrañcami ³aski...");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"S³owa Innosa: A gdybyœcie nie mogli ich poj¹c, nie odrzucajcie s³ów kap³anów, bo g³osz¹ oni moj¹ m¹droœæ. Gdy¿ ja jestem S³oñcem na niebie, œwiat³em i ¿yciem na Ziemi. A wszystko, co wrogiem jest S³oñca, jest i moim wrogiem, i zostanie wygnane do krainy wiecznej ciemnoœci.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"S³owa Adanosa: ¯yjcie i pracujcie, bo dzieñ stworzono po to, by m¹¿ móg³ ¿yæ i pracowaæ. Szukajcie wiedzy, byœcie mogli przekazaæ j¹ synom swoim, gdy¿ taka jest wola moja. Ale strze¿cie siê, bo cz³ek g³upi i leniwy zostanie wygnany do krainy wiecznej ciemnoœæi.");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"S³owa Beliara: A ktokolwiek wyst¹pi przeciw woli bo¿ej, ze mn¹ bêdzie mia³ do czynienia. Na jego cia³o ból zeœlê okrutny, a jego duch pójdzie ze mn¹ do krainy wiecznej ciemnoœci.");
	Doc_Show(ndocid);
};


instance ITWR_LEHREN_DER_GOETTER2(C_ITEM)
{
	name = "M¹droœæ bogów - Tom 2";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 75;
	visual = "ItWr_Book_02_01_1.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "M¹droœæ bogów";
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
	Doc_PrintLines(ndocid,0,"O zaraniu dziejów: Na pocz¹tku nie by³o dnia ani nocy, i ¿adne ¿ywe stworzenie nie przemierza³o œwiata. Wtedy pojawi³ siê Innos, a jego blask pada³ na Ziemiê. Innos obdarzy³ œwiat darem ¿ycia. Ale ¿adne stworzenie nie œmia³o spojrzeæ na twarz Innosa, wiêc dobry bóg stworzy³ S³oñce. Lecz mimo to, jasnoœæ by³a zbyt wielka, tote¿ Innos podzieli³ siê na dwoje i tak powsta³ Beliar. Beliar stworzy³ noc. Teraz cz³owiek móg³ wreszcie ¿yæ, lecz nie wiedzia³ jak. Dlatego Innos podzieli³ siê po raz wtóry i tak powsta³ Adanos. Adanos przyniós³ ludziom pomys³owoœæ i m¹droœæ.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Dlatego Innos postanowi³ zostawiæ ludzkoœæ pod opiek¹ Adanosa i uda³ siê na spoczynek. Lecz Beliar p³on¹³ z zazdroœci, gdy¿ ludzie bali siê go i nie oddawali mu czci. Tedy postanowi³ Beliar stworzyæ cz³owieka, który modli³by siê tylko do niego. Ale cz³owiek ów by³ jako wszyscy inni, i ba³ siê Beliara i nie oddawa³ mu czci. Bóg nocy rozz³oœci³ siê i zabi³ cz³owieka krzycz¹c: Dobrze! Bójcie siê mnie zatem, ale czeœæ oddacie mi, choæby po œmierci. Tymi s³owy ustanowi³ Beliar Œmieræ – kres ¿ywota ludzkiego.");
	Doc_Show(ndocid);
};


instance ITWR_LEHREN_DER_GOETTER3(C_ITEM)
{
	name = "M¹droœæ bogów - Tom 3";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 75;
	visual = "ItWr_Book_02_01_1.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "M¹droœæ bogów";
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
	Doc_PrintLines(ndocid,0,"Innos pozwoli³, by ludzie mogli go us³yszeæ i przemawiaæ do niego. Pozwoli³ im równie¿ czyniæ cuda i nazwa³ je magi¹. Dziêki magii, ludzie zaczêli zmieniaæ œwiat wedle swego upodobania, jedni m¹drze, inni g³upio. Widz¹c to, Innos zabra³ dar magii ludziom g³upim i pozostawi³ go w rêkach ludzi œwiat³ych. Obdarzy³ ich równie¿ innymi ³askami, czyni¹c swoim kap³anami i nadaj¹c im miano magów.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Ludzie czcili kap³anów Innosa i oddawali im czeœæ, ale wielu magów odwróci³o siê od Innosa i uciek³o siê pod opiekê jego boskiego brata – Adanosa. Kasta magów uleg³a rozbiciu. Ci, którzy pod¹¿ali za bogiem m¹droœci nazwali siebie magami Krêgu Wody. Wyznawcy Innosa nazywani zaœ byli Magami Ognia.");
	Doc_Show(ndocid);
};


instance ITWR_MYRTANAS_LYRIK(C_ITEM)
{
	name = "Poezja Myrtañska";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 80;
	visual = "ItWr_Book_02_02_1.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Poezja Myrtañska";
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
	Doc_PrintLine(ndocid,0,"    Pieœñ");
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
	Doc_PrintLines(ndocid,1,"Na pocz¹tku by³a moc, jak jasny œnieg bia³a,");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Dziœ niewielka cz¹stka dawnej chwa³y pozosta³a.");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Przypomina o jednoœci z dawny lat,");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"jak¿e ró¿nej od chciwoœci, któr¹ œwiat");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"nasz zdepta³ i odrzuci³ po wsze czasy,");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Nasz duch nie zdzier¿y³ ostatecznej próby");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"a po¿¹danie bêdzie Ÿród³em naszej zguby.");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Bo nie masz ju¿ jednoœci na tym œwiecie.");
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
	Doc_PrintLines(ndocid,0,"Najlepsz¹ rudê do wyrobu wszelkiego rodzaju orê¿a znaleŸæ mo¿na w kopalniach w dolinie Khorinis. Wykut¹ z niej broñ cechuje niebywa³a wytrzyma³oœæ. Pok³ady rudy wystêpuj¹ zwykle g³êboko pod ziemi¹, lecz g³upcem ten, kto nie podejmie trudu wydobycia jej na œwiat³o dzienne. Niewiele jest takich skarbów na œwiecie.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Magiczna broñ przebije ka¿dy pancerz i pogruchocze ka¿d¹ tarczê. Zaiste, królewski to orê¿ i królewsk¹ cenê trzeba zap³aciæ za choæby sztylet wykuty z tego szlachetnego kruszcu. Tako¿ surow¹ cenê p³ac¹ górnicy pracuj¹cy w kopalniach. Rudê nie³atwo oddzieliæ od skalnych pok³adów, tak jakby z ca³ych si³ walczy³a, byæ pozostaæ w ³onie matki Ziemi.");
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
	Doc_PrintLines(ndocid,0,"...ale sprytny Rhobar postanowi³ zaatakowaæ. Zebra³ swoje si³y i kaza³ im nêkaæ s³absz¹ praw¹ flankê nieprzyjaciela. Nie trac¹c chwili, król pchn¹³ najlepsze swe oddzia³y na wroga, i przebi³ siê przezeñ niczym miecz przecinaj¹cy mê¿a. Wojska Królewskie par³y zatem bez wytchnienia w stronê Varant. Rhobar wiedzia³ wszak, ¿e jedyna szansa ocalenia le¿y w rozbiciu armii nieprzyjaciela i niedopuszczeniu do po³¹czenia si³ Gellona i Lukkora. Najpierw jednak postanowi³ przeci¹æ ich linie zaopatrzenia...");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Najpierw jednak postanowi³ przeci¹æ ich linie zaopatrzenia...");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"...Gellon poleg³, a jego armia posz³a w rozsypkê. Ale Rhobar nie zamierza³ daæ przeciwnikowi chwili wytchnienia i rzuci³ swe si³y na pozosta³e oddzia³y wroga. Tu jednak Lukkor rzuci³ siê na królewskich znienacka i zada³ straszliwy cios wyczerpanym wojskom Rhobara...");
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
	Doc_PrintLines(ndocid,0,"Wojna by³a skoñczona. Varant straci³o swe morskie porty, tak potrzebne do zaopatrywania armii. Król Rhobar nie traci³ wiêcej czasu, lecz zostawi³ swych genera³ów, by ci rozprawili siê z niedobitkami nieprzyjaciela. Varrantczycy posiadali ju¿ tylko jedno ognisko oporu, zgromadzone wokó³ Lukkora, najpotê¿niejszego genera³a ca³ego narodu i umiejêtne zmieni³ pora¿kê w zwyciêstwo.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Ale teraz jego armia znalaz³a siê w potrzasku. Sytuacja wydawa³a siê beznadziejna, choæ jego wojska przewy¿sza³y królewskie si³¹ i wyposa¿eniem. Oto jeden z myrtañskich bohaterów, mê¿ny genera³ imieniem Lee, zwabi³ przeciwnika w pu³apkê. Na podmok³ej, bagiennej ziemi ciê¿ka kawaleria Lukkora nie mia³a ¿adnych szans ze zwinnymi ¿o³nierzami Lee. Zdziesi¹tkowane oddzia³y Varantu musia³y w koñcu uznaæ wy¿szoœæ przeciwnika. Lukkor zosta³ pokonany!");
	Doc_Show(ndocid);
};


instance GOETTERGABE(C_ITEM)
{
	name = "Dar bogów";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_01.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Dar bogów";
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
	Doc_PrintLine(ndocid,0,"Dar bogów");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Z dawien dawna cz³ek próbowa³ zg³êbiæ naturê i genezê sztuk magicznych. Jeno gdzie rozpocz¹æ takie poszukiwania? Czy magiê mo¿na w ogóle opisaæ? Pró¿no szukaæ równie niespójnego zjawiska we œwiecie: wszak magia jednako leczy i zabija, tworzy i niszczy.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Gdzie zatem szukaæ tej nieopisanej potêgi? Magia jest tym, czym jest – najpotê¿niejszym i najwspanialszym darem, jaki cz³owiek otrzyma³ od bogów. Baczcie jeno, by dar ów rych³o nie sta³ siê przekleñstwem, gdy¿ nieliczni bêd¹ w stanie zrozumieæ magiê i wykorzystaæ j¹ do w³asnych celów. Inni sami zostan¹ wykorzystani");
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
	Doc_PrintLines(ndocid,0,"Magia nie zamieszkuje w ciele samego magusa. Jest on raczej jako zmyœlny rzemieœlnik, a ona jako narzêdzie jego. Tako¿ pocz¹tkuj¹cy magus uczy siê jak on¹ moc okie³znaæ i kierowaæ ni¹ wedle swojej woli.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Jego duch nadaje owej mocy po¿¹dany kszta³t, ogniskuje j¹ i wreszcie uwalnia. W takich chwilach dusza magusa wznosi siê ponad nasz œwiat i spoziera na Drug¹ Stronê, gdzie stoi pa³ac potêgi, któr¹ on kszta³tuje i przekazuje.");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"Barthos z Laran");
	Doc_Show(ndocid);
};


instance MACHTVOLLE_KUNST(C_ITEM)
{
	name = "Potêga magii";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_03.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Potêga magii";
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
	Doc_PrintLine(ndocid,0,"Potêga magii");
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,-1,"font_10_book.tga");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Droga maga");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Zdolnoœæ ³¹czenia siê z bosk¹ moc¹, powoli wzrasta u maga. Pocz¹tkowo kie³kuje jak ma³e drzewko i trzeba o ni¹ dbaæ, by nie zmarnia³a. Ale jeœli to drzewko dojrzeje, zaœwieci pe³nym blaskiem.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Roœnie i roœnie, staje siê silniejsza z ka¿dym dniem. To jest to, co dzieje siê z pocz¹tkuj¹cym Magiem. Jego, pocz¹tkowo, bardzo ma³e si³y, z czasem rosn¹ i rozwijaj¹ siê. Doprowadziæ sw¹ moc do najwy¿szej doskona³oœci, jest œwiêtym obowi¹zkiem maga, bo drzewko to, posadzone zosta³o przez samych Bogów i Jest najwiêkszym darem jaki mo¿e otrzymaæ œmiertelnik.");
	Doc_Show(ndocid);
};


instance ELEMENTARE_ARCANEI(C_ITEM)
{
	name = "Arcanum ¯ywio³ów";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_04.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Arcanum ¯ywio³ów";
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
	Doc_PrintLine(ndocid,0,"Arcanum ¯ywio³ów");
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,-1,"font_10_book.tga");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Miejsce Magii w ziemskim porz¹dku.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Wiele badañ przeprowadzano, g³owi¹c siê nad zale¿noœci¹ magii od wszelakich ¿ywio³ów. W rezultacie przyjêto, i¿ jeœli ona – magia – ostatecznym, najpotê¿niejszym ¿ywio³em ze wszystkich. Wszak to dziêki niej magus mo¿e kszta³towaæ pozosta³e si³y natury wedle w³asnego upodobania.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Ka¿dy ¿ywio³, w swej najczystszej formie, ujawnia powi¹zania z magi¹. Oczywiœcie, naturalne manifestacje takich powi¹zañ nale¿¹ do rzadkoœci i s¹ skrzêtnie poszukiwane. Zdolnoœæ magusa do kontrolowania potêgi ¿ywio³ów stanowi ostateczny dowód, i¿ magia jest najczystszym i najwspanialszym dobrem obecnym w naszej egzystencji.");
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
	Doc_PrintLines(ndocid,0,"Œwiêta powinnoœæ Mêdrca");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"To potêga odró¿nia magusa od zwyk³ego œmiertelnika. W³adny wykorzystywaæ bosk¹ moc, magus wyjêty jest spod tych wszystkich praw natury, które dotycz¹ ludzi prostych i królów jednako.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Gdy magus osi¹gnie poziom, który pozwoli mu wykroczyæ poza granice ludzkiej egzystencji, wstêpuje do œwiata niedostêpnego zwyk³ym œmiertelnikom. Mo¿e prze³amywaæ bariery czasu i przestrzeni, i nawet Œmieræ – ostateczna bariera – nie jest mu straszna.");
	Doc_Show(ndocid);
};
instance Itwr_Magic_Cage(C_ITEM)
{
	name = "Magiczna pu³apka";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 500;
	visual = "ItWr_Book_02_02.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Magiczna pu³apka";
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
	Doc_PrintLine(ndocid,0,"Magiczna pu³apka");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Niewiele ludzi wie o tym. Lecz w magiczne runy mo¿na zaklinaæ ró¿ne surowce mineralne. Jednym z tego przyk³adów jest zaklêcie 'Magicznej pu³apki'. Aby je stworzyæ nale¿y po³¹czyæ magiczn¹ runê z stalow¹ sztab¹.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Oczywiœcie nale¿y te¿ wzmocniæ moc runy. Dlatego dodajemy równiesz sztabê magicznej rudy. Co ciekawe katalizatorem nie okazuje siê nic rzadkiego lecz na mój gust pospolitego. Mowa tu mianowicie o niebieskim bzie. Wystarczy polaæ kamieñ wyci¹giem z 15 niebieskich bzów.");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"Runy nale¿y u¿ywaæ z rozwag¹ Altus z Thorniary");
	Doc_Show(ndocid);
	PLAYER_TALENT_RUNES[SPL_MAGICCAGE] = TRUE;
};
