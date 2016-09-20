
const int VALUE_ITAR_PIR_L_ADDON = 1100;
const int VALUE_ITAR_PIR_M_ADDON = 1300;
const int VALUE_ITAR_PIR_H_ADDON = 1500;
const int VALUE_ITAR_THORUS_ADDON = 1300;
const int VALUE_ITAR_RAVEN_ADDON = 1300;
const int VALUE_ITAR_OREBARON_ADDON = 1300;
const int VALUE_ITAR_LEE_ADDON = 7500;
const int VALUE_ITAR_LHBO_ADDON = 11000;
const int VALUE_ITAR_RANGER_ADDON = 1300;
const int VALUE_ITAR_KDW_L_ADDON = 1300;
const int VALUE_ITAR_BLOODWYN_ADDON = 1300;
const int VALUE_ITAR_GERALT_ADDON = 510;
const int VALUE_ITAR_TROLL_ADDON = 810;
const int VALUE_ITAR_WMA_ADDON = 1315;
const int VALUE_ITAR_NADJA_ADDON = 700;

func void edge_def_update()
{
	if(Npc_IsPlayer(self))
	{
		ATR_EDGEDEFENSE = self.protection[PROT_EDGE];
		Npc_SetTalentSkill(self,NPC_TALENT_EDGEDEFENSE,ATR_EDGEDEFENSE);
	};
};


instance ITAR_PIR_L_ADDON(C_ITEM)
{
	name = "Pirackie ubranie";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 30;
	protection[PROT_BLUNT] = 30;
	protection[PROT_POINT] = 30;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	value = value_itar_pir_l_addon;
	wear = WEAR_TORSO;
	visual = "ItAr_PIR_L_ADDON.3ds";
	visual_change = "Armor_Pir_L_Addon.ASC";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_PIR_M_ADDON(C_ITEM)
{
	name = "Piracka zbroja";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 40;
	protection[PROT_BLUNT] = 40;
	protection[PROT_POINT] = 40;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	value = value_itar_pir_m_addon;
	wear = WEAR_TORSO;
	visual = "ItAr_PIR_M_ADDON.3ds";
	visual_change = "Armor_PIR_M_ADDON.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_PIR_H_ADDON(C_ITEM)
{
	name = "Ubranie kapitana";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 50;
	protection[PROT_BLUNT] = 50;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	value = value_itar_pir_h_addon;
	wear = WEAR_TORSO;
	visual = "ItAr_PIR_H_ADDON.3ds";
	visual_change = "Armor_PIR_H_ADDON.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_THORUS_ADDON(C_ITEM)
{
	name = "Ci篹ka zbroja gwardzisty";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 60;
	protection[PROT_BLUNT] = 60;
	protection[PROT_POINT] = 60;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	value = value_itar_thorus_addon;
	wear = WEAR_TORSO;
	visual = "ItAr_Thorus_ADDON.3ds";
	visual_change = "Armor_Thorus_ADDON.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = "Zbroja stra積ika Kruka";
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = PRINT_ADDON_BDTARMOR;
	text[1] = NAME_PROT_EDGE;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_PROT_BLUNT;
	count[2] = protection[PROT_BLUNT];
	text[3] = NAME_PROT_POINT;
	count[3] = protection[PROT_POINT];
	text[4] = NAME_PROT_FIRE;
	count[4] = protection[PROT_FIRE];
	text[5] = NAME_PROT_MAGIC;
	count[5] = protection[PROT_MAGIC];
};

instance ITAR_RAVEN_ADDON(C_ITEM)
{
	name = "Zbroja Kruka";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 80;
	protection[PROT_BLUNT] = 80;
	protection[PROT_POINT] = 80;
	protection[PROT_FIRE] = 80;
	protection[PROT_MAGIC] = 30;
	value = value_itar_raven_addon;
	wear = WEAR_TORSO;
	visual = "ItAr_Raven_ADDON.3ds";
	visual_change = "Armor_Raven_ADDON.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_OREBARON_ADDON(C_ITEM)
{
	name = "Zbroja magnata";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 65;
	protection[PROT_BLUNT] = 60;
	protection[PROT_POINT] = 45;
	protection[PROT_FIRE] = 20;
	protection[PROT_MAGIC] = 30;
	value = value_itar_orebaron_addon;
	wear = WEAR_TORSO;
	visual = "ItAr_CHAOS_ADDON.3ds";
	visual_change = "Armor_CHAOS_ADDON.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_RANGER_ADDON(C_ITEM)
{
	name = "Zbroja Wodnego Kr璕u";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 38;
	protection[PROT_BLUNT] = 30;
	protection[PROT_POINT] = 20;
	protection[PROT_FIRE] = 10;
	protection[PROT_MAGIC] = 10;
	value = value_itar_ranger_addon;
	wear = WEAR_TORSO;
	visual = "ItAr_Ranger_ADDON.3ds";
	visual_change = "HUM_HUNH_V1_ARMOR.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_FAKE_RANGER(C_ITEM)
{
	name = "Zniszczona zbroja";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 0;
	protection[PROT_BLUNT] = 0;
	protection[PROT_POINT] = 0;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	value = VALUE_ITAR_RANGER_ADDON;
	wear = WEAR_TORSO;
	visual = "ItAr_Ranger_ADDON.3ds";
	visual_change = "HUM_HUNH_V1_ARMOR.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_KDW_L_ADDON(C_ITEM)
{
	name = "Lekka toga Maga Wody";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 30;
	protection[PROT_BLUNT] = 50;
	protection[PROT_POINT] = 20;
	protection[PROT_FIRE] = 25;
	protection[PROT_MAGIC] = 25;
	value = value_itar_kdw_l_addon;
	wear = WEAR_TORSO;
	visual = "ItAr_KDW_L_ADDON.3ds";
	visual_change = "Armor_KDW_L_ADDON.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_BLOODWYN_ADDON(C_ITEM)
{
	name = "Zbroja Bloodwyna";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 60;
	protection[PROT_BLUNT] = 60;
	protection[PROT_POINT] = 60;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 0;
	value = value_itar_bloodwyn_addon;
	wear = WEAR_TORSO;
	visual = "ItAr_Bloodwyn_ADDON.3ds";
	visual_change = "Armor_Bloodwyn_ADDON.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_MAYAZOMBIE_ADDON(C_ITEM)
{
	name = "Stara zbroja";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 50;
	protection[PROT_BLUNT] = 50;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 50;
	protection[PROT_MAGIC] = 50;
	value = 0;
	wear = WEAR_TORSO;
	visual = "ItAr_Raven_ADDON.3ds";
	visual_change = "Armor_MayaZombie_Addon.asc";
	visual_skin = 0;
	material = MAT_METAL;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_BM_L(C_ITEM)
{
	name = "Pancerz Lorda";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 60;
	protection[PROT_BLUNT] = 50;
	protection[PROT_POINT] = 30;
	protection[PROT_FIRE] = 15;
	protection[PROT_MAGIC] = 80;
	value = VALUE_ITAR_LEE_ADDON;
	wear = WEAR_TORSO;
	visual = "ItAr_BM_L.3ds";
	visual_change = "ARMOR_BM_L.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_BM_M(C_ITEM)
{
	name = "Pancerz Lorda (wzmocniony)";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 67;
	protection[PROT_BLUNT] = 52;
	protection[PROT_POINT] = 31;
	protection[PROT_FIRE] = 15;
	protection[PROT_MAGIC] = 72;
	value = VALUE_ITAR_LEE_ADDON;
	wear = WEAR_TORSO;
	visual = "ItAr_BM_L.3ds";
	visual_change = "ARMOR_BM_M.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_FIREARMOR_ADDON(C_ITEM)
{
	name = "Magiczna zbroja";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 60;
	protection[PROT_BLUNT] = 100;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 50;
	protection[PROT_MAGIC] = 50;
	value = VALUE_ITAR_XARDAS;
	wear = WEAR_TORSO | WEAR_EFFECT;
	effect = "SPELLFX_FIREARMOR";
	visual = "ItAr_Xardas.3ds";
	visual_change = "Armor_Xardas.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_LEE_ADDON(C_ITEM)
{
	name = "Zbroja Genera豉";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 80;
	protection[PROT_BLUNT] = 70;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 20;
	protection[PROT_MAGIC] = 30;
	value = value_itar_lee_addon;
	wear = WEAR_TORSO;
	visual = "ItAr_CHAOS_ADDON.3ds";
	visual_change = "Armor_LEE_ADDON.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_LHBO_ADDON(C_ITEM)
{
	name = "Zbroja z czarnej rudy";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 85;
	protection[PROT_BLUNT] = 80;
	protection[PROT_POINT] = 60;
	protection[PROT_FIRE] = 40;
	protection[PROT_MAGIC] = 55;
	value = value_itar_lhbo_addon;
	wear = WEAR_TORSO;
	visual = "ITAR_LHBO_ADDON.3ds";
	visual_change = "ARMOR_LHBO_ADDON.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_TROLL_ADDON(C_ITEM)
{
	name = "Pancerz ze sk鏎y trolla";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 45;
	protection[PROT_BLUNT] = 40;
	protection[PROT_POINT] = 50;
	protection[PROT_FIRE] = 0;
	protection[PROT_MAGIC] = 20;
	value = value_itar_troll_addon;
	wear = WEAR_TORSO;
	visual = "ItAr_Troll_Add.3ds";
	visual_change = "Armor_TROLL_ADDON.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};


instance ITAR_TROLL_Upgrade(C_ITEM)
{
	name = "Wzmocniony pancerz ze sk鏎y trolla";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 60;
	protection[PROT_BLUNT] = 50;
	protection[PROT_POINT] = 60;
	protection[PROT_FIRE] = 15;
	protection[PROT_MAGIC] = 20;
	value = 1250;
	wear = WEAR_TORSO;
	visual = "ItAr_Troll_Add.3ds";
	visual_change = "Troll_Upgrade.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_BlackTROLL_Upgrade(C_ITEM)
{
	name = "Wzmocniona ochrona czarnego trolla";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 80;
	protection[PROT_BLUNT] = 70;
	protection[PROT_POINT] = 80;
	protection[PROT_FIRE] = 25;
	protection[PROT_MAGIC] = 30;
	value = 2000;
	wear = WEAR_TORSO;
	visual = "BlackTrollArmor.3ds";
	visual_change = "Black_Upgrade.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

/**/
instance ITAR_Constantino(C_ITEM)
{
	name = "Szata alchemika";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 30;
	protection[PROT_BLUNT] = 30;
	protection[PROT_POINT] = 30;
	protection[PROT_FIRE] = 25;
	protection[PROT_MAGIC] = 30;
	value = 1;
	wear = WEAR_TORSO;
	visual = "BlackTrollArmor.3ds";
	visual_change = "Hum_GurM_Armor.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};
instance ITAR_BlackTROLL(C_ITEM)
{
	name = "Ochrona czarnego trolla";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 70;
	protection[PROT_BLUNT] = 60;
	protection[PROT_POINT] = 65;
	protection[PROT_FIRE] = 20;
	protection[PROT_MAGIC] = 20;
	value = 3000;
	wear = WEAR_TORSO;
	visual = "BlackTrollArmor.3ds";
	visual_change = "Black.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};











instance ITAR_GERALT_ADDON(C_ITEM)
{
	name = "Pancerz 這wcy";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 35;
	protection[PROT_BLUNT] = 20;
	protection[PROT_POINT] = 10;
	protection[PROT_FIRE] = 10;
	protection[PROT_MAGIC] = 20;
	value = value_itar_geralt_addon;
	wear = WEAR_TORSO;
	visual = "ITAR_GERALT_ADDON.3ds";
	visual_change = "Armor_GERALT_ADDON.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_GERALT_ADDON_GRD1(C_ITEM)
{
	name = "Pancerz 這wcy (wzmocniony)";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 40;
	protection[PROT_BLUNT] = 30;
	protection[PROT_POINT] = 20;
	protection[PROT_FIRE] = 15;
	protection[PROT_MAGIC] = 25;
	value = VALUE_ITAR_GERALT_ADDON;
	wear = WEAR_TORSO;
	visual = "ITAR_GERALT_ADDON.3ds";
	visual_change = "Armor_GERALT_ADDON_Grd1.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_GERALT_ADDON_GRD2(C_ITEM)
{
	name = "Pancerz 這wcy (wzmocniony x2)";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 45;
	protection[PROT_BLUNT] = 35;
	protection[PROT_POINT] = 25;
	protection[PROT_FIRE] = 15;
	protection[PROT_MAGIC] = 30;
	value = VALUE_ITAR_GERALT_ADDON;
	wear = WEAR_TORSO;
	visual = "ITAR_GERALT_ADDON.3ds";
	visual_change = "Armor_GERALT_ADDON_Grd2.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_GERALT_ADDON_GRD3(C_ITEM)
{
	name = "Pancerz 這wcy (wzmocniony x3)";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 55;
	protection[PROT_BLUNT] = 45;
	protection[PROT_POINT] = 35;
	protection[PROT_FIRE] = 20;
	protection[PROT_MAGIC] = 35;
	value = VALUE_ITAR_GERALT_ADDON;
	wear = WEAR_TORSO;
	visual = "ITAR_GERALT_ADDON.3ds";
	visual_change = "Armor_GERALT_ADDON_Grd3.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_WMA_BASE(C_ITEM)
{
	name = "Mistrzowska szata";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 35;
	protection[PROT_BLUNT] = 35;
	protection[PROT_POINT] = 35;
	protection[PROT_FIRE] = 20;
	protection[PROT_MAGIC] = 20;
	value = VALUE_ITAR_WMA_ADDON;
	wear = WEAR_TORSO;
	visual = "ITAR_WMA_ADDON.3ds";
	visual_change = "ARMOR_WMA_BASE.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_WMA_ASSN(C_ITEM)
{
	name = "Mistrzowski pancerz zab鎩cy";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 45;
	protection[PROT_BLUNT] = 45;
	protection[PROT_POINT] = 45;
	protection[PROT_FIRE] = 20;
	protection[PROT_MAGIC] = 20;
	value = VALUE_ITAR_WMA_ADDON;
	wear = WEAR_TORSO;
	visual = "ITAR_WMA_ADDON.3ds";
	visual_change = "ARMOR_WMA_ASSN.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_WMA_ALHM(C_ITEM)
{
	name = "Mistrzowska szata alchemika";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 35;
	protection[PROT_BLUNT] = 35;
	protection[PROT_POINT] = 35;
	protection[PROT_FIRE] = 25;
	protection[PROT_MAGIC] = 45;
	value = VALUE_ITAR_WMA_ADDON;
	wear = WEAR_TORSO;
	visual = "ITAR_WMA_ADDON.3ds";
	visual_change = "ARMOR_WMA_ALHM.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[0] = NAME_PROT_EDGE;
	count[0] = protection[PROT_EDGE];
	text[1] = NAME_PROT_BLUNT;
	count[1] = protection[PROT_BLUNT];
	text[2] = NAME_PROT_POINT;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_PROT_FIRE;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_PROT_MAGIC;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_NADJA_ADDON(C_ITEM)
{
	name = "Gorset";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 10;
	protection[PROT_BLUNT] = 10;
	protection[PROT_POINT] = 10;
	protection[PROT_FIRE] = 10;
	protection[PROT_MAGIC] = 30;
	value = value_itar_nadja_addon;
	wear = WEAR_TORSO;
	visual = "ItAr_CHAOS_ADDON.3ds";
	visual_change = "HUM_BODY_NADJA.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_BARON_BABE_ADDON(C_ITEM)
{
	name = "Damska bielizna";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 10;
	protection[PROT_BLUNT] = 10;
	protection[PROT_POINT] = 10;
	protection[PROT_FIRE] = 10;
	protection[PROT_MAGIC] = 30;
	value = VALUE_ITAR_NADJA_ADDON;
	wear = WEAR_TORSO;
	visual = "ItAr_CHAOS_ADDON.3ds";
	visual_change = "HUM_BARON_BABE.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITAR_LUCIA_ADDON(C_ITEM)
{
	name = "";
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 20;
	protection[PROT_BLUNT] = 20;
	protection[PROT_POINT] = 10;
	protection[PROT_FIRE] = 5;
	protection[PROT_MAGIC] = 30;
	value = VALUE_ITAR_NADJA_ADDON;
	wear = WEAR_TORSO;
	visual = "ItAr_CHAOS_ADDON.3ds";
	visual_change = "HUM_BODY_LUCIA.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	description = name;
	on_equip = edge_def_update;
	on_unequip = edge_def_update;
	text[5] = NAME_VALUE;
	count[5] = value;
};

