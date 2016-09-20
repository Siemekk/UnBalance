PROTOTYPE Craft_Arrows(C_ITEM)
{
name="Grot";
mainflag = ITEM_KAT_NONE;
flags = ITEM_MULTI | ITEM_MISSION;
value = 0;
visual = "ItMi_ArrowTip.3ds";
material = MAT_METAL;
description = name;
};
INSTANCE ITRW_ARROWS(Craft_Arrows)
{
visual="ITRW_ARROWS.3ds";
};
INSTANCE ITRW_ARROWH(Craft_Arrows)
{
visual="ITRW_ARROWH.3ds";
};
INSTANCE ITRW_ARROWF2(Craft_Arrows)
{
visual="ITRW_ARROWF2.3ds";
};
INSTANCE ITRW_ARROWF1(Craft_Arrows)
{
visual="ITRW_ARROWF1.3ds";
};
INSTANCE ITRW_ARROWF0(Craft_Arrows)
{
visual="ITRW_ARROWF0.3ds";
};
INSTANCE ITRW_ARROWF(Craft_Arrows)
{
visual="ITRW_ARROWF.3ds";
};
//##############

//##############
instance ITMI_GLASS(C_ITEM)
{
	name = "Pusta butelka";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 1;
	visual = "ItFo_Water.3ds";
	material = MAT_GLAS;
	description = name;
	text[1] = "Można ją spowrotem napełnić wodą.";
	text[5] = NAME_VALUE;
	count[5] = 1;
};