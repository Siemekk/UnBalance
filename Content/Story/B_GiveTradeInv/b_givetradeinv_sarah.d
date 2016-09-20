
var int sarah_itemsgiven_chapter_1;
var int sarah_itemsgiven_chapter_2;
var int sarah_itemsgiven_chapter_3;
var int sarah_itemsgiven_chapter_4;
var int sarah_itemsgiven_chapter_5;

func void b_givetradeinv_sarah(var C_NPC slf)
{
	if((KAPITEL >= 1) && (SARAH_ITEMSGIVEN_CHAPTER_1 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,20);
		CreateInvItems(slf,itmw_1h_vlk_sword,1);
		CreateInvItems(slf,itmw_1h_assblade_Left,1);
		CreateInvItems(slf,ITMW_1H_ASSBLADE_RIGHT,1);
		CreateInvItems(slf,itmw_1h_assn_dagger,1);
		CreateInvItems(slf,itmw_meisterdegen,1);
		SARAH_ITEMSGIVEN_CHAPTER_1 = TRUE;
	};
	if((KAPITEL >= 2) && (SARAH_ITEMSGIVEN_CHAPTER_2 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,20);
		CreateInvItems(slf,itmw_1h_vlk_sword,1);
		SARAH_ITEMSGIVEN_CHAPTER_2 = TRUE;
	};
	if((KAPITEL >= 3) && (SARAH_ITEMSGIVEN_CHAPTER_3 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,25);
		CreateInvItems(slf,itmw_meisterdegen,1);
		SARAH_ITEMSGIVEN_CHAPTER_3 = TRUE;
	};
	if((KAPITEL >= 4) && (SARAH_ITEMSGIVEN_CHAPTER_4 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,100);
		CreateInvItems(slf,itmw_1h_assn_dagger,1);
		SARAH_ITEMSGIVEN_CHAPTER_4 = TRUE;
	};
	if((KAPITEL >= 5) && (SARAH_ITEMSGIVEN_CHAPTER_5 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,200);
		CreateInvItems(slf,itmw_katana,1);
		SARAH_ITEMSGIVEN_CHAPTER_5 = TRUE;
	};
};

