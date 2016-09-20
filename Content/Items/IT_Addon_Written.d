
instance ITWR_ADDON_HINWEIS_02(C_ITEM)
{
	name = "Wa¿na wiadomoœæ";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 250;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_hinweis_02;
	scemename = "MAP";
	description = name;
	text[0] = "Z gospody w obozie bandytów";
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
	Doc_PrintLines(ndocid,0,"Lou znikn¹³ na bagnie. Pewnikiem ze¿ar³y go wê¿e.");
	Doc_PrintLines(ndocid,0,"Co gorsza, wraz z nim znikn¹³ klucz do drzwi.");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Ten, kto go znajdzie, bêdzie móg³ zatrzymaæ rzeczy Lou.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Snaf");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_HEALTH_04(C_ITEM)
{
	name = "Mikstura lecznicza – przepis";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 1000;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_heilrezept_04;
	scemename = "MAP";
	description = "Pe³nia ¿ycia";
	text[2] = "Warzenie silnej mikstury.";
	text[3] = "Wymagana jest znajomoœæ eliksiru leczenia.";
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
			b_logentry(TOPIC_TALENTALCHEMY,"Do przygotowania mikstury leczniczej potrzebne s¹ 3 esencje lecznicze oraz 1 rdest polny.");
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
	Doc_PrintLines(ndocid,0,"Potrzebny jest jeden rdest polny, a tak¿e trzy esencje lecznicze.");
	Doc_PrintLines(ndocid,0,"Po³¹cz je zgodnie z przepisem na tworzenie eliksiru leczenia.");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Mikstura mo¿e zostaæ przygotowana jedynie przez alchemika, który zna przepis na eliksir leczenia.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_MANA_04(C_ITEM)
{
	name = "Mikstura many – przepis";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 1500;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_manarezept_04;
	scemename = "MAP";
	description = "Pe³nia many";
	text[2] = "Warzenie silnej mikstury.";
	text[3] = "Wymagana jest znajomoœæ eliksiru many.";
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
			b_logentry(TOPIC_TALENTALCHEMY,"Do przygotowania mikstury many potrzebne s¹ 3 esencje many oraz 1 rdest polny.");
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
	Doc_PrintLines(ndocid,0,"Potrzebny jest jeden rdest polny, a tak¿e trzy esencje many.");
	Doc_PrintLines(ndocid,0,"Po³¹cz je zgodnie z przepisem na tworzenie eliksiru many.");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Ta mikstura mo¿e byæ przygotowana jedynie przez alchemika, który zna przepis na eliksir many.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_BAPEHBE(C_ITEM)
{
	name = "Przepis na miksturê z leœnych jagód";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 975;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_rezept_bapehb9i;
	scemename = "MAP";
	description = "Uzdrawiaj¹cy wywar z leœnych jagód.";
	text[2] = "Aby przygotowaæ miksturê potrzebna jest";
	text[3] = "garœæ leœnych jagód i woda.";
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
			b_logentry(TOPIC_TALENTALCHEMY,"Na wywar potrzebne jest 10 leœnych jagód i butelka wody.");
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
	Doc_PrintLines(ndocid,0,"Uzdrawiaj¹cy wywar z leœnych jagód:");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Musisz mieæ 10 leœnych jagód i butelkê wody.");
	Doc_PrintLines(ndocid,0,"Gotowaæ dok³adnie mieszaj¹c.");
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
	name = "Przepis na eliksir many z ciemnych grzybów";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 1800;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_perm_mushroommp;
	scemename = "MAP";
	description = "Eliksir z ciemnych grzybów.";
	text[2] = "Aby uwarzyæ ten potê¿ny eliksir potrzeba";
	text[3] = "du¿ej iloœci ciemnych grzybów.";
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
			b_logentry(TOPIC_TALENTALCHEMY,"Aby przygotowaæ specjalny eliksir many, musisz mieæ co najmniej 50 ciemnych grzybów.");
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
	Doc_PrintLines(ndocid,0,"Przygotowanie eliksiru z ciemnych grzybów:");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Potrzeba piêædziesi¹t ciemnych grzybów.");
	Doc_PrintLines(ndocid,0,"Gotowaæ dok³adnie mieszaj¹c.");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"T¹ miksturê stworzyæ mo¿e tylko alchemik znaj¹cy przepis na eliksir many.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_PERM_PDEFMOSS(C_ITEM)
{
	name = "Moc Umar³ych";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 1100;
	visual = "ItWr_Book_02_01_2.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_perm_pdefmoss;
	scemename = "MAP";
	description = "Moc Umar³ych";
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
			b_logentry(TOPIC_TALENTALCHEMY,"Do przygotowania specjalnego eliksiru ochronnego, potrzebujemy mech cmentarny i kilka koœci szkieletu.");
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
	Doc_PrintLine(ndocid,0,"Moc Umar³ych");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Szkielety wspiera jakaœ magiczna si³a, wzmacnia je ... Badaj¹c ich szcz¹tki, odkry³em, ¿e po œmierci nie trac¹ swej mocy. Utrzymuje siê ona w nich przez d³ugi czas, nastêpnie stopniowo zanika rozchodz¹c siê w powietrzu.");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Eksperymenty ujawni³y, ¿e energia ta mo¿e byæ wykorzystana do wzmocnienia naszego koœæca. Jeœli zmieliæ koœci, wymieszaæ proszek z mchem cmentarnym i gotowaæ wed³ug receptury, uzyskamy substancjê zawieraj¹c¹ t¹ moc.");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"Pustelnik Kolgrim");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_HINWEIS_01(C_ITEM)
{
	name = "Wa¿na wiadomoœæ";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 250;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_hinweis_01;
	scemename = "MAP";
	description = name;
	text[0] = "Wisia³a w chacie na bagnie";
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
	Doc_PrintLines(ndocid,0,"Rzeczy z tych skrzyñ s¹ tylko na nag³e wypadki.");
	Doc_PrintLines(ndocid,0,"I s¹ dla nas WSZYSTKICH. Wiêc siêgajcie tam tylko wtedy, kiedy naprawdê musicie.");
	Doc_PrintLines(ndocid,0,"I nie bierzcie wiêcej, ni¿ potrzebujecie.");
	Doc_PrintLines(ndocid,0,"Uda siê, jeœli wszyscy bêdziemy siê tego trzymaæ.");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Fletcher");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_WILLIAM_01(C_ITEM)
{
	name = "Liœcik";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 250;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_william_01;
	scemename = "MAP";
	description = name;
	text[0] = "Ten list mia³ przy sobie rybak William.";
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
	Doc_PrintLines(ndocid,0,"Kiedy ksiê¿yc jest w pe³ni, stra¿nicy s¹ rozkojarzeni.");
	Doc_PrintLines(ndocid,0,"Przekradnij siê – ale b¹dŸ ostro¿ny!");
	Doc_PrintLines(ndocid,0,"Jeœli bêdziesz iœæ drewnian¹ tam¹, uda ci siê wydostaæ z bagna.");
	Doc_PrintLines(ndocid,0,"Obóz piratów jest po drugiej stronie doliny, daleko na zachodzie.");
	Doc_PrintLines(ndocid,0,"Kiedy tam dotrzesz, z ³atwoœci¹ uciekniesz ³odzi¹.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Ktoœ, kto dobrze Ci ¿yczy");
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
	Doc_PrintLines(ndocid,0,"Do przyrz¹dzenia tej mikstury potrzebna jest wydzielina z dwóch ¿¹de³ krwiopijców.");
	Doc_PrintLines(ndocid,0,"Dodaj do tego jeden ekstrakt many, a tak¿e esencjê lecznicz¹.");
	Doc_PrintLines(ndocid,0,"W koñcu dosyp do ca³oœci woreczek czerwonego pieprzu.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Tylko doœwiadczony alchemik wie, jak pobraæ wydzielinê z ¿¹d³a potrzebn¹ do zrobienia tej mikstury.");
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
	text[0] = "Ten papier by³ w kieszeni Angusa.";
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
	Doc_PrintLines(ndocid,0,"Za³atwcie dla nas ostatni ³adunek.");
	Doc_PrintLine(ndocid,0,"PrzywieŸcie go do jaskini. Tam siê spotkamy.");
	Doc_PrintLines(ndocid,0,"Zap³acê wam w z³ocie. Podwójn¹ cenê.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Tak w³aœnie zrobimy.");
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
	text[0] = "Le¿a³ w skrzyni Fortuna";
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
	Doc_PrintLines(ndocid,0,"...Te ³odygi mo¿na ca³kiem nieŸle zwijaæ, ale nie ma porównania z tym, co mieliœmy w obozie na bagnie.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Jeœli wezmê wyci¹g z dwóch ³odyg bagiennego ziela i zmieszam go z polnym rdestem, mo¿na to bêdzie porównaæ do zielonego nowicjusza.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Zielony nowicjusz ³agodzi wszystkie bóle i oczyszcza umys³.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_LOU_REZEPT(C_ITEM)
{
	name = "Przepis na M³ot Lou ";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 70;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = uselourezept;
	scemename = "MAP";
	description = name;
	text[0] = "Jak przygotowaæ M³ot Lou.";
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
	Doc_PrintLine(ndocid,0,"Przepis na M³ot Lou");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Sk³adniki mocnej nalewki:");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Bierzesz butelkê, a tak¿e dwie rzepy i spor¹ garœæ bagiennego ziela.");
	Doc_PrintLines(ndocid,0,"Dodajesz do tego k³y b³otnego wê¿a.");
	Doc_PrintLines(ndocid,0,"Mieszasz w butelce i gotujesz z dzia³k¹ rumu.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Na zdrowie.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Wed³ug starego œlepca lepiej nie wdychaæ wyziewów!");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_LOU_REZEPT2(C_ITEM)
{
	name = "Przepis na podwójny M³ot Lou";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 140;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = uselourezept2;
	scemename = "MAP";
	description = name;
	text[0] = "Jak przygotowaæ podwójny M³ot Lou.";
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
	Doc_PrintLine(ndocid,0,"Podwójny M³ot Lou");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"WeŸ stary, dobry M³ot Lou i przedestyluj go jeszcze raz.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Ten wywar mo¿e przyrz¹dziæ jedynie ktoœ doœwiadczony w destylacji.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Profan mo¿e od tego nie tylko oœlepn¹æ, ale te¿ ca³kiem wyzion¹æ ducha.");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_PIRATENTOD(C_ITEM)
{
	name = "Szybki œledŸ";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 250;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = userezeptpiratentod;
	scemename = "MAP";
	description = name;
	text[0] = "Przepis na przygotowanie Szybkiego œledzia.";
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
	Doc_PrintLine(ndocid,0,"Szybki œledŸ (mój przepis)");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Ma³y klinek dla porz¹dnych ch³opaków");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Jak zwykle, potrzebna bêdzie butelka. Wlej do niej jedn¹ porcjê rumu i dodaj œwie¿¹ rybê.");
	Doc_PrintLines(ndocid,0,"Kiedy tylko p³yn zrobi siê ¿ó³ty, wyjmij rybê i dopraw garœci¹ soli");
	Doc_PrintLines(ndocid,0,"œwie¿o zebranego zêbatego ziela.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Uwa¿aj! Ta nalewka naprawdê stawia na nogi.");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance FAKESCROLL_ADDON(C_ITEM)
{
	name = "Kawa³ek papieru";
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
	name = "Przywo³anie Quarhodrona";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 250;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = usesummonancientghost;
	scemename = "MAP";
	description = name;
	text[0] = "Za pomoc¹ tego zwoju mo¿esz przywo³aæ Quarhodrona.";
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
	text[1] = "Stary projekt jakiegoœ pancerza.";
	text[3] = "Wymagana zaawansowana znajomoœæ p³atnerstwa.";
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
			b_logentry(TOPIC_TALENTSMITH,"Znalaz³em jakiœ stary projekt zbroi, przyda³o by siê go wypróbowaæ.");
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
	description = "Projekt skórzanego pancerza z trola";
	text[1] = "Wyjaœnia tajniki tworzenia pancerza z trola.";
	text[3] = "Wymagany podstawowy poziom p³atnerstwa.";
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
			b_logentry(TOPIC_TALENTSMITH,"Teraz mogê zrobiæ pancerz ze skóry trolla.");
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
	text[3] = "Wymagany mistrzowski poziom p³atnerstwa.";
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
			b_logentry(TOPIC_TALENTSMITH,"Teraz mogê wykuæ zbrojê z czarnej rudy.");
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
	description = "Projekt pancerza myrtañskiego najemnika";
	text[1] = "Zawiera instrukcje wykucia myrtañskiego pancerza.";
	text[3] = "Wymagana zaawansowana znajomoœæ p³atnerstwa.";
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
			b_logentry(TOPIC_TALENTSMITH,"Teraz mogê wykuæ myrtañski pancerz.");
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
	name = "Projekt królewskiego pancerza";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 3950;
	visual = "ArmorCrft_05.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_w2knightcrft_01;
	scemename = "MAP";
	description = "Schemat vengardzkiego pancerza ";
	text[1] = "Pancerz u¿ywany przez gwardiê królewsk¹.";
	text[2] = "Prawdziwe dzie³o sztuki.";
	text[3] = "Wymagana zaawansowana znajomoœæ p³atnerstwa.";
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
			b_logentry(TOPIC_TALENTSMITH,"Teraz mogê wykuæ królewski pancerz.");
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
	name = "Projekt wzmocnienia królewskiego pancerza.";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 1150;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_w2_grd1to2;
	scemename = "MAP";
	description = name;
	text[1] = "Szczegó³owo opisuje sposób usprawnienia tej zbroi.";
	text[3] = "Wymagana zaawansowana znajomoœæ p³atnerstwa.";
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
			b_logentry(TOPIC_TALENTSMITH,"Teraz potrafiê usprawniæ królewski pancerz, wzmacniaj¹c ochronê ramion i nóg.");
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
	Doc_PrintLine(ndocid,0,"Królewski pancerz");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Stalowe naramienniki:");
	Doc_PrintLine(ndocid,0,"    2x sztaba stali, skóra.");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Stalowe nagolenniki:");
	Doc_PrintLine(ndocid,0,"    2x sztaba stali, skóra.");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_W2KNIGHTCRFT_GRD3TO4(C_ITEM)
{
	name = "Projekt wzmocnienia królewskiego pancerza.";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 2300;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_w2_grd3to4;
	scemename = "MAP";
	description = name;
	text[1] = "Opisuje dalsze usprawnienia tej zbroi.";
	text[3] = "Wymagana wiedza na temat poprzednich usprawnieñ";
	text[4] = "oraz mistrzowska znajomoœæ p³atnerstwa.";
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
			b_logentry(TOPIC_TALENTSMITH,"Teraz mogê znacz¹co usprawniæ królewski pancerz wzmacniaj¹c ochronê przy sercu, d³oniach i stopach.");
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
	Doc_PrintLine(ndocid,0,"Królewski pancerz");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Dodatkowe p³yty stali do ochrony gard³a i serca, oraz okute stal¹ buty maj¹ce chroniæ stopy:");
	Doc_PrintLine(ndocid,0,"    4x sztaba stali, skóra.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Stalowe rêkawice chroni¹ce d³onie:");
	Doc_PrintLine(ndocid,0,"     4x sztaba stali, 3x skóra.");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};


instance ITWR_ADDON_W2KNIGHTCRFT_GRD5TO7(C_ITEM)
{
	name = "Projekt wzmocnienia królewskiego pancerza.";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 3450;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_w2_grd5to7;
	scemename = "MAP";
	description = name;
	text[1] = "Pozwala maksymalnie wzmoniæ królewski pancerz.";
	text[3] = "Wymagana wiedza na temat poprzednich usprawnieñ";
	text[4] = "oraz mistrzowska znajomoœæ p³atnerstwa.";
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
			b_logentry(TOPIC_TALENTSMITH,"Teraz mogê maksymalnie usprawniæ królewski pancerz dodaj¹c dodatkow¹ ochronê dla ramion, ³okci i stóp.");
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
	Doc_PrintLine(ndocid,0,"Królewski pancerz");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Stalowe na³okietniki:");
	Doc_PrintLine(ndocid,0,"    3x sztaba stali.");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Stalowa nakolanniki:");
	Doc_PrintLine(ndocid,0,"    4x sztaba stali, 2x skóra.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Usprawnione naramienniki chroni¹ce szyjê i obojczyk:");
	Doc_PrintLine(ndocid,0,"    5x sztaba stali, 2x skóra.");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};

