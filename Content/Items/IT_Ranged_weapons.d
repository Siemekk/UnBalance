func void Equip_Quivers()
{
	if(Npc_HasItems(hero,ITRW_Arrow)==0)
	{
	Ext_PutInSlot(self,"BIP01 R CLAVICLE","Quiver_WithOut_Arrows");	
	}
	else if(Npc_HasItems(hero,ITRW_Arrow)==1)
	{
	Ext_PutInSlot(self,"BIP01 R CLAVICLE","Quiver_1_Arrow");	
	}
	else if(Npc_HasItems(hero,ITRW_Arrow)==2) 
	{
	Ext_PutInSlot(self,"BIP01 R CLAVICLE","Quiver_2_Arrow");	
	}
	else if(Npc_HasItems(hero,ITRW_Arrow)==3)
	{
	Ext_PutInSlot(self,"BIP01 R CLAVICLE","Quiver_3_Arrow");	
	}
	else if(Npc_HasItems(hero,ITRW_Arrow)==4) 
	{
	Ext_PutInSlot(self,"BIP01 R CLAVICLE","Quiver_4_Arrow");	
	}
	else if(Npc_HasItems(hero,ITRW_Arrow)==5) 
	{
	Ext_PutInSlot(self,"BIP01 R CLAVICLE","Quiver_5_Arrow");	
	}
	else if(Npc_HasItems(hero,ITRW_Arrow)==6) 
	{
	Ext_PutInSlot(self,"BIP01 R CLAVICLE","Quiver_6_Arrow");	
	}
	else if(Npc_HasItems(hero,ITRW_Arrow)>=7)
	{
	Ext_PutInSlot(self,"BIP01 R CLAVICLE","Quiver_MAX_Arrow");	
	};

};

func void Equip_BOW()
{

	if(Npc_IsPlayer(self))
	{
	Snd_Play3d(hero,"Equip_Weapon_Bow");
	Equip_Quivers();	
	};
};
func void UnEquip_BOW()
{
	if(Npc_IsPlayer(self))
	{
	Ext_PutInSlot(self,"BIP01 R CLAVICLE","nic");
	};
};

func void Equip_CrossBOW()
{
	if(Npc_IsPlayer(self))
	{
	Snd_Play3d(hero,"Equip_Weapon_Bow");
	Ext_PutInSlot(self,"BIP01 SPINE","ITSL_BACKBOLTSACK_01");
	};
};

func void UnEquip_CrossBOW()
{
	if(Npc_IsPlayer(self))
	{
	Ext_PutInSlot(hero,"BIP01 SPINE","nic");
	};
};

Prototype Bowsall(C_Item)
{
mainflag 				=	ITEM_KAT_FF;
flags 					=	ITEM_BOW;
On_equip				=	Equip_BOW;
on_unequip			=	UnEquip_BOW;
};

Prototype Crossbowall  (C_Item)
{
mainflag 			=	ITEM_KAT_FF;
flags 				=	ITEM_BOW;
On_equip			=	Equip_CrossBOW;
on_unequip		=	UnEquip_CrossBOW;
};

instance ITRW_ARROW(C_ITEM)
{
	name = "Strza³a";
	mainflag = ITEM_KAT_MUN;
	flags = ITEM_BOW | ITEM_MULTI;
	value = 3;
	visual = "ItRw_Arrow.3ds";
	material = MAT_WOOD;
	description = name;
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRW_BOLT(C_ITEM)
{
	name = "Be³t";
	mainflag = ITEM_KAT_MUN;
	flags = ITEM_CROSSBOW | ITEM_MULTI;
	value = 3;
	visual = "ItRw_Bolt.3ds";
	material = MAT_WOOD;
	description = name;
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRW_MIL_CROSSBOW(Crossbowall)
{
	name = "Kusza";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = VALUE_MILARMBRUST;
	damagetotal = DAMAGE_MILARMBRUST;
	damagetype = DAM_POINT;
	munition = itrw_bolt;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = CONDITION_MILARMBRUST;
	visual = "ItRw_Mil_Crossbow.mms";
	description = name;
	text[2] = NAME_DAMAGE;
	count[2] = damagetotal;
	text[3] = NAME_STR_NEEDED;
	count[3] = cond_value[2];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRW_SLD_BOW(Bowsall)
{
	name = "£uk";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_SLDBOGEN;
	damagetotal = DAMAGE_SLDBOGEN;
	damagetype = DAM_POINT;
	munition = itrw_arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_SLDBOGEN;
	visual = "ItRw_Sld_Bow.mms";
	description = name;
	text[2] = NAME_DAMAGE;
	count[2] = damagetotal;
	text[3] = NAME_DEX_NEEDED;
	count[3] = cond_value[2];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRW_BOW_L_01(Bowsall)
{
	name = "Krótki ³uk";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_KURZBOGEN;
	damagetotal = DAMAGE_KURZBOGEN;
	damagetype = DAM_POINT;
	munition = itrw_arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_KURZBOGEN;
	visual = "ItRw_Bow_L_01.mms";
	description = name;
	text[2] = NAME_DAMAGE;
	count[2] = damagetotal;
	text[3] = NAME_DEX_NEEDED;
	count[3] = cond_value[2];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRW_BOW_L_02(Bowsall)
{
	name = "£uk wierzbowy";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_WEIDENBOGEN;
	damagetotal = DAMAGE_WEIDENBOGEN;
	damagetype = DAM_POINT;
	munition = itrw_arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_WEIDENBOGEN;
	visual = "ItRw_Bow_L_02.mms";
	description = name;
	text[2] = NAME_DAMAGE;
	count[2] = damagetotal;
	text[3] = NAME_DEX_NEEDED;
	count[3] = cond_value[2];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRW_BOW_L_03(Bowsall)
{
	name = "£uk myœliwski";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_JAGDBOGEN;
	damagetotal = DAMAGE_JAGDBOGEN;
	damagetype = DAM_POINT;
	munition = itrw_arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_JAGDBOGEN;
	visual = "ItRw_Bow_M_01.mms";
	description = name;
	text[2] = NAME_DAMAGE;
	count[2] = damagetotal;
	text[3] = NAME_DEX_NEEDED;
	count[3] = cond_value[2];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRW_BOW_L_04(Bowsall)
{
	name = "£uk z wi¹zu";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_ULMENBOGEN;
	damagetotal = DAMAGE_ULMENBOGEN;
	damagetype = DAM_POINT;
	munition = itrw_arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_ULMENBOGEN;
	visual = "ItRw_Bow_M_02.mms";
	description = name;
	text[2] = NAME_DAMAGE;
	count[2] = damagetotal;
	text[3] = NAME_DEX_NEEDED;
	count[3] = cond_value[2];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRW_BOW_M_01(Bowsall)
{
	name = "£uk kompozytowy";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_KOMPOSITBOGEN;
	damagetotal = DAMAGE_KOMPOSITBOGEN;
	damagetype = DAM_POINT;
	munition = itrw_arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_KOMPOSITBOGEN;
	visual = "ItRw_Bow_M_01.mms";
	description = name;
	text[2] = NAME_DAMAGE;
	count[2] = damagetotal;
	text[3] = NAME_DEX_NEEDED;
	count[3] = cond_value[2];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRW_BOW_M_02(Bowsall)
{
	name = "£uk jesionowy";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_ESCHENBOGEN;
	damagetotal = DAMAGE_ESCHENBOGEN;
	damagetype = DAM_POINT;
	munition = itrw_arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_ESCHENBOGEN;
	visual = "ItRw_Bow_M_02.mms";
	description = name;
	text[2] = NAME_DAMAGE;
	count[2] = damagetotal;
	text[3] = NAME_DEX_NEEDED;
	count[3] = cond_value[2];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRW_BOW_M_03(Bowsall)
{
	name = "D³ugi ³uk";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_LANGBOGEN;
	damagetotal = DAMAGE_LANGBOGEN;
	damagetype = DAM_POINT;
	munition = itrw_arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_LANGBOGEN;
	visual = "ItRw_Bow_M_03.mms";
	description = name;
	text[2] = NAME_DAMAGE;
	count[2] = damagetotal;
	text[3] = NAME_DEX_NEEDED;
	count[3] = cond_value[2];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRW_BOW_M_04(Bowsall)
{
	name = "£uk bukowy";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_BUCHENBOGEN;
	damagetotal = DAMAGE_BUCHENBOGEN;
	damagetype = DAM_POINT;
	munition = itrw_arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_BUCHENBOGEN;
	visual = "ItRw_Bow_M_04.mms";
	description = name;
	text[2] = NAME_DAMAGE;
	count[2] = damagetotal;
	text[3] = NAME_DEX_NEEDED;
	count[3] = cond_value[2];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRW_BOW_H_01(Bowsall)
{
	name = "Koœciany ³uk";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_KNOCHENBOGEN;
	damagetotal = DAMAGE_KNOCHENBOGEN;
	damagetype = DAM_POINT;
	munition = itrw_arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_KNOCHENBOGEN;
	visual = "ItRw_Bow_H_01.mms";
	description = name;
	text[2] = NAME_DAMAGE;
	count[2] = damagetotal;
	text[3] = NAME_DEX_NEEDED;
	count[3] = cond_value[2];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRW_BOW_H_02(Bowsall)
{
	name = "£uk dêbowy";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_EICHENBOGEN;
	damagetotal = DAMAGE_EICHENBOGEN;
	damagetype = DAM_POINT;
	munition = itrw_arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_EICHENBOGEN;
	visual = "ItRw_Bow_H_02.mms";
	description = name;
	text[2] = NAME_DAMAGE;
	count[2] = damagetotal;
	text[3] = NAME_DEX_NEEDED;
	count[3] = cond_value[2];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRW_BOW_H_03(Bowsall)
{
	name = "£uk wojenny";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_KRIEGSBOGEN;
	damagetotal = DAMAGE_KRIEGSBOGEN;
	damagetype = DAM_POINT;
	munition = itrw_arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_KRIEGSBOGEN;
	visual = "ItRw_Bow_H_03.mms";
	description = name;
	text[2] = NAME_DAMAGE;
	count[2] = damagetotal;
	text[3] = NAME_DEX_NEEDED;
	count[3] = cond_value[2];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRW_BOW_H_04(Bowsall)
{
	name = "Smoczy ³uk";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW;
	material = MAT_WOOD;
	value = VALUE_DRACHENBOGEN;
	damagetotal = DAMAGE_DRACHENBOGEN;
	damagetype = DAM_POINT;
	munition = itrw_arrow;
	cond_atr[2] = ATR_DEXTERITY;
	cond_value[2] = CONDITION_DRACHENBOGEN;
	visual = "ItRw_Bow_H_04.mms";
	description = name;
	text[2] = NAME_DAMAGE;
	count[2] = damagetotal;
	text[3] = NAME_DEX_NEEDED;
	count[3] = cond_value[2];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRW_CROSSBOW_L_01(Crossbowall)
{
	name = "Kusza myœliwska";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = VALUE_JAGDARMBRUST;
	damagetotal = DAMAGE_JAGDARMBRUST;
	damagetype = DAM_POINT;
	munition = itrw_bolt;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = CONDITION_JAGDARMBRUST;
	visual = "ItRw_Crossbow_L_01.mms";
	description = name;
	text[2] = NAME_DAMAGE;
	count[2] = damagetotal;
	text[3] = NAME_STR_NEEDED;
	count[3] = cond_value[2];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRW_CROSSBOW_L_02(Crossbowall)
{
	name = "Lekka kusza";
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

instance ITRW_CROSSBOW_M_01(Crossbowall)
{
	name = "Kusza";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = VALUE_ARMBRUST;
	damagetotal = DAMAGE_ARMBRUST;
	damagetype = DAM_POINT;
	munition = itrw_bolt;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = CONDITION_ARMBRUST;
	visual = "ItRw_Crossbow_M_01.mms";
	description = name;
	text[2] = NAME_DAMAGE;
	count[2] = damagetotal;
	text[3] = NAME_STR_NEEDED;
	count[3] = cond_value[2];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRW_CROSSBOW_M_02(Crossbowall)
{
	name = "Kusza bojowa";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = VALUE_KRIEGSARMBRUST;
	damagetotal = DAMAGE_KRIEGSARMBRUST;
	damagetype = DAM_POINT;
	munition = itrw_bolt;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = CONDITION_KRIEGSARMBRUST;
	visual = "ItRw_Crossbow_M_02.mms";
	description = name;
	text[2] = NAME_DAMAGE;
	count[2] = damagetotal;
	text[3] = NAME_STR_NEEDED;
	count[3] = cond_value[2];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRW_CROSSBOW_H_01(Crossbowall)
{
	name = "Ciê¿ka kusza";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = VALUE_SCHWEREARMBRUST;
	damagetotal = DAMAGE_SCHWEREARMBRUST;
	damagetype = DAM_POINT;
	munition = itrw_bolt;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = CONDITION_SCHWEREARMBRUST;
	visual = "ItRw_Crossbow_H_01.mms";
	description = name;
	text[2] = NAME_DAMAGE;
	count[2] = damagetotal;
	text[3] = NAME_STR_NEEDED;
	count[3] = cond_value[2];
	text[5] = NAME_VALUE;
	count[5] = value;
};

instance ITRW_CROSSBOW_H_02(Crossbowall)
{
	name = "Kusza ³owcy smoków";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_CROSSBOW;
	material = MAT_WOOD;
	value = VALUE_DRACHENJAEGERARMBRUST;
	damagetotal = DAMAGE_DRACHENJAEGERARMBRUST;
	damagetype = DAM_POINT;
	munition = itrw_bolt;
	cond_atr[2] = ATR_STRENGTH;
	cond_value[2] = CONDITION_DRACHENJAEGERARMBRUST;
	visual = "ItRw_Crossbow_H_02.mms";
	description = name;
	text[2] = NAME_DAMAGE;
	count[2] = damagetotal;
	text[3] = NAME_STR_NEEDED;
	count[3] = cond_value[2];
	text[5] = NAME_VALUE;
	count[5] = value;
};
/***************************************************************/
Instance ItRw_PoisonArrow(C_Item)
{
	name = "Zatruta strza³a";
	mainflag = ITEM_KAT_MUN;
	flags = ITEM_BOW | ITEM_MULTI | ITEM_MISSION;
	value = 25;
	visual = "ItRw_Arrow.3ds";
	material = MAT_WOOD;
	description = name;
	text[4] = "Lepiej ich nie u¿ywaæ... Nie wiadomo jak¹ plagê mo¿na roznieœæ.";
	text[5] = NAME_Value;
	count[5] = value;
};

instance Itrw_CursedBow(Bowsall)
{
	
	name = "£uk potêpionych";
	mainflag = ITEM_KAT_FF;
	flags = ITEM_BOW | ITEM_MISSION;
	material = MAT_WOOD;
	value = Value_Knochenbogen;
	damagetype = DAM_POINT;
	damage[DAM_INDEX_POINT] = Damage_Knochenbogen;
	damageTotal = Damage_Knochenbogen;
	cond_atr[1] = ATR_MANA_MAX;
	cond_value[1] = 666666;
	munition = ItRw_PoisonArrow;
	visual = "ItRw_Bow_H_01.mms";
	description = name;
};
/***************************************************************/

