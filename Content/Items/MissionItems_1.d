
instance ITKE_XARDAS(C_ITEM)
{
	name = NAME_KEY;
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = VALUE_KEY_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Klucz do skrzyni";
	text[3] = "Xardasa.";
};

instance ITWR_CANTHARS_KOMPROBRIEF_MIS(C_ITEM)
{
	name = "List";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_canthars_komprobrief;
	scemename = "MAP";
	description = "List Canthara do Sary.";
};


func void use_canthars_komprobrief()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,-1,FONT_BOOK);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0," Ostatnie ostrze�enie");
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0," Wielokrotnie ju� ostrzega�em ci�");
	Doc_PrintLine(ndocid,0," w niezwykle przyjazny spos�b,");
	Doc_PrintLine(ndocid,0," �e bro� zam�wiona u ciebie tydzie�");
	Doc_PrintLine(ndocid,0," temu jest mi wyj�tkowo pilnie");
	Doc_PrintLine(ndocid,0," potrzebna.");
	Doc_PrintLine(ndocid,0," Je�li szybko si� nie odezwiesz w tej");
	Doc_PrintLine(ndocid,0," sprawie, to zmusisz mnie do zmiany");
	Doc_PrintLine(ndocid,0," sposobu, w jaki ci� traktuj�. Mam");
	Doc_PrintLine(ndocid,0," nadziej�, �e si� dobrze rozumiemy!!!!");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"     Onar");
	Doc_PrintLine(ndocid,0,"");
	Doc_SetMargins(ndocid,-1,200,50,50,50,1);
	Doc_Show(ndocid);
	
};


instance ITMW_2H_ROD(C_ITEM)
{
	name = "Miecz dwur�czny Roda";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD;
	material = MAT_METAL;
	value = VALUE_SLD2HSCHWERT;
	damagetotal = DAMAGE_ROD;
	damagetype = DAM_EDGE;
	range = RANGE_SLD2HSCHWERT;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = CONDITION_ROD;
	visual = "ItMw_035_2h_sld_sword_01.3DS";
	description = name;
	text[1] = NAME_DAMAGE;
	count[1] = damagetotal;
	text[2] = NAME_STR_NEEDED;
	count[2] = cond_value[2];
	text[4] = NAME_TWOHANDED;
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITMI_CORAGONSSILBER(C_ITEM)
{
	name = "Srebro Coragona";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = VALUE_SILVERCUP;
	visual = "ItMi_SilverCup.3DS";
	material = MAT_METAL;
	description = name;
	text[3] = "";
	text[4] = "";
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITMI_THEKLASPAKET(C_ITEM)
{
	name = "Paczka Thekli";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION | ITEM_MULTI;
	value = 0;
	visual = "ItMi_Packet.3ds";
	scemename = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = use_theklaspacket;
	description = name;
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void use_theklaspacket()
{
	CreateInvItems(hero,itpl_mana_herb_01,3);
	CreateInvItems(hero,itpl_health_herb_02,1);
	CreateInvItems(hero,itpl_speed_herb_01,1);
	CreateInvItems(hero,itpl_blueplant,2);
	Print(PRINT_GOTPLANTS);
};


instance ITMI_MARIASGOLDPLATE(C_ITEM)
{
	name = "Ci�ki, z�oty talerz";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = VALUE_GOLDPLATE;
	visual = "ItMi_GoldPlate.3DS";
	material = MAT_METAL;
	description = name;
	text[2] = "Ozdobiono go stylizowanymi";
	text[3] = "imionami Onara i Marii.";
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRI_VALENTINOSRING(C_ITEM)
{
	name = NAME_RING;
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_RING;
	value = VALUE_RI_PROTEDGE;
	visual = "ItRi_Prot_Edge_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = equip_valentinosring;
	on_unequip = unequip_valentinosring;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Pier�cie� Valentina";
	text[2] = NAME_PROT_EDGE;
	count[2] = RI_PROTEDGE;
	text[5] = NAME_VALUE;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_RING_STANDARD;
	inv_rotz = INVCAM_Z_RING_STANDARD;
	inv_rotx = INVCAM_X_RING_STANDARD;
};


func void equip_valentinosring()
{
	self.protection[PROT_EDGE] += RI_PROTEDGE;
	self.protection[PROT_BLUNT] += RI_PROTEDGE;
	ATR_EDGEDEFENSE = self.protection[PROT_EDGE];
	Npc_SetTalentSkill(self,NPC_TALENT_EDGEDEFENSE,ATR_EDGEDEFENSE);
};

func void unequip_valentinosring()
{
	self.protection[PROT_EDGE] -= RI_PROTEDGE;
	self.protection[PROT_BLUNT] -= RI_PROTEDGE;
	ATR_EDGEDEFENSE = self.protection[PROT_EDGE];
	Npc_SetTalentSkill(self,NPC_TALENT_EDGEDEFENSE,ATR_EDGEDEFENSE);
};


instance ITKE_DEXTER(C_ITEM)
{
	name = NAME_KEY;
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = VALUE_KEY_01;
	visual = "ItKe_Key_03.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Klucz do skrzyni";
	text[3] = "Dextera.";
};

instance ITWR_KRAEUTERLISTE(C_ITEM)
{
	name = "Lista";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_kraeuterliste;
	scemename = "MAP";
	description = "Lista zi� Constantina.";
};


func void use_kraeuterliste()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,-1,FONT_BOOK);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Zio�a alchemiczne");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Ro�lina lecznicza");
	Doc_PrintLine(ndocid,0,"Ziele lecznicze");
	Doc_PrintLine(ndocid,0,"Korze� leczniczy");
	Doc_PrintLine(ndocid,0,"Ognista pokrzywa");
	Doc_PrintLine(ndocid,0,"Ogniste ziele");
	Doc_PrintLine(ndocid,0,"Ognisty korze�");
	Doc_PrintLine(ndocid,0,"Goblinie jagody");
	Doc_PrintLine(ndocid,0,"Smoczy korze�");
	Doc_PrintLine(ndocid,0,"Z�bate ziele");
	Doc_PrintLine(ndocid,0,"Rdest polny");
	Doc_PrintLine(ndocid,0,"Szczaw kr�lewski");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Niech ro�liny zbiera dla ciebie kandydat na ucznia - przekonasz si�, czy si� do czego� nadaje. ");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Z powa�aniem, Zuris.");
	Doc_SetMargins(ndocid,-1,200,50,50,50,1);
	Doc_Show(ndocid);
};


instance ITWR_MANAREZEPT(C_ITEM)
{
	name = "Receptura";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 20;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_manarezept;
	scemename = "MAP";
	description = "Receptura esencji magicznej.";
};


func void use_manarezept()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,-1,FONT_BOOK);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Mikstury magiczne");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Do warzenia mikstur magicznych alchemik potrzebuje - opr�cz umiej�tno�ci - tak�e:");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Ognistej pokrzywy");
	Doc_PrintLine(ndocid,0,"Ognistego ziela");
	Doc_PrintLine(ndocid,0,"Ognistego korzenia");
	Doc_PrintLines(ndocid,0,"oraz");
	Doc_PrintLine(ndocid,0,"Rdestu polnego");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Mistrz Neoras");
	Doc_SetMargins(ndocid,-1,200,50,50,50,1);
	Doc_Show(ndocid);
};


instance ITWR_PASSIERSCHEIN(C_ITEM)
{
	name = "Przepustka";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 50;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = usepassierschein;
	scemename = "MAP";
	description = name;
	text[3] = "Dzi�ki tym dokumentom nie";
	text[4] = "zatrzymaj� mnie stra�nicy miejscy.";
};


func void usepassierschein()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,-1,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"     Przepustka");
	Doc_PrintLine(ndocid,0,"        Khorinis    ");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLines(ndocid,0,"Ten dokument uprawnia jego posiadacza do swobodnego poruszania si� po dolnej cz�ci Khorinis przez czas nieograniczony.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"    Larius,");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"    gubernator kr�lewski");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_SetMargins(ndocid,-1,200,50,50,50,1);
	Doc_Show(ndocid);
};


instance ITMI_HERBPAKET(C_ITEM)
{
	name = "Paczka ziela";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 200;
	visual = "ItMi_Packet.3ds";
	material = MAT_LEATHER;
	description = name;
	text[2] = "Ci�ka, lepi�ca si� paczka,";
	text[3] = "�mierdz�ca bagiennym zielem.";
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITKE_STORAGE(C_ITEM)
{
	name = "Klucz do magazynu";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = VALUE_KEY_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Klucz do magazynu";
	text[3] = "portowego.";
};


const int HP_HERING = 20;

instance ITFO_SMELLYFISH(C_ITEM)
{
	name = "�led�";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 15;
	visual = "ItFo_Fish.3DS";
	material = MAT_LEATHER;
	scemename = "FOOD";
	on_state[0] = use_smellyfish;
	description = name;
	text[1] = NAME_BONUS_HP;
	count[1] = HP_HERING;
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void use_smellyfish()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_HERING);
};


instance ITFO_HALVORFISH_MIS(C_ITEM)
{
	name = "Dziwna ryba";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItFo_Fish.3DS";
	material = MAT_LEATHER;
	scemename = "MAPSEALED";
	on_state[0] = use_halvorfish;
	description = "Dziwnie wygl�daj�ca ryba.";
	text[2] = "Z t� ryb� jest co� nie tak.";
	text[3] = "Wygl�da, jakby kto� j� pozszywa�...";
};


func void use_halvorfish()
{
	CreateInvItems(hero,itwr_halvormessage,1);
	Print(PRINT_FISHLETTER);
};


instance ITWR_HALVORMESSAGE(C_ITEM)
{
	name = "�mierdz�ca notatka";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = usehalvormessage;
	scemename = "MAP";
	description = name;
	text[2] = "W rybie by�a schowana ta notatka.";
};


func void usehalvormessage()
{
	var int ndocid;
	KNOWS_HALVOR = TRUE;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,-1,FONT_BOOK);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"    Nie wychylajcie si�! ");
	Doc_PrintLine(ndocid,0,"    Stra� zaczyna co� podejrzewa�.");
	Doc_PrintLine(ndocid,0,"    Nic nie r�bcie, dop�ki zn�w si� nie odezw�!");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"        Halvor");
	Doc_Show(ndocid);
};


instance ITMW_ALRIKSSWORD_MIS(C_ITEM)
{
	name = "Miecz Alrika";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_MISSION | ITEM_SWD;
	material = MAT_METAL;
	value = VALUE_ALRIK;
	damagetotal = DAMAGE_ALRIK;
	damagetype = DAM_EDGE;
	range = RANGE_ALRIK;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = CONDITION_ALRIK;
	visual = "ItMw_025_1h_Sld_Sword_01.3DS";
	on_equip = equip_1h_10;
	on_unequip = unequip_1h_10;
	description = name;
	text[1] = NAME_DAMAGE;
	count[1] = damagetotal;
	text[2] = NAME_STR_NEEDED;
	count[2] = cond_value[2];
	text[3] = NAME_ADDON_BONUS_1H;
	count[3] = WAFFENBONUS_10;
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITWR_VATRASMESSAGE(C_ITEM)
{
	name = "Zapiecz�towana wiadomo��";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_02.3DS";
	material = MAT_LEATHER;
	on_state[0] = usevatrasmessage;
	scemename = "MAPSEALED";
	description = name;
	text[2] = "Wiadomo�� od Vatrasa";
	text[3] = "do Mag�w Ognia.";
};


func void usevatrasmessage()
{
	var int ndocid;
	CreateInvItems(self,itwr_vatrasmessage_open,1);
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,-1,FONT_BOOK);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"Drogi Isgarocie,");
	Doc_PrintLines(ndocid,0,"wyczuwam coraz mocniej obecno�� nie znanej nam si�y.");
	Doc_PrintLines(ndocid,0,"Czy to mo�liwe, �e s�ugi Beliara nadchodz�? By� mo�e si� myl�,");
	Doc_PrintLines(ndocid,0,"s�dz� jednak, �e Ojciec Pyrokar powinien wzi�� sprawy w swoje r�ce. ");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Oby nasze mod�y zosta�y wys�uchane.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Vatras");
	Doc_Show(ndocid);
};


instance ITWR_VATRASMESSAGE_OPEN(C_ITEM)
{
	name = "Wiadomo��";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = usevatrasmessageopen;
	scemename = "MAP";
	description = name;
	text[2] = "Wiadomo�� od Vatrasa";
	text[3] = "do Mag�w Ognia.";
	text[4] = "Piecz�� zosta�a z�amana.";
};


func void usevatrasmessageopen()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,-1,FONT_BOOK);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"Drogi Isgarocie,");
	Doc_PrintLines(ndocid,0,"wyczuwam coraz mocniej obecno�� nie znanej nam si�y.");
	Doc_PrintLines(ndocid,0,"Czy to mo�liwe, �e s�ugi Beliara nadchodz�? By� mo�e si� myl�,");
	Doc_PrintLines(ndocid,0,"s�dz� jednak, �e Ojciec Pyrokar powinien wzi�� sprawy w swoje r�ce. ");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Oby nasze mod�y zosta�y wys�uchane.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Vatras");
	Doc_Show(ndocid);
};


instance ITKE_HOTEL(C_ITEM)
{
	name = "Klucz do pokoju";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Klucz do izby w";
	text[3] = "gospodzie.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_THIEFGUILDKEY_MIS(C_ITEM)
{
	name = "Zardzewia�y klucz";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Klucz ten nie opar� si� dzia�aniu s�onej, morskiej wody.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_THIEFGUILDKEY_HOTEL_MIS(C_ITEM)
{
	name = "Zardzewia�y klucz";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Klucz do piwnicy w gospodzie.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_INNOS_MIS(C_ITEM)
{
	name = NAME_KEY;
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Klucz do portalu klasztoru";
	text[3] = "Innosa.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_KLOSTERSCHATZ(C_ITEM)
{
	name = NAME_KEY;
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = VALUE_KEY_01;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Klucz do skarbca";
	text[3] = "klasztornego.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_KLOSTERSTORE(C_ITEM)
{
	name = NAME_KEY;
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = VALUE_KEY_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Klucz do spi�arni";
	text[3] = "klasztornej.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_KDFPLAYER(C_ITEM)
{
	name = NAME_KEY;
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = VALUE_KEY_01;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Klucz do komnaty";
	text[3] = "w klasztorze.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_KLOSTERBIBLIOTHEK(C_ITEM)
{
	name = NAME_KEY;
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = VALUE_KEY_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Klucz do biblioteki";
	text[3] = "klasztornej.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITFO_SCHAFSWURST(C_ITEM)
{
	name = "Barania kie�basa";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = VALUE_SAUSAGE;
	visual = "ItFo_Sausage.3DS";
	material = MAT_LEATHER;
	scemename = "FOOD";
	on_state[0] = use_schafswurst;
	description = name;
	text[1] = NAME_BONUS_HP;
	count[1] = HP_SAUSAGE;
	text[5] = NAME_VALUE;
	count[5] = VALUE_SAUSAGE;
};


func void use_schafswurst()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_SAUSAGE);
};


instance ITPO_PERM_LITTLEMANA(C_ITEM)
{
	name = NAME_TRANK;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = 150;
	visual = "ItPo_Perm_Mana.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_littlemana;
	scemename = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_MANAPOTION";
	description = "Esencja ducha";
	text[1] = NAME_BONUS_MANAMAX;
	count[1] = 3;
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void useitpo_littlemana()
{
	b_raiseattribute(self,ATR_MANA_MAX,3);
	Npc_ChangeAttribute(self,ATR_MANA,3);
};


instance HOLY_HAMMER_MIS(C_ITEM)
{
	name = "�wi�ty m�ot";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_MISSION | ITEM_2HD_AXE;
	material = MAT_METAL;
	value = VALUE_HOLYHAMMER;
	owner = nov_608_garwig;
	damagetotal = DAMAGE_HOLYHAMMER;
	damagetype = DAM_BLUNT;
	range = RANGE_HOLYHAMMER;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = 5;
	visual = "ItMw_030_2h_kdf_hammer_01.3DS";
	description = name;
	text[0] = NAME_TWOHANDED;
	text[1] = "Obra�enia:              ??";
	text[3] = "Wymagana si�a:          ??";
	text[5] = "Warto��:  niemo�liwa do ustalenia";
};

instance ITKE_MAGICCHEST(C_ITEM)
{
	name = "Stary klucz";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION | ITEM_MULTI;
	value = 0;
	visual = "ItKe_Key_02.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Stary, �elazny klucz.";
	text[3] = "Prawdopodobnie otwiera";
	text[4] = "jak�� k��dk�.";
};

instance ITWR_PASSAGE_MIS(C_ITEM)
{
	name = "Propozycja Lee dla paladyn�w";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = usepassage;
	scemename = "MAP";
	description = name;
	text[3] = "Dzi�ki tej wiadomo�ci by� mo�e uda";
	text[4] = "mi si� porozmawia� z Lordem Hagenem.";
};


func void usepassage()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,-1,FONT_BOOK);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Szanowny Lordzie Hagenie,");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"obydwaj zdajemy sobie spraw� z sytuacji, wi�c przejd� od razu do rzeczy:");
	Doc_PrintLines(ndocid,0,"uniewinnij mnie i moich ludzi wobec Jego Wysoko�ci i samego Innosa.");
	Doc_PrintLines(ndocid,0,"W zamian zobowi�zujemy si� pom�c Ci w obronie miasta i okolicznych ziem.");
	Doc_PrintLines(ndocid,0,"Osobi�cie dopilnuj� te�, by moi ludzie trzymali si� z dala od tutejszych farm - naturalnie opr�cz zagr�d Onara, gdzie nadal b�dziemy stacjonowali.");
	Doc_PrintLines(ndocid,0,"Wiem, �e statek, kt�rym zamierzacie wr�ci� na kontynent, mo�e zabra� kilka dodatkowych os�b. Gdy b�dziecie rusza� w drog�, chc� pop�yn�� z wami.");
	Doc_PrintLines(ndocid,0,"Zaklinam ci�: rozwa� dobrze moje s�owa i podejmij rozs�dn� decyzj�.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Podpisano   Genera� Lee");
	Doc_SetMargins(ndocid,-1,200,50,50,50,1);
	Doc_Show(ndocid);
};


instance ITWR_BANDITLETTER_MIS(C_ITEM)
{
	name = "Wiadomo��";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = usebanditletter;
	scemename = "MAP";
	description = name;
	text[3] = "";
	text[4] = "";
};


func void usebanditletter()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"Zatrzymujcie wszystkich, kt�rzy");
	Doc_PrintLine(ndocid,0,"przyjd� od strony g�r.");
	Doc_PrintLine(ndocid,0,"Je�li kto� przekroczy prze��cz,");
	Doc_PrintLine(ndocid,0,"b�dzie to prawdopodobnie pewien");
	Doc_PrintLine(ndocid,0,"starzec. Nie dajcie si�");
	Doc_PrintLine(ndocid,0,"zwie�� - to niebezpieczny mag.");
	Doc_PrintLine(ndocid,0,"Miejcie na niego oko.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"Mo�e si� z nim skontaktowa� cz�owiek,");
	Doc_PrintLine(ndocid,0,"kt�rego szukamy.");
	Doc_PrintLine(ndocid,0,"Wraz z tym listem otrzymujecie");
	Doc_PrintLine(ndocid,0,"30 sztuk z�ota.");
	Doc_PrintLine(ndocid,0,"Kolejne 30 otrzyma osoba,");
	Doc_PrintLine(ndocid,0,"kt�ra go zabije.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"G�ow� przynie�cie do starej kopalni.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,".....D.");
	Doc_PrintLine(ndocid,0,"");
	Doc_SetMargins(ndocid,-1,200,50,50,50,1);
	Doc_Show(ndocid);
};


instance ITWR_POSTER_MIS(C_ITEM)
{
	name = "List go�czy";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MULTI | ITEM_MISSION;
	value = 0;
	visual = "ItWr_Gesucht_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = useposter;
	scemename = "MAP";
	description = name;
	text[3] = "Moja podobizna!";
	text[4] = "";
};


func void useposter()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"Gesucht.TGA",0);
	Doc_Show(ndocid);
};


instance ITKE_BANDIT(C_ITEM)
{
	name = "Klucz do kufra";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = VALUE_KEY_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Ten klucz nale�a�";
	text[3] = "do bandyty.";
};

instance ITRW_BOW_L_03_MIS(C_ITEM)
{
	name = "�uk my�liwski";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW | ITEM_MISSION;
	material = MAT_WOOD;
	value = VALUE_JAGDBOGEN;
	damagetotal = DAMAGE_JAGDBOGEN;
	damagetype = DAM_POINT;
	munition = itrw_arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_JAGDBOGEN;
	visual = "ItRw_Bow_L_03.mms";
	description = name;
	text[2] = NAME_DAMAGE;
	count[2] = damagetotal;
	text[3] = NAME_DEX_NEEDED;
	count[3] = cond_value[2];
	text[4] = "�uk my�liwski Bospera.";
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRI_PROT_POINT_01_MIS(C_ITEM)
{
	name = "Pier�cie� Constantina";
	mainflag = ITEM_KAT_MAGIC;
	flags = ITEM_RING | ITEM_MISSION;
	value = VALUE_RI_PROTPOINT;
	visual = "ItRi_Prot_Point_01.3ds";
	visual_skin = 0;
	material = MAT_METAL;
	on_equip = equip_itri_prot_point_01_mis;
	on_unequip = unequip_itri_prot_point_01_mis;
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Drewniana ochrona";
	text[2] = NAME_PROT_POINT;
	count[2] = RI_PROTPOINT;
	text[5] = NAME_VALUE;
	count[5] = value;
	inv_zbias = INVCAM_ENTF_RING_STANDARD;
	inv_rotz = INVCAM_Z_RING_STANDARD;
	inv_rotx = INVCAM_X_RING_STANDARD;
};


func void equip_itri_prot_point_01_mis()
{
	self.protection[PROT_POINT] += RI_PROTPOINT;
};

func void unequip_itri_prot_point_01_mis()
{
	self.protection[PROT_POINT] -= RI_PROTPOINT;
};


instance ITMI_EDDASSTATUE(C_ITEM)
{
	name = "Pos��ek Innosa";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI | ITEM_MISSION;
	value = 50;
	visual = "ItMi_InnosStatue.3DS";
	material = MAT_METAL;
	description = name;
	text[2] = "Innosie, W�adco Prawo�ci,";
	text[3] = "pob�ogos�aw mnie,";
	text[4] = "i chro� przed wrogiem.";
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITKE_EVT_CRYPT_01(C_ITEM)
{
	name = "Stary mosi�ny klucz";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = VALUE_KEY_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Klucz ze szkieletu w pomieszczeniu 1";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_EVT_CRYPT_02(C_ITEM)
{
	name = "Stary mosi�ny klucz";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = VALUE_KEY_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Klucz ze szkieletu w pomieszczeniu 2";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_EVT_CRYPT_03(C_ITEM)
{
	name = "Stary mosi�ny klucz";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = VALUE_KEY_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Klucz ze szkieletu w pomieszczeniu 3";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};


const int VALUE_ITAR_PAL_SKEL = 500;

instance ITAR_PAL_SKEL(C_ITEM)
{
	name = "Stara rycerska zbroja";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 100;
	protection[PROT_BLUNT] = 100;
	protection[PROT_POINT] = 100;
	protection[PROT_FIRE] = 50;
	protection[PROT_MAGIC] = 50;
	value = value_itar_pal_skel;
	wear = WEAR_TORSO;
	visual = "ItAr_Pal_H.3ds";
	visual_change = "Armor_Pal_Skeleton.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[1] = NAME_PROT_EDGE;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_KDF_SKEL(C_ITEM)
{
	name = "";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 50;
	protection[PROT_BLUNT] = 50;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 50;
	protection[PROT_MAGIC] = 50;
	value = VALUE_ITAR_PAL_SKEL;
	wear = WEAR_TORSO;
	visual = "ItAr_KdF_L.3ds";
	visual_change = "Armor_KDF_L_SKE.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[1] = NAME_PROT_EDGE;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_BM_SKEL(C_ITEM)
{
	name = "";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 60;
	protection[PROT_BLUNT] = 60;
	protection[PROT_POINT] = 30;
	protection[PROT_FIRE] = 20;
	protection[PROT_MAGIC] = 70;
	value = VALUE_ITAR_PAL_SKEL;
	wear = WEAR_TORSO;
	visual = "ItAr_BM_L.3ds";
	visual_change = "Armor_BM_SKE.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[1] = NAME_PROT_EDGE;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITKE_VALENTINO(C_ITEM)
{
	name = "Klucz do kufra";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = VALUE_KEY_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Klucz do kufra";
	text[3] = "Valentina.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_BUERGER(C_ITEM)
{
	name = "Klucz do kufra";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = VALUE_KEY_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Le�a� na parapecie.";
	text[3] = "";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_RICHTER(C_ITEM)
{
	name = "Klucz do kufra";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = VALUE_KEY_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Klucz do kufra";
	text[3] = "s�dziego.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_SALANDRIL(C_ITEM)
{
	name = "Klucz do kufra";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = VALUE_KEY_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "alchemika Salandrila.";
	text[3] = "";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_PALADINTRUHE(C_ITEM)
{
	name = "Klucz do kufra";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = VALUE_KEY_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Niewielki mosi�ny klucz";
	text[3] = "z siedziby paladyn�w.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_THIEFTREASURE(C_ITEM)
{
	name = NAME_KEY;
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION | ITEM_MULTI;
	value = VALUE_KEY_01;
	visual = "ItKe_Key_03.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Ma�y klucz.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITKE_FINGERS(C_ITEM)
{
	name = NAME_KEY;
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = VALUE_KEY_01;
	visual = "ItKe_Key_03.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "Zardzewia�y klucz do drzwi";
	text[3] = "z kana��w.";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITWR_SCHULDENBUCH(C_ITEM)
{
	name = "Ksi�ga D�ug�w";
	mainflag = ITEM_KAT_DOCS;
	flags = 0;
	value = 100;
	visual = "ItWr_Book_02_05.3ds";
	material = MAT_LEATHER;
	scemename = "MAP";
	description = "Ksi�ga D�ug�w Lehmara.";
	text[5] = NAME_VALUE;
	count[5] = value;
	on_state[0] = useschuldbuch;
};


func void useschuldbuch()
{
	var int ndocid;
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,2);
	Doc_SetPage(ndocid,0,"Book_Brown_L.tga",0);
	Doc_SetPage(ndocid,1,"Book_Brown_R.tga",0);
	Doc_SetMargins(ndocid,0,275,20,30,20,1);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Umowy i d�ugi");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Ja, Mistrz Thorben, stolarz z Khorinis, jestem winien sz.p. Lehmarowi 200 monet.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"          Thorben");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"Ja, Coragon, w�a�ciciel gospody w Khorinis, jestem winien sz.p. Lehmarowi 150 monet.");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"          Coragon");
	Doc_PrintLine(ndocid,0,"");
	Doc_SetMargins(ndocid,-1,30,20,275,20,1);
	Doc_SetFont(ndocid,1,FONT_BOOK);
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLines(ndocid,1,"Ja, Hanna, w�a�cicielka gospody w Khorinis, jestem winna sz.p. Lehmarowi 250 monet.");
	Doc_PrintLine(ndocid,1,"");
	Doc_PrintLine(ndocid,1,"          Hanna");
	Doc_PrintLines(ndocid,1,"");
	Doc_Show(ndocid);
};


instance ITPL_SAGITTA_HERB_MIS(C_ITEM)
{
	name = "S�oneczny aloes";
	mainflag = ITEM_KAT_FOOD;
	flags = ITEM_MULTI;
	value = VALUE_STRENGTH_HERB_01;
	visual = "ItPl_Strength_Herb_01.3DS";
	material = MAT_WOOD;
	scemename = "FOOD";
	description = name;
	text[5] = NAME_VALUE;
	count[5] = VALUE_STRENGTH_HERB_01;
};

instance ITKE_ORLAN_HOTELZIMMER(C_ITEM)
{
	name = "Klucz do pokoju";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = VALUE_KEY_01;
	visual = "ItKe_Key_01.3ds";
	material = MAT_METAL;
	description = name;
	text[2] = "gospody 'Pod Martw� Harpi�'.";
	text[3] = "";
	inv_zbias = INVCAM_ENTF_KEY_STANDARD;
	inv_rotz = INVCAM_Z_KEY_STANDARD;
	inv_rotx = INVCAM_X_KEY_STANDARD;
};

instance ITRW_DRAGOMIRSARMBRUST_MIS(C_ITEM)
{
	name = "Kusza Dragomira";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = VALUE_LEICHTEARMBRUST;
	damagetotal = DAMAGE_LEICHTEARMBRUST;
	damagetype = DAM_POINT;
	munition = itrw_bolt;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = CONDITION_LEICHTEARMBRUST;
	visual = "ItRw_Crossbow_L_02.mms";
	description = name;
	text[2] = NAME_DAMAGE;
	count[2] = damagetotal;
	text[3] = NAME_STR_NEEDED;
	count[3] = cond_value[2];
	text[5] = NAME_VALUE;
	count[5] = value;
};




instance ITWR_TELEPORT_ACTIVATE(C_ITEM)
{
	name = "Zw�j";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_TELEPORT_ACTIVATE;
	scemename = "MAP";
	description = "Zw�j";
	Text[0]="Dzi�ki temu zakl�ciu,";
	Text[1]="mog� aktywowa� antyczne Kamienie Druid�w.";
};

instance ITMI_RUNESTONE(C_ITEM)
{
	name = "Runiczny kamie�";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 500;
	effect = "SPELLFX_MOON_SMOKE";
	visual = "ItMi_TeleportStone.3ds";
	material = MAT_STONE;
	description = name;
	text[2] = "Ten kamie� doskonale";
	text[3] = "pasuje do";
	text[4] = "druidzkich kamieni.";
	inv_rotx = -90;
	inv_roty = 0;
	inv_rotz = 0;
};
const string NoWorkTeleport = "To tutaj nie dzia�a...";

func void use_TELEPORT_ACTIVATE()
{
if (CurrentLevel == NEWWORLD_ZEN){

if (Npc_GetDistToWP (hero, "CITY_TP") <= 500)&&(Npc_HasItems (hero, ITMI_RUNESTONE) >= 1)&&(!CITY_STONE_ACTIVATE)
{
CITY_STONE_ACTIVATE=true;
Wld_SendTrigger("CITY_TELEPORT");
AI_PlayAni  (hero,"T_HEASHOOT_2_STAND");
Wld_PlayEffect("SPELLFX_TELEPORT",  hero, hero, 0, 0, 0, FALSE );
Npc_RemoveInvItems 	(hero, ITMI_RUNESTONE,1); 
B_GivePlayerXP(250);
};


if (Npc_GetDistToWP (hero, "XARDAS_TP") <= 500)&&(Npc_HasItems (hero, ITMI_RUNESTONE) >= 1)&&(!XARDAS_STONE_ACTIVATE)
{
XARDAS_STONE_ACTIVATE=true;
Wld_SendTrigger("XARDAS_TELEPORT_PFX");
AI_PlayAni  (hero,"T_HEASHOOT_2_STAND");
Wld_PlayEffect("SPELLFX_TELEPORT",  hero, hero, 0, 0, 0, FALSE );
Npc_RemoveInvItems 	(hero, ITMI_RUNESTONE,1); 
B_GivePlayerXP(250);
};

if (Npc_GetDistToWP (hero, "FARM_TP") <= 500)&&(Npc_HasItems (hero, ITMI_RUNESTONE) >= 1)&&(!FARM_STONE_ACTIVATE)
{
FARM_STONE_ACTIVATE=true;
Wld_SendTrigger("FARM_TELEPORT_PFX");
AI_PlayAni  (hero,"T_HEASHOOT_2_STAND");
Wld_PlayEffect("SPELLFX_TELEPORT",  hero, hero, 0, 0, 0, FALSE );
Npc_RemoveInvItems 	(hero, ITMI_RUNESTONE,1); 
B_GivePlayerXP(250);
};

if (Npc_GetDistToWP (hero, "TAVERN_TP") <= 500)&&(Npc_HasItems (hero, ITMI_RUNESTONE) >= 1)&&(!TAVERN_STONE_ACTIVATE)
{
TAVERN_STONE_ACTIVATE=true;
Wld_SendTrigger("TAVERN_TELEPORT_PFX");
AI_PlayAni  (hero,"T_HEASHOOT_2_STAND");
Wld_PlayEffect("SPELLFX_TELEPORT",  hero, hero, 0, 0, 0, FALSE );
Npc_RemoveInvItems 	(hero, ITMI_RUNESTONE,1); 
B_GivePlayerXP(250);
};

if (Npc_GetDistToWP (hero, "MONASTERY_TP") <= 500)&&(Npc_HasItems (hero, ITMI_RUNESTONE) >= 1)&&(!MONASTERY_STONE_ACTIVATE)
{
MONASTERY_STONE_ACTIVATE=true;
Wld_SendTrigger("MONASTERY_TELEPORT_PFX");
AI_PlayAni  (hero,"T_HEASHOOT_2_STAND");
Wld_PlayEffect("SPELLFX_TELEPORT",  hero, hero, 0, 0, 0, FALSE );
Npc_RemoveInvItems 	(hero, ITMI_RUNESTONE,1); 
B_GivePlayerXP(250);
};

if (Npc_GetDistToWP (hero, "NORTH_TP") <= 500)&&(Npc_HasItems (hero, ITMI_RUNESTONE) >= 1)&&(!NORTH_STONE_ACTIVATE)
{
NORTH_STONE_ACTIVATE=true;
Wld_SendTrigger("NORTH_TELEPORT_PFX");
AI_PlayAni  (hero,"T_HEASHOOT_2_STAND");
Wld_PlayEffect("SPELLFX_TELEPORT",  hero, hero, 0, 0, 0, FALSE );
Npc_RemoveInvItems 	(hero, ITMI_RUNESTONE,1); 
B_GivePlayerXP(250);
};

if (Npc_GetDistToWP (hero, "PASS_TO_OW_TP") <= 500)&&(Npc_HasItems (hero, ITMI_RUNESTONE) >= 1)&&(!PASS_STONE_ACTIVATE)
{
MONASTERY_STONE_ACTIVATE=true;
Wld_SendTrigger("PASS_TELEPORT");
AI_PlayAni  (hero,"T_HEASHOOT_2_STAND");
Wld_PlayEffect("SPELLFX_TELEPORT",  hero, hero, 0, 0, 0, FALSE );
Npc_RemoveInvItems 	(hero, ITMI_RUNESTONE,1); 
B_GivePlayerXP(250);
};
}else if (CurrentLevel == OLDWORLD_ZEN){

if (Npc_GetDistToWP (hero, "GESTATH_TP") <= 500)&&(Npc_HasItems (hero, ITMI_RUNESTONE) >= 1)&&(!GESTATH_STONE_ACTIVATE)
{
GESTATH_STONE_ACTIVATE=true;
Wld_SendTrigger("GESTATH_PFX");
AI_PlayAni  (hero,"T_HEASHOOT_2_STAND");
Wld_PlayEffect("SPELLFX_TELEPORT",  hero, hero, 0, 0, 0, FALSE );
Npc_RemoveInvItems 	(hero, ITMI_RUNESTONE,1); 
B_GivePlayerXP(250);
};

if (Npc_GetDistToWP (hero, "OW_XARDAS_TP") <= 500)&&(Npc_HasItems (hero, ITMI_RUNESTONE) >= 1)&&(!OWXARDAS_STONE_ACTIVATE)
{
OWXARDAS_STONE_ACTIVATE=true;
Wld_SendTrigger("XARDAS_PFX");
AI_PlayAni  (hero,"T_HEASHOOT_2_STAND");
Wld_PlayEffect("SPELLFX_TELEPORT",  hero, hero, 0, 0, 0, FALSE );
Npc_RemoveInvItems 	(hero, ITMI_RUNESTONE,1); 
B_GivePlayerXP(250);
};

if (Npc_GetDistToWP (hero, "NEWCAMP_TP") <= 500)&&(Npc_HasItems (hero, ITMI_RUNESTONE) >= 1)&&(!NEWCAMP_STONE_ACTIVATE)
{
NEWCAMP_STONE_ACTIVATE=true;
Wld_SendTrigger("NEWCAMP_PFX");
AI_PlayAni  (hero,"T_HEASHOOT_2_STAND");
Wld_PlayEffect("SPELLFX_TELEPORT",  hero, hero, 0, 0, 0, FALSE );
Npc_RemoveInvItems 	(hero, ITMI_RUNESTONE,1); 
B_GivePlayerXP(250);
};

if (Npc_GetDistToWP (hero, "NW_TP") <= 500)&&(Npc_HasItems (hero, ITMI_RUNESTONE) >= 1)&&(!NW_STONE_ACTIVATE)
{
NW_STONE_ACTIVATE=true;
Wld_SendTrigger("NW_PFX");
AI_PlayAni  (hero,"T_HEASHOOT_2_STAND");
Wld_PlayEffect("SPELLFX_TELEPORT",  hero, hero, 0, 0, 0, FALSE );
Npc_RemoveInvItems 	(hero, ITMI_RUNESTONE,1); 
B_GivePlayerXP(250);
};

if (Npc_GetDistToWP (hero, "OC_TP") <= 500)&&(Npc_HasItems (hero, ITMI_RUNESTONE) >= 1)&&(!OLDCAMP_STONE_ACTIVATE)
{
OLDCAMP_STONE_ACTIVATE=true;
Wld_SendTrigger("OC_PFX");
AI_PlayAni  (hero,"T_HEASHOOT_2_STAND");
Wld_PlayEffect("SPELLFX_TELEPORT",  hero, hero, 0, 0, 0, FALSE );
Npc_RemoveInvItems 	(hero, ITMI_RUNESTONE,1); 
B_GivePlayerXP(250);
		};
	}else{Print("To tutaj nie dzia�a!");};
};


/********************************************/
instance ITWR_OrcWeapons1(C_ITEM)
{
	name = "Pergamin";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_02.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_WritteOrcWeapons1;
	scemename = "MAP";
	description = "Orkowy pergamin";
	Text[0]="Pergamin opisuje o cz�owieku,";
	Text[1]="kt�ry zosta� najemnikiem ork�w i postanowi�";
	Text[2]="opisa� styl walki orkow� broni� kt�rej si� nauczy�.";
};


func void Use_WritteOrcWeapons1()
{
	var int ndocid;
	if(hero.hitchance[2]>=35)
	{
	if(!HeroKnowOrcsWeapons)
	{
		ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,-1,FONT_BOOK);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0," Orkowe bronie cz�� I");
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0," Orkowie s� to istoty kt�re kultur� dor�wnuj� ludziom.");
	Doc_PrintLine(ndocid,0," Jednak r�ni� si� stylem walki.  ");
	Doc_PrintLine(ndocid,0,"Orkowie atakuj� ci�kimi toporami, za� ludzie staraj� si� tworzy� taktyki.");
	Doc_PrintLine(ndocid,0," Jako i� uda�o mi si� zyska� ich szacunek postanowi�em nauczy� si� walczy� ich bro�mi.");
	Doc_PrintLine(ndocid,0," Uda�o mi si� stworzy� taktyk� na ich bro�!");
	Doc_PrintLine(ndocid,0," Nale�y chwyci� bro� tak, aby mie� j� w prawej r�ce i t� nad g�ow�(na prawym barku).");
	Doc_PrintLine(ndocid,0," Aby wyprowadzi� cios u�yj silnego ruchu, dzi�ki temu b�dziesz m�g� uderzy� drugi raz, ");
		Doc_PrintLine(ndocid,0," tym razem z podskokiem");

	Doc_PrintLine(ndocid,0," a na ko�cu zaatakowa� szybkim ciosem.");
	Doc_PrintLine(ndocid,0," Kolejne ataki, wyprowadzaj tak samo jak poprzednie - Wykorzystuj swoj� si��!");
	
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"     Olgerd van Erhan");
	Doc_PrintLine(ndocid,0,"");
	Doc_SetMargins(ndocid,-1,200,50,50,50,1);
	Doc_Show(ndocid);
	HeroKnowOrcsWeapons=1;
	Ico_OrcWeapons="Ico_OrcWeaponsYes.tga";
	}
	else
	{
	Prints_Ext("Ju� to wiem",RGBA(180,0,0,255));
	};
}
else
{
b_say(hero,hero,"DIA_Thorben_PleaseTeach_Later_15_00");
	};
};

instance ITWR_OrcWeapons2(C_ITEM)
{
	name = "Pergamin";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItWr_Scroll_02.3DS";
	material = MAT_LEATHER;
	on_state[0] = Use_WritteOrcWeapons2;
	scemename = "MAP";
	description = "Orkowy pergamin";
	//Text[0]="Pergamin opisuje o cz�owieku,";
////	Text[1]="kt�ry zosta� najemnikiem ork�w i postanowi�";
//	Text[2]="opisa� styl walki orkow� broni� kt�rej si� nauczy�.";
};


func void Use_WritteOrcWeapons2()
{
	var int ndocid;
	if(hero.hitchance[2]>=70)
	{
	if(HeroKnowOrcsWeapons==1)
	{
		ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"letters.TGA",0);
	Doc_SetFont(ndocid,-1,FONT_BOOK);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0," Orkowe bronie cz�� II");
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"Bardzo s�abp czytelne pismo ");
	Doc_PrintLine(ndocid,0,"Kto� pisa� to w po�piechu");
	Doc_PrintLine(ndocid,0," ");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0," ");
	Doc_PrintLine(ndocid,0," ");
	Doc_PrintLine(ndocid,0," ");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0," ");
	Doc_PrintLine(ndocid,0,"Cholera Hosh-Pak dowiedzia� si� o moich zapiskach, musz� ucieka� najlepiej do zamku.");
	Doc_PrintLine(ndocid,0,"     Olgerd van Erhan");
	Doc_PrintLine(ndocid,0,"");
	Doc_SetMargins(ndocid,-1,200,50,50,50,1);
	Doc_Show(ndocid);
	HeroKnowOrcsWeapons=2;
	}
	else if(!HeroKnowOrcsWeapons)
	{
	b_say(hero,hero,"DIA_Thorben_PleaseTeach_Later_15_00");
	}
	else
	{
	Prints_Ext("Ju� to wiem",RGBA(180,0,0,255));
	};
}
else
{
b_say(hero,hero,"DIA_Thorben_PleaseTeach_Later_15_00");
	};
};