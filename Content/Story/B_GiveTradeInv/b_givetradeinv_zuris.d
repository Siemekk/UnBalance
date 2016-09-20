
var int zuris_itemsgiven_chapter_1;
var int zuris_itemsgiven_chapter_2;
var int zuris_itemsgiven_chapter_3;
var int zuris_itemsgiven_chapter_4;
var int zuris_itemsgiven_chapter_5;

func void b_givetradeinv_zuris(var C_NPC slf)
{
	if((KAPITEL >= 1) && (ZURIS_ITEMSGIVEN_CHAPTER_1 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,100);
		CreateInvItems(slf,itpo_mana_01,10);
		CreateInvItems(slf,itpo_health_01,10);
		CreateInvItems(slf,itpo_health_addon_04,2);
		CreateInvItems(slf,itpo_mana_addon_04,2);
		CreateInvItems(slf,itmi_apfeltabak,2);
		CreateInvItems(slf,itfo_addon_pfeffer_01,1);
		
		
		CreateInvItems (self, ItPo_Time_STR_1,1);
		CreateInvItems (self, ItPo_Time_STR_2,1);
		CreateInvItems (self, Itpo_TIME_DEX_1,1);
		CreateInvItems (self, Itpo_TIME_DEX_2,1);
		CreateInvItems (self, Itpo_TIME_HP_1,3);
		CreateInvItems (self, Itpo_TIME_HP_2,2);
		CreateInvItems (self, Itpo_TIME_MP_1,2);
		CreateInvItems (self, Itpo_TIME_MP_2,2);
		CreateInvItems (self, Itpo_TIME_EDGE_1,1);
		CreateInvItems (self, Itpo_TIME_EDGE_2,1);
		CreateInvItems (self, Itpo_TIME_Magic_1,1);
		CreateInvItems (self, Itpo_TIME_Magic_2,1);
		CreateInvItems (self, Itpo_TIME_StunBash,1);
			
		
		
		ZURIS_ITEMSGIVEN_CHAPTER_1 = TRUE;
	};
	if((KAPITEL >= 2) && (ZURIS_ITEMSGIVEN_CHAPTER_2 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,60);
		CreateInvItems(slf,itpo_health_addon_04,2);
		CreateInvItems(slf,itpo_mana_addon_04,2);
		CreateInvItems(slf,itpo_mana_01,15);
		CreateInvItems(slf,itpo_mana_02,1);
		CreateInvItems(slf,itpo_health_01,15);
		CreateInvItems(slf,itpo_health_02,2);
		CreateInvItems(slf,itmi_apfeltabak,5);
		CreateInvItems(slf,itpo_perm_str,1);
		ZURIS_ITEMSGIVEN_CHAPTER_2 = TRUE;
	};
	if((KAPITEL >= 3) && (ZURIS_ITEMSGIVEN_CHAPTER_3 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,120);
		CreateInvItems(slf,itpo_health_addon_04,2);
		CreateInvItems(slf,itpo_mana_addon_04,2);
		CreateInvItems(slf,itpo_mana_01,25);
		CreateInvItems(slf,itpo_mana_02,3);
		CreateInvItems(slf,itpo_health_01,25);
		CreateInvItems(slf,itpo_health_02,15);
		CreateInvItems(slf,itpo_perm_mana,1);
		CreateInvItems(slf,itpo_speed,1);
		CreateInvItems (self, ItPo_Time_STR_1,1);
		CreateInvItems (self, ItPo_Time_STR_2,1);
		CreateInvItems (self, Itpo_TIME_DEX_1,1);
		CreateInvItems (self, Itpo_TIME_DEX_2,1);
		CreateInvItems (self, Itpo_TIME_HP_1,3);
		CreateInvItems (self, Itpo_TIME_HP_2,2);
		CreateInvItems (self, Itpo_TIME_MP_1,2);
		CreateInvItems (self, Itpo_TIME_MP_2,2);
		CreateInvItems (self, Itpo_TIME_EDGE_1,1);
		CreateInvItems (self, Itpo_TIME_EDGE_2,1);
		CreateInvItems (self, Itpo_TIME_Magic_1,1);
		CreateInvItems (self, Itpo_TIME_Magic_2,1);
		CreateInvItems (self, Itpo_TIME_StunBash,1);
		
		CreateInvItems (self, Itwr_Magic_Cage,1);
		ZURIS_ITEMSGIVEN_CHAPTER_3 = TRUE;
	};
	if((KAPITEL >= 4) && (ZURIS_ITEMSGIVEN_CHAPTER_4 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,220);
		CreateInvItems(slf,itpo_health_addon_04,3);
		CreateInvItems(slf,itpo_mana_addon_04,3);
		CreateInvItems(slf,itpo_mana_01,35);
		CreateInvItems(slf,itpo_mana_02,15);
		CreateInvItems(slf,itpo_health_01,35);
		CreateInvItems(slf,itpo_health_02,20);
		CreateInvItems(slf,itpo_health_03,10);
		CreateInvItems(slf,itpo_perm_mana,1);
		CreateInvItems(slf,itpo_speed,1);
		CreateInvItems (self, ItPo_Time_STR_1,1);
		CreateInvItems (self, ItPo_Time_STR_2,1);
		CreateInvItems (self, Itpo_TIME_DEX_1,1);
		CreateInvItems (self, Itpo_TIME_DEX_2,1);
		CreateInvItems (self, Itpo_TIME_HP_1,3);
		CreateInvItems (self, Itpo_TIME_HP_2,2);
		CreateInvItems (self, Itpo_TIME_MP_1,2);
		CreateInvItems (self, Itpo_TIME_MP_2,2);
		CreateInvItems (self, Itpo_TIME_EDGE_1,1);
		CreateInvItems (self, Itpo_TIME_EDGE_2,1);
		CreateInvItems (self, Itpo_TIME_Magic_1,1);
		CreateInvItems (self, Itpo_TIME_Magic_2,1);
		CreateInvItems (self, Itpo_TIME_StunBash,1);
		ZURIS_ITEMSGIVEN_CHAPTER_4 = TRUE;
	};
	if((KAPITEL >= 5) && (ZURIS_ITEMSGIVEN_CHAPTER_5 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,321);
		CreateInvItems(slf,itpo_health_addon_04,5);
		CreateInvItems(slf,itpo_mana_addon_04,5);
		CreateInvItems(slf,itpo_mana_01,55);
		CreateInvItems(slf,itpo_mana_02,35);
		CreateInvItems(slf,itpo_mana_03,15);
		CreateInvItems(slf,itpo_health_01,55);
		CreateInvItems(slf,itpo_health_02,30);
		CreateInvItems(slf,itpo_health_03,20);
		CreateInvItems(slf,itpo_perm_health,1);
		CreateInvItems (self, ItPo_Time_STR_1,1);
		CreateInvItems (self, ItPo_Time_STR_2,1);
		CreateInvItems (self, Itpo_TIME_DEX_1,1);
		CreateInvItems (self, Itpo_TIME_DEX_2,1);
		CreateInvItems (self, Itpo_TIME_HP_1,3);
		CreateInvItems (self, Itpo_TIME_HP_2,2);
		CreateInvItems (self, Itpo_TIME_MP_1,2);
		CreateInvItems (self, Itpo_TIME_MP_2,2);
		CreateInvItems (self, Itpo_TIME_EDGE_1,1);
		CreateInvItems (self, Itpo_TIME_EDGE_2,1);
		CreateInvItems (self, Itpo_TIME_Magic_1,1);
		CreateInvItems (self, Itpo_TIME_Magic_2,1);
		CreateInvItems (self, Itpo_TIME_StunBash,1);
		CreateInvItems(slf,itpo_speed,1);
		ZURIS_ITEMSGIVEN_CHAPTER_5 = TRUE;
	};
};

