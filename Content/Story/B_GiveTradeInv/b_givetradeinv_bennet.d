
var int bennet_itemsgiven_chapter_1;
var int bennet_itemsgiven_chapter_2;
var int bennet_itemsgiven_chapter_3;
var int bennet_itemsgiven_chapter_4;
var int bennet_itemsgiven_chapter_5;

func void b_givetradeinv_bennet(var C_NPC slf)
{
	if((KAPITEL >= 1) && (BENNET_ITEMSGIVEN_CHAPTER_1 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,100);
		CreateInvItems(slf,itmi_steelbar,3);
		CreateInvItems(slf,itmi_textile,1);
		CreateInvItems(slf,itmi_leather,3);
		CreateInvItems(slf,itmi_woodbar,2);
		CreateInvItems(slf,itwr_addon_sldbocrft_01,1);
		CreateInvItems(slf,itwr_smithmasterbook_lvl1,1);
		CreateInvItems(slf,itmw_kriegshammer1,1);
		CreateInvItems(slf,itmw_1h_mace_l_04,2);
		CreateInvItems(slf,itbe_addon_sld_01,1);
		CreateInvItems(slf,ITAR_Helm_SLD,1);
		BENNET_ITEMSGIVEN_CHAPTER_1 = TRUE;
	};
	if((KAPITEL >= 2) && (BENNET_ITEMSGIVEN_CHAPTER_2 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,250);
		CreateInvItems(slf,itmi_steelbar,2);
		CreateInvItems(slf,itmi_leather,1);
		BENNET_ITEMSGIVEN_CHAPTER_2 = TRUE;
	};
	if((KAPITEL >= 3) && (BENNET_ITEMSGIVEN_CHAPTER_3 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,450);
		CreateInvItems(slf,itmi_steelbar,3);
		CreateInvItems(slf,itmi_leather,1);
		CreateInvItems(slf,itmi_nugget,1);
		CreateInvItems(slf,itbe_addon_mc,1);
		CreateInvItems(slf,itmw_1h_moonblade_left,1);
		CreateInvItems(slf,itmw_1h_moonblade_right,1);
		BENNET_ITEMSGIVEN_CHAPTER_3 = TRUE;
	};
	if((KAPITEL >= 4) && (BENNET_ITEMSGIVEN_CHAPTER_4 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,700);
		CreateInvItems(slf,itmi_steelbar,1);
		CreateInvItems(slf,itmi_nugget,2);
		BENNET_ITEMSGIVEN_CHAPTER_4 = TRUE;
	};
	if((KAPITEL >= 5) && (BENNET_ITEMSGIVEN_CHAPTER_5 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,1100);
		CreateInvItems(slf,itmi_steelbar,5);
		CreateInvItems(slf,itmi_leather,3);
		CreateInvItems(slf,itmi_nugget,2);
		BENNET_ITEMSGIVEN_CHAPTER_5 = TRUE;
	};
};

