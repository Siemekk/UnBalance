
var int bennet_di_itemsgiven;

func void b_givetradeinv_bennet_di(var C_NPC slf)
{
	if(BENNET_DI_ITEMSGIVEN == FALSE)
	{
		CreateInvItems(slf,itmi_gold,700);
		CreateInvItems(slf,itmi_steelbar,7);
		CreateInvItems(slf,itmi_leather,5);
		CreateInvItems(slf,itmi_textile,4);
		CreateInvItems(slf,itrw_arrow,140);
		CreateInvItems(slf,itrw_bolt,140);
		CreateInvItems(slf,itmw_elbastardo,1);
		CreateInvItems(slf,itmw_folteraxt,1);
		CreateInvItems(slf,itmw_zweihaender4,1);
		CreateInvItems(slf,itmw_barbarenstreitaxt,1);
		CreateInvItems(slf,itmw_berserkeraxt,1);
		CreateInvItems(slf,ITMW_1H_MOONBLADE_LEFT,1);
		CreateInvItems(slf,ITMW_1H_MOONBLADE_RIGHT,1);
		CreateInvItems(slf,itmi_nugget,4);
		BENNET_DI_ITEMSGIVEN = TRUE;
	};
};

