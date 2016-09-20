
var int diego_di_itemsgiven;

func void b_givetradeinv_diego_di(var C_NPC slf)
{
	if(DIEGO_DI_ITEMSGIVEN == FALSE)
	{
		CreateInvItems(slf,itrw_arrow,160);
		CreateInvItems(slf,itrw_bolt,120);
		CreateInvItems(slf,itke_lockpick,20);
		CreateInvItems(slf,itrw_bow_l_01,1);
		CreateInvItems(slf,itmi_leather,10);
		DIEGO_DI_ITEMSGIVEN = TRUE;
	};
};

