
var int baltram_itemsgiven_chapter_1;
var int baltram_itemsgiven_chapter_2;
var int baltram_itemsgiven_chapter_3;
var int baltram_itemsgiven_chapter_4;
var int baltram_itemsgiven_chapter_5;

func void b_givetradeinv_baltram(var C_NPC slf)
{
	if((KAPITEL >= 1) && (BALTRAM_ITEMSGIVEN_CHAPTER_1 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,100);
		CreateInvItems(slf,itfo_water,5);
		CreateInvItems(slf,itfo_bread,4);
		CreateInvItems(slf,itfo_cheese,2);
		CreateInvItems(slf,itfo_sausage,2);
		CreateInvItems(slf,itfo_honey,1);
		CreateInvItems(slf,itfo_milk,3);
		BALTRAM_ITEMSGIVEN_CHAPTER_1 = TRUE;
	};
	if((KAPITEL >= 2) && (BALTRAM_ITEMSGIVEN_CHAPTER_2 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,100);
		CreateInvItems(slf,itfo_bread,3);
		CreateInvItems(slf,itfo_water,2);
		CreateInvItems(slf,itfo_sausage,2);
		CreateInvItems(slf,itfo_cheese,3);
		BALTRAM_ITEMSGIVEN_CHAPTER_2 = TRUE;
	};
	if((KAPITEL >= 3) && (BALTRAM_ITEMSGIVEN_CHAPTER_3 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,100);
		CreateInvItems(slf,itfo_cheese,2);
		CreateInvItems(slf,itfo_bread,3);
		CreateInvItems(slf,itfo_water,3);
		CreateInvItems(slf,itfo_honey,1);
		CreateInvItems(slf,itfo_sausage,3);
		BALTRAM_ITEMSGIVEN_CHAPTER_3 = TRUE;
	};
	if((KAPITEL >= 4) && (BALTRAM_ITEMSGIVEN_CHAPTER_4 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,150);
		CreateInvItems(slf,itfo_wine,5);
		CreateInvItems(slf,itfo_bread,2);
		CreateInvItems(slf,itfo_water,4);
		CreateInvItems(slf,itfo_milk,10);
		CreateInvItems(slf,itfo_sausage,4);
		BALTRAM_ITEMSGIVEN_CHAPTER_4 = TRUE;
	};
	if((KAPITEL >= 5) && (BALTRAM_ITEMSGIVEN_CHAPTER_5 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,200);
		CreateInvItems(slf,itfo_wine,2);
		CreateInvItems(slf,itfo_water,5);
		CreateInvItems(slf,itfo_bread,5);
		CreateInvItems(slf,itfo_milk,5);
		CreateInvItems(slf,itfo_sausage,5);
		BALTRAM_ITEMSGIVEN_CHAPTER_5 = TRUE;
	};
};

