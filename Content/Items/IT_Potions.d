
const int VALUE_HPESSENZ = 40;
const int HP_ESSENZ = 75;
const int VALUE_HPEXTRAKT = 60;
const int HP_EXTRAKT = 100;
const int VALUE_HPELIXIER = 80;
const int HP_ELIXIER = 150;
const int VALUE_BAPEHBE = 150;
const int HP_BAPEHBE = 1;
const int VALUE_MANAESSENZ = 25;
const int MANA_ESSENZ = 25;
const int VALUE_MANAEXTRAKT = 50;
const int MANA_EXTRAKT = 50;
const int VALUE_MANAELIXIER = 80;
const int MANA_ELIXIER = 100;
const int VALUE_STRELIXIER = 900;
const int VALUE_DEFELIXIER = 1200;
const int STR_ELIXIER = 3;
const int VALUE_DEXELIXIER = 900;
const int DEX_ELIXIER = 3;
const int VALUE_HPMAXELIXIER = 1300;
const int HPMAX_ELIXIER = 20;
const int VALUE_MANAMAXELIXIER = 1300;
const int VALUE_MUSHROOMMP = 1800;
const int MANAMAX_ELIXIER = 5;
const int VALUE_MEGADRINK = 1800;
const int STRORDEX_MEGADRINK = 15;
const int VALUE_SPEED = 200;
const int TIME_SPEED = 40000;
const int VALUE_MANATRUNK = 160;
const int VALUE_HPTRUNK = 160;

instance ITPO_MANA_01(C_ITEM)
{
	name = NAME_TRANK;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = VALUE_MANAESSENZ;
	visual = "ItPo_Mana_01.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_mana_01;
	scemename = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_MANAPOTION";
	description = "Esencja many";
	text[1] = NAME_BONUS_MANA;
	count[1] = MANA_ESSENZ;
	text[5] = NAME_VALUE;
	count[5] = VALUE_MANAESSENZ;
};


func void useitpo_mana_01()
{
	Npc_ChangeAttribute(self,ATR_MANA,MANA_ESSENZ);
};


instance ITPO_MANA_02(C_ITEM)
{
	name = NAME_TRANK;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = VALUE_MANAEXTRAKT;
	visual = "ItPo_Mana_02.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_mana_02;
	scemename = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_MANAPOTION";
	description = "Ekstrakt many";
	text[1] = NAME_BONUS_MANA;
	count[1] = MANA_EXTRAKT;
	text[5] = NAME_VALUE;
	count[5] = VALUE_MANAEXTRAKT;
};


func void useitpo_mana_02()
{
	Npc_ChangeAttribute(self,ATR_MANA,MANA_EXTRAKT);
};


instance ITPO_MANA_03(C_ITEM)
{
	name = NAME_TRANK;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = VALUE_MANAELIXIER;
	visual = "ItPo_Mana_03.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_mana_03;
	scemename = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_MANAPOTION";
	description = "Eliksir many";
	text[1] = NAME_BONUS_MANA;
	count[1] = MANA_ELIXIER;
	text[5] = NAME_VALUE;
	count[5] = VALUE_MANAELIXIER;
};


func void useitpo_mana_03()
{
	Npc_ChangeAttribute(self,ATR_MANA,MANA_ELIXIER);
};


instance ITPO_HEALTH_01(C_ITEM)
{
	name = NAME_TRANK;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = VALUE_HPESSENZ;
	visual = "ItPo_Health_01.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_health_01;
	scemename = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_HEALTHPOTION";
	description = "Esencja lecznicza";
	text[1] = NAME_BONUS_HP;
	count[1] = HP_ESSENZ;
	text[5] = NAME_VALUE;
	count[5] = VALUE_HPESSENZ;
};


func void useitpo_health_01()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_ESSENZ);
};


instance ITPO_HEALTH_02(C_ITEM)
{
	name = NAME_TRANK;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = VALUE_HPEXTRAKT;
	visual = "ItPo_Health_02.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_health_02;
	scemename = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_HEALTHPOTION";
	description = "Ekstrakt leczniczy";
	text[1] = NAME_BONUS_HP;
	count[1] = HP_EXTRAKT;
	text[5] = NAME_VALUE;
	count[5] = VALUE_HPEXTRAKT;
};


func void useitpo_health_02()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_EXTRAKT);
};


instance ITPO_HEALTH_03(C_ITEM)
{
	name = NAME_TRANK;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = VALUE_HPELIXIER;
	visual = "ItPo_Health_03.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_health_03;
	scemename = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_HEALTHPOTION";
	description = "Eliksir leczniczy";
	text[1] = NAME_BONUS_HP;
	count[1] = HP_ELIXIER;
	text[5] = NAME_VALUE;
	count[5] = VALUE_HPELIXIER;
};


func void useitpo_health_03()
{
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HP_ELIXIER);
};


instance ITPO_BAPEHBE(C_ITEM)
{
	name = "Wywar z jagód";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = VALUE_BAPEHBE;
	visual = "ItPo_BAPEHbE.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_bapehbe;
	scemename = "POTIONFAST";
	description = "leczniczy wywar z owoców leœnych jagód";
	text[1] = NAME_BONUS_HP_30;
	text[2] = NAME_BONUS_HPRM;
	text[5] = NAME_VALUE;
	count[5] = VALUE_BAPEHBE;
};


func void useitpo_bapehbe()
{
	var int hpres;
	var string concattext;
	hpres = 1 + ((self.attribute[ATR_HITPOINTS_MAX] * 30) / 100);
	Npc_ChangeAttribute(self,ATR_HITPOINTS_MAX,HP_BAPEHBE);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,hpres);
	if(self.attribute[ATR_HITPOINTS] > self.attribute[ATR_HITPOINTS_MAX])
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	};
	concattext = ConcatStrings(PRINT_LEARNHITPOINTS_MAX,IntToString(HP_BAPEHBE));
	PrintScreen(concattext,-1,-1,FONT_SCREEN,2);
};


instance ITPO_PERM_DEF(C_ITEM)
{
	name = NAME_TRANK;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = VALUE_DEFELIXIER;
	visual = "ItPo_Perm_DEF.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_perm_def;
	scemename = "POTION";
	description = "Eliksir ochrony";
	text[1] = NAME_BONUS_DEF;
	count[1] = 1;
	text[5] = NAME_VALUE;
	count[5] = VALUE_DEFELIXIER;
};


func void useitpo_perm_def()
{
	Wld_PlayEffect("SPELLFX_DEFSMOKE",hero,hero,3,3,3,FALSE);
	self.protection[PROT_EDGE] += 1;
	self.protection[PROT_BLUNT] += 1;
	self.protection[PROT_POINT] += 1;
	PrintScreen(PRINT_PERMDEF,-1,-1,FONT_SCREEN,4);
	ATR_EDGEDEFENSE = self.protection[PROT_EDGE];
	Npc_SetTalentSkill(self,NPC_TALENT_EDGEDEFENSE,ATR_EDGEDEFENSE);
};


instance ITPO_PERM_STR(C_ITEM)
{
	name = NAME_TRANK;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = VALUE_STRELIXIER;
	visual = "ItPo_Perm_STR.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_perm_str;
	scemename = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Eliksir si³y";
	text[1] = NAME_BONUS_STR;
	count[1] = STR_ELIXIER;
	text[5] = NAME_VALUE;
	count[5] = VALUE_STRELIXIER;
};


func void useitpo_perm_str()
{
	b_raiseattribute(self,ATR_STRENGTH,STR_ELIXIER);
};


instance ITPO_PERM_DEX(C_ITEM)
{
	name = NAME_TRANK;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = VALUE_DEXELIXIER;
	visual = "ItPo_Perm_DEX.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_perm_dex;
	scemename = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Eliksir zrêcznoœci";
	text[1] = NAME_BONUS_DEX;
	count[1] = DEX_ELIXIER;
	text[5] = NAME_VALUE;
	count[5] = VALUE_DEXELIXIER;
};


func void useitpo_perm_dex()
{
	b_raiseattribute(self,ATR_DEXTERITY,DEX_ELIXIER);
};


instance ITPO_PERM_HEALTH(C_ITEM)
{
	name = NAME_TRANK;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = VALUE_HPMAXELIXIER;
	visual = "ItPo_Perm_Health.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_perm_health;
	scemename = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_HEALTHPOTION";
	description = "Eliksir ¿ycia";
	text[1] = NAME_BONUS_HPMAX;
	count[1] = HPMAX_ELIXIER;
	text[5] = NAME_VALUE;
	count[5] = VALUE_HPMAXELIXIER;
};


func void useitpo_perm_health()
{
	b_raiseattribute(self,ATR_HITPOINTS_MAX,HPMAX_ELIXIER);
	Npc_ChangeAttribute(self,ATR_HITPOINTS,HPMAX_ELIXIER);
};


instance ITPO_PERM_MANA(C_ITEM)
{
	name = NAME_TRANK;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = VALUE_MANAMAXELIXIER;
	visual = "ItPo_Perm_Mana.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_perm_mana;
	scemename = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_MANAPOTION";
	description = "Eliksir ducha";
	text[1] = NAME_BONUS_MANAMAX;
	count[1] = MANAMAX_ELIXIER;
	text[5] = NAME_VALUE;
	count[5] = VALUE_MANAMAXELIXIER;
};


func void useitpo_perm_mana()
{
	b_raiseattribute(self,ATR_MANA_MAX,MANAMAX_ELIXIER);
	Npc_ChangeAttribute(self,ATR_MANA,MANAMAX_ELIXIER);
};


instance ITPO_PERM_MUSHROOMMP(C_ITEM)
{
	name = NAME_TRANK;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = VALUE_MUSHROOMMP;
	visual = "ItPo_MushroomMP_01.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_mushroommp;
	scemename = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_MANAPOTION";
	description = "Eliksir z ciemnych grzybów";
	text[1] = NAME_BONUS_MANAMAX;
	count[1] = MANAMAX_ELIXIER;
	text[5] = NAME_VALUE;
	count[5] = VALUE_MUSHROOMMP;
};


func void useitpo_mushroommp()
{
	b_raiseattribute(self,ATR_MANA_MAX,MANAMAX_ELIXIER);
	Npc_ChangeAttribute(self,ATR_MANA,MANAMAX_ELIXIER);
};


instance ITPO_SPEED(C_ITEM)
{
	name = NAME_TRANK;
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = VALUE_SPEED;
	visual = "ItPo_Speed.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_speed;
	scemename = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = "Mikstura szybkoœci";
	text[1] = "Tymczasowo zwiêksza twoj¹ szybkoœæ.";
	text[3] = "Czas trwania - 40 sek";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void useitpo_speed()
{
	Mdl_ApplyOverlayMdsTimed(self,"HUMANS_SPRINT.MDS",TIME_SPEED);
};


instance ITPO_MEGADRINK(C_ITEM)
{
	name = "Embarla Firgasto";
	mainflag = ITEM_KAT_POTIONS;
	flags = ITEM_MULTI;
	value = VALUE_MEGADRINK;
	visual = "ItPo_Perm_Mana.3ds";
	material = MAT_GLAS;
	on_state[0] = useitpo_megadrink;
	scemename = "POTIONFAST";
	wear = WEAR_EFFECT;
	effect = "SPELLFX_ITEMGLIMMER";
	description = name;
	text[3] = "Skutki nieznane.";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void useitpo_megadrink()
{
	if(self.attribute[ATR_STRENGTH] < self.attribute[ATR_DEXTERITY])
	{
		b_raiseattribute(self,ATR_DEXTERITY,STRORDEX_MEGADRINK);
	}
	else
	{
		b_raiseattribute(self,ATR_STRENGTH,STRORDEX_MEGADRINK);
	};
	Npc_ChangeAttribute(self,ATR_MANA,-ATR_MANA);
	Snd_Play("DEM_Warn");
};

