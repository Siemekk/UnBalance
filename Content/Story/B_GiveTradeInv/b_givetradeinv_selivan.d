
var int selivan_itemsgiven_chapter_1;
var int selivan_itemsgiven_chapter_2;
var int selivan_itemsgiven_chapter_3;
var int selivan_itemsgiven_chapter_4;
var int selivan_itemsgiven_chapter_5;

func void b_givetradeinv_selivan(var C_NPC slf)
{
	if((KAPITEL >= 1) && (SELIVAN_ITEMSGIVEN_CHAPTER_1 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,31);
		CreateInvItems(slf,itsc_light,6);
		CreateInvItems(slf,itsc_sleep,1);
		CreateInvItems(slf,itsc_firebolt,20);
		CreateInvItems(slf,itsc_icebolt,8);
		CreateInvItems(slf,itsc_instantfireball,10);
		CreateInvItems(slf,itsc_lightningflash,5);
		CreateInvItems(slf,itsc_harmundead,1);
		CreateInvItems(slf,itsc_firestorm,3);
		CreateInvItems(slf,itsc_icewave,1);
		CreateInvItems(slf,itsc_zap,5);
		CreateInvItems(slf,itsc_icecube,3);
		CreateInvItems(slf,itsc_windfist,3);
		CreateInvItems(slf,itsc_icewave,1);
		CreateInvItems(slf,itsc_shrink,1);
		CreateInvItems(slf,itsc_sumgobskel,1);
		CreateInvItems(slf,itsc_sumskel,1);
		CreateInvItems(slf,itsc_sumwolf,1);
		CreateInvItems(slf,itsc_sumgol,1);
		CreateInvItems(slf,itbe_addon_prot_magic,1);
		CreateInvItems(slf,itam_hp_mana_01,1);
		CreateInvItems(slf,itri_hp_01,1);
		CreateInvItems(slf,itmi_quartz,1);
		CreateInvItems(slf,itmi_rockcrystal,1);
		CreateInvItems(slf,itmi_holywater,1);
		CreateInvItems(slf,itmi_pliers,1);
		CreateInvItems(slf,itmi_runeblank,1);
		CreateInvItems(slf,itmi_coal,2);
		CreateInvItems(slf,itmi_flask,6);
		SELIVAN_ITEMSGIVEN_CHAPTER_1 = TRUE;
	};
	if((KAPITEL >= 2) && (SELIVAN_ITEMSGIVEN_CHAPTER_2 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,60);
		CreateInvItems(slf,itsc_thunderstorm,1);
		SELIVAN_ITEMSGIVEN_CHAPTER_2 = TRUE;
	};
	if((KAPITEL >= 3) && (SELIVAN_ITEMSGIVEN_CHAPTER_3 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,120);
		CreateInvItems(slf,itsc_harmundead,1);
		CreateInvItems(slf,itsc_firerain,1);
		CreateInvItems(slf,itsc_sumdemon,1);
		SELIVAN_ITEMSGIVEN_CHAPTER_3 = TRUE;
	};
	if((KAPITEL >= 4) && (SELIVAN_ITEMSGIVEN_CHAPTER_4 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,220);
		CreateInvItems(slf,itsc_harmundead,1);
		SELIVAN_ITEMSGIVEN_CHAPTER_4 = TRUE;
	};
	if((KAPITEL >= 5) && (SELIVAN_ITEMSGIVEN_CHAPTER_5 == FALSE))
	{
		CreateInvItems(slf,itmi_gold,321);
		CreateInvItems(slf,itmi_flask,25);
		SELIVAN_ITEMSGIVEN_CHAPTER_5 = TRUE;
	};
};

