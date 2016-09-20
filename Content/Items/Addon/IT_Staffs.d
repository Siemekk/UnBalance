var int StaffEquiped;
instance ITMW_WatterStaff(C_ITEM)
{
	name = "Kostur";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD;
	material = MAT_WOOD;
	value = VALUE_FLAMEBERGE;
	damagetotal = 45;
	damagetype = DAM_MAGIC;
	range = 110;
	on_equip = equip_WatterStaff;
	on_unequip = unequip_WatterStaff;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = 60;
	visual = "ITMW_WatterMage_Staff.3DS";
	description = "Kostur maga wody";
	effect="SPELLFX_WatterGlimmer";
	text[0] = "Obr. Magiczne";
	count[0] = damagetotal;
	text[1] = NAME_RANGE;
	count[1] = 110;
	text[2] = NAME_MANA_NEEDED;
	count[2] = cond_value[2];
	text[3] = "Bonus many: ";
	count[3] = 20;
	text[4] = "Szansa na wyzwolenie mocy [%]";
	count[4] = 5;
	text[5] = NAME_VALUE;
	count[5] = value;
};
func int equip_WatterStaff()
{
if (Npc_IsPlayer(self))
{
hero.attribute[ATR_MANA_MAX]+=20;
hero.attribute[ATR_MANA]+=20;
StaffEquiped=true;
	};
	Mdl_ApplyOverlayMds(self,"HUM_STAFF_ST1");
};

func void unequip_WatterStaff()
{
if (Npc_IsPlayer(self))
{
Mdl_RemoveOverlayMds(self,"HUM_STAFF_ST1");
hero.attribute[ATR_MANA_MAX]-=20;
hero.attribute[ATR_MANA]-=20;
StaffEquiped=false;
	};
};

instance ITMW_XardasStaff(C_ITEM)
{
	//name = "Kostur";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD;
	material = MAT_WOOD;
//	value = VALUE_FLAMEBERGE;
	damagetotal = 1;
	damagetype = DAM_MAGIC;
	range = 1;
	//on_equip = equip_DarkStaff;
	//on_unequip = unequip_DarkStaff;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = 1;
	visual = "ChaosStaff.3DS";
	//description = "Kostur chaosu";
	effect="SPELLFX_DarkGlimmer";
	//text[0] = "Obr. Magiczne";
	//count[0] = damagetotal;
	//text[1] = NAME_RANGE;
	//count[1] = 120;
	//text[2] = NAME_MANA_NEEDED;
	//count[2] = cond_value[2];
	//text[3] = "Bonus many: ";
	//count[3] = 40;
	//text[4] = "Szansa na wyzwolenie mocy [%]";
	//count[4] = 4;
	//text[5] = NAME_VALUE;
	//count[5] = value;
};

/******************************/
instance ITMW_DarkStaff(C_ITEM)
{
	name = "Kostur";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD;
	material = MAT_WOOD;
	value = VALUE_FLAMEBERGE*2;
	damagetotal = 100;
	damagetype = DAM_MAGIC;
	range = 120;
	on_equip = equip_DarkStaff;
	on_unequip = unequip_DarkStaff;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = 120;
	visual = "ChaosStaff.3DS";
	description = "Kostur chaosu";
	effect="SPELLFX_DarkGlimmer";
	text[0] = "Obr. Magiczne";
	count[0] = damagetotal;
	text[1] = NAME_RANGE;
	count[1] = 120;
	text[2] = NAME_MANA_NEEDED;
	count[2] = cond_value[2];
	text[3] = "Bonus many: ";
	count[3] = 40;
	text[4] = "Szansa na wyzwolenie mocy [%]";
	count[4] = 4;
	text[5] = NAME_VALUE;
	count[5] = value;
};
func int equip_DarkStaff()
{
if (Npc_IsPlayer(self))
{
hero.attribute[ATR_MANA_MAX]+=40;
hero.attribute[ATR_MANA]+=40;
StaffEquiped=true;
};
Mdl_ApplyOverlayMds(self,"HUM_STAFF_ST1");
};

func void unequip_DarkStaff()
{
if (Npc_IsPlayer(self))
{
Mdl_RemoveOverlayMds(self,"HUM_STAFF_ST1");
hero.attribute[ATR_MANA_MAX]-=40;
hero.attribute[ATR_MANA]-=40;
StaffEquiped=false;
	};
};

instance ITMW_FireStaff(C_ITEM)
{
	name = "Kostur";
	mainflag = ITEM_KAT_NF;
	flags = ITEM_2HD_SWD;
	material = MAT_WOOD;
	value = 500;
	damagetotal = 45;
	damagetype = DAM_MAGIC;
	range = 110;
	on_equip = equip_WatterStaff;
	on_unequip = unequip_WatterStaff;
	cond_atr[2] = ATR_MANA_MAX;
	cond_value[2] = 60;
	visual = "FireMageStaff.3DS";
	description = "Kostur maga ognia";
	effect="SPELLFX_FireBow";
	text[0] = "Obr. Magiczne";
	count[0] = damagetotal;
	text[1] = NAME_RANGE;
	count[1] = 110;
	text[2] = NAME_MANA_NEEDED;
	count[2] = cond_value[2];
	text[3] = "Bonus many: ";
	count[3] = 20;
	text[4] = "Szansa na wyzwolenie mocy [%]";
	count[4] = 5;
	text[5] = NAME_VALUE;
	count[5] = value;
};