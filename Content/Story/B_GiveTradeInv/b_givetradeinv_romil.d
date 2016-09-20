
var int romil_itemsgiven_chapter_1;
var int romil_itemsgiven_chapter_2;
var int romil_itemsgiven_chapter_3;
var int romil_itemsgiven_chapter_4;
var int romil_itemsgiven_chapter_5;

func void b_givetradeinv_romil(var C_NPC slf)
{
	if((KAPITEL >= 1) && (ROMIL_ITEMSGIVEN_CHAPTER_1 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,31);
		CreateInvItems(slf,itfo_bacon,3);
		CreateInvItems(slf,itfo_sausage,5);
		CreateInvItems(slf,itfomuttonraw,11);
		ROMIL_ITEMSGIVEN_CHAPTER_1 = TRUE;
	};
	if((KAPITEL >= 2) && (ROMIL_ITEMSGIVEN_CHAPTER_2 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,60);
		CreateInvItems(slf,itfo_bacon,1);
		CreateInvItems(slf,itfo_sausage,2);
		CreateInvItems(slf,itfomuttonraw,5);
		ROMIL_ITEMSGIVEN_CHAPTER_2 = TRUE;
	};
	if((KAPITEL >= 3) && (ROMIL_ITEMSGIVEN_CHAPTER_3 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,120);
		CreateInvItems(slf,itfo_bacon,1);
		CreateInvItems(slf,itfo_sausage,4);
		CreateInvItems(slf,itfomuttonraw,10);
		ROMIL_ITEMSGIVEN_CHAPTER_3 = TRUE;
	};
	if((KAPITEL >= 4) && (ROMIL_ITEMSGIVEN_CHAPTER_4 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,220);
		CreateInvItems(slf,itfo_sausage,1);
		CreateInvItems(slf,itfomuttonraw,4);
		ROMIL_ITEMSGIVEN_CHAPTER_4 = TRUE;
	};
	if((KAPITEL >= 5) && (ROMIL_ITEMSGIVEN_CHAPTER_5 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,321);
		CreateInvItems(slf,itfo_bacon,2);
		ROMIL_ITEMSGIVEN_CHAPTER_5 = TRUE;
	};
};

