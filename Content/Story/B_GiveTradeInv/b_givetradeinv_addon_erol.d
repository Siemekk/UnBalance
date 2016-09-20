
var int erol_itemsgiven_chapter_1;
var int erol_itemsgiven_chapter_2;
var int erol_itemsgiven_chapter_3;
var int erol_itemsgiven_chapter_4;
var int erol_itemsgiven_chapter_5;

func void b_givetradeinv_addon_erol(var C_NPC slf)
{
	if((KAPITEL >= 1) && (EROL_ITEMSGIVEN_CHAPTER_1 == FALSE))
	{
		CreateInvItems(slf,itfo_water,5);
		CreateInvItems(slf,itfo_bread,3);
		CreateInvItems(slf,itfo_cheese,2);
		CreateInvItems(slf,itpo_perm_health,1);
		CreateInvItems(slf,itmi_textile,1);
		CreateInvItems(slf,itmi_leather,1);
		CreateInvItems(slf,itmw_streitaxt2,1);
		CreateInvItems(slf,itmw_schwert5,2);
		CreateInvItems(slf,itmw_kriegshammer2,1);
		CreateInvItems(slf,itmw_shortsword5,1);
		CreateInvItems(slf,itmw_zweihaender1,1);
		CreateInvItems(slf,itri_prot_edge_01,1);
		CreateInvItems(slf,itam_strg_01,1);
		EROL_ITEMSGIVEN_CHAPTER_1 = TRUE;
	};
	if((KAPITEL >= 2) && (EROL_ITEMSGIVEN_CHAPTER_2 == FALSE))
	{
		CreateInvItems(slf,itfo_water,1);
		CreateInvItems(slf,itfo_bread,2);
		CreateInvItems(slf,itfo_cheese,3);
		CreateInvItems(slf,itmi_textile,2);
		CreateInvItems(slf,itmi_leather,2);
		EROL_ITEMSGIVEN_CHAPTER_2 = TRUE;
	};
	if((KAPITEL >= 3) && (EROL_ITEMSGIVEN_CHAPTER_3 == FALSE))
	{
		CreateInvItems(slf,itmi_textile,1);
		CreateInvItems(slf,itmi_leather,1);
		CreateInvItems(slf,itfo_cheese,2);
		EROL_ITEMSGIVEN_CHAPTER_3 = TRUE;
	};
	if((KAPITEL >= 4) && (EROL_ITEMSGIVEN_CHAPTER_4 == FALSE))
	{
		CreateInvItems(slf,itfo_cheese,1);
		CreateInvItems(slf,itfomutton,2);
		CreateInvItems(slf,itfo_stew,3);
		CreateInvItems(slf,itfo_fishsoup,4);
		EROL_ITEMSGIVEN_CHAPTER_4 = TRUE;
	};
	if((KAPITEL >= 5) && (EROL_ITEMSGIVEN_CHAPTER_5 == FALSE))
	{
		CreateInvItems(slf,itmi_textile,3);
		CreateInvItems(slf,itmi_leather,1);
		EROL_ITEMSGIVEN_CHAPTER_5 = TRUE;
	};
};

