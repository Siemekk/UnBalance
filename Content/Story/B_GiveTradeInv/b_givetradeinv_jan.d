
var int jan_itemsgiven_chapter_1;
var int jan_itemsgiven_chapter_2;
var int jan_itemsgiven_chapter_3;
var int jan_itemsgiven_chapter_4;
var int jan_itemsgiven_chapter_5;

func void b_givetradeinv_jan(var C_NPC slf)
{
	if((KAPITEL >= 1) && (JAN_ITEMSGIVEN_CHAPTER_1 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,100);
		JAN_ITEMSGIVEN_CHAPTER_1 = TRUE;
	};
	if((KAPITEL >= 2) && (JAN_ITEMSGIVEN_CHAPTER_2 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,250);
		JAN_ITEMSGIVEN_CHAPTER_2 = TRUE;
	};
	if((KAPITEL >= 3) && (JAN_ITEMSGIVEN_CHAPTER_3 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,450);
		JAN_ITEMSGIVEN_CHAPTER_3 = TRUE;
	};
	if((KAPITEL >= 4) && (JAN_ITEMSGIVEN_CHAPTER_4 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,700);
		CreateInvItems(slf,itmi_steelbar,2);
		CreateInvItems(slf,itmi_leather,1);
		CreateInvItems(slf,itmi_nugget,1);
		CreateInvItems(slf,itwr_smithmasterbook_lvl2,1);
		CreateInvItems(slf,itwr_smithmasterbook_lvl3,1);
		JAN_ITEMSGIVEN_CHAPTER_4 = TRUE;
	};
	if((KAPITEL >= 5) && (JAN_ITEMSGIVEN_CHAPTER_5 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,1100);
		CreateInvItems(slf,itmi_steelbar,5);
		CreateInvItems(slf,itmi_leather,3);
		JAN_ITEMSGIVEN_CHAPTER_5 = TRUE;
	};
};

