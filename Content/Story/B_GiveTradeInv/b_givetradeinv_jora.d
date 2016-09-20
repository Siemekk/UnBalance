
var int jora_itemsgiven_chapter_1;
var int jora_itemsgiven_chapter_2;
var int jora_itemsgiven_chapter_3;
var int jora_itemsgiven_chapter_4;
var int jora_itemsgiven_chapter_5;

func void b_givetradeinv_jora(var C_NPC slf)
{
	if((KAPITEL >= 1) && (JORA_ITEMSGIVEN_CHAPTER_1 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,100);
		CreateInvItems(slf,itmi_leather,1);
		CreateInvItems(slf,itmi_textile,1);
		CreateInvItems(slf,itmi_woodbar,2);
		CreateInvItems(slf,itlstorch,5);
		CreateInvItems(slf,itmi_brush,2);
		CreateInvItems(slf,itmi_broom,1);
		CreateInvItems(slf,itmi_saw,2);
		CreateInvItems(slf,itmi_hammer,3);
		CreateInvItems(slf,itmi_pan,2);
		CreateInvItems(slf,itmi_pitch,2);
		CreateInvItems(slf,itrw_arrow,30);
		CreateInvItems(slf,itrw_bolt,30);
		CreateInvItems(slf,itam_prot_point_01,1);
		JORA_ITEMSGIVEN_CHAPTER_1 = TRUE;
	};
	if((KAPITEL >= 2) && (JORA_ITEMSGIVEN_CHAPTER_2 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,100);
		CreateInvItems(slf,itmi_leather,1);
		CreateInvItems(slf,itmi_textile,2);
		CreateInvItems(slf,itmi_woodbar,1);
		CreateInvItems(slf,itmi_pliers,1);
		CreateInvItems(slf,itrw_arrow,60);
		CreateInvItems(slf,itrw_bolt,60);
		JORA_ITEMSGIVEN_CHAPTER_2 = TRUE;
	};
	if((KAPITEL >= 3) && (JORA_ITEMSGIVEN_CHAPTER_3 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,100);
		CreateInvItems(slf,itmi_textile,3);
		CreateInvItems(slf,itmi_woodbar,2);
		CreateInvItems(slf,itmi_pitch,2);
		CreateInvItems(slf,itmi_steelbar,2);
		CreateInvItems(slf,itrw_arrow,60);
		CreateInvItems(slf,itrw_bolt,60);
		JORA_ITEMSGIVEN_CHAPTER_3 = TRUE;
	};
	if((KAPITEL >= 4) && (JORA_ITEMSGIVEN_CHAPTER_4 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,150);
		CreateInvItems(slf,itmi_textile,2);
		CreateInvItems(slf,itmi_rockcrystal,2);
		CreateInvItems(slf,itrw_arrow,60);
		CreateInvItems(slf,itrw_bolt,60);
		CreateInvItems(slf,itbe_addon_str_10,1);
		JORA_ITEMSGIVEN_CHAPTER_4 = TRUE;
	};
	if((KAPITEL >= 5) && (JORA_ITEMSGIVEN_CHAPTER_5 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,200);
		CreateInvItems(slf,itmi_textile,6);
		CreateInvItems(slf,itmi_woodbar,10);
		CreateInvItems(slf,itmi_coal,3);
		CreateInvItems(slf,itmi_pitch,2);
		CreateInvItems(slf,itmi_steelbar,1);
		CreateInvItems(slf,itrw_arrow,160);
		CreateInvItems(slf,itrw_bolt,160);
		JORA_ITEMSGIVEN_CHAPTER_5 = TRUE;
	};
};

