
instance ITSE_ERZFISCH(C_ITEM)
{
	name = "Kulista ryba";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItFo_Fish.3DS";
	material = MAT_LEATHER;
	scemename = "MAPSEALED";
	on_state[0] = use_erzfisch;
	description = name;
	text[2] = "W tej rybie coœ schowano.";
};


func void use_erzfisch()
{
	b_playerfinditem(itmi_nugget,1);
};


instance ITSE_GOLDFISCH(C_ITEM)
{
	name = "Ciê¿ka ryba";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItFo_Fish.3DS";
	material = MAT_LEATHER;
	scemename = "MAPSEALED";
	on_state[0] = use_goldfisch;
	description = name;
	text[2] = "W tej rybie coœ schowano.";
};


func void use_goldfisch()
{
	b_playerfinditem(itmi_gold,50);
};


instance ITSE_RINGFISCH(C_ITEM)
{
	name = "Ma³a ryba";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItFo_Fish.3DS";
	material = MAT_LEATHER;
	scemename = "MAPSEALED";
	on_state[0] = use_ringfisch;
	description = name;
	text[2] = "W tej rybie coœ schowano.";
};


func void use_ringfisch()
{
	b_playerfinditem(itri_prot_fire_01,1);
};


instance ITSE_LOCKPICKFISCH(C_ITEM)
{
	name = "Lekka ryba";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MISSION;
	value = 0;
	visual = "ItFo_Fish.3DS";
	material = MAT_LEATHER;
	scemename = "MAPSEALED";
	on_state[0] = use_lockpickfisch;
	description = name;
	text[2] = "W tej rybie coœ schowano.";
};


func void use_lockpickfisch()
{
	b_playerfinditem(itke_lockpick,3);
};


instance ITSE_GOLDPOCKET25(C_ITEM)
{
	name = "Skórzany mieszek";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 25;
	visual = "ItMi_Pocket.3ds";
	scemename = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = goldpocket25;
	description = name;
	text[0] = "";
	text[1] = "";
	text[2] = "W œrodku podzwania kilka monet.";
	text[3] = "";
	text[4] = "";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void goldpocket25()
{
	Found_Random_Gold(0);
};


instance ITSE_GOLDPOCKET50(C_ITEM)
{
	name = "Skórzany mieszek";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 50;
	visual = "ItMi_Pocket.3ds";
	scemename = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = goldpocket50;
	description = name;
	text[0] = "";
	text[1] = "";
	text[2] = "Woreczek jest pe³ny monet.";
	text[3] = "";
	text[4] = "";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void goldpocket50()
{
	Found_Random_Gold(1);
};


instance ITSE_GOLDPOCKET100(C_ITEM)
{
	name = "Skórzany mieszek";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 100;
	visual = "ItMi_Pocket.3ds";
	scemename = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = goldpocket100;
	description = name;
	text[0] = "";
	text[1] = "";
	text[2] = "Ciê¿ka torba pe³na";
	text[3] = "z³otych monet.";
	text[4] = "";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void goldpocket100()
{
	Found_Random_Gold(2);
};


instance ITSE_HANNASBEUTEL(C_ITEM)
{
	name = "Skórzany mieszek";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 100;
	visual = "ItMi_Pocket.3ds";
	scemename = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = hannasbeutel;
	description = name;
	text[0] = "";
	text[1] = "";
	text[2] = "Da³a mi go Hanna.";
	text[3] = "";
	text[4] = "";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void hannasbeutel()
{
	CreateInvItems(hero,itke_lockpick,10);
	CreateInvItems(hero,itke_thieftreasure,1);
	Print(print_hannasbeutel);
};


instance ITSE_MBOLTPOCKET25(C_ITEM)
{
	name = "Przegni³a torba";
	mainflag = ITEM_KAT_NONE;
	flags = ITEM_MULTI;
	value = 500;
	visual = "ItMi_BoltPocket.3ds";
	scemename = "MAPSEALED";
	material = MAT_LEATHER;
	on_state[0] = mboltpocket25;
	description = name;
	text[0] = "";
	text[1] = "";
	text[2] = "W œrodku jest trochê be³tów do kuszy.";
	text[3] = "";
	text[4] = "";
	text[5] = NAME_VALUE;
	count[5] = value;
	inv_zbias = 150;
	inv_rotz = 25;
	inv_rotx = 35;
};


func void mboltpocket25()
{
	b_playerfinditem(itrw_addon_magicbolt,25);
};

