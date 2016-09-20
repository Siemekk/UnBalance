var int Monolog_Gold_Hacken;//zBool
var int Monolog_Rune_Maker;//zBool
var int Monolog_Alchemicer;//zBool
var int Monolog_Pray;//zBool
var int Monolog_PrayInnos;//zBool
var int Monolog_Smith_Armor;//zBool
var int Monolog_Smith_Weapon;//zBool
var int Monolog_SmithCool;//zBool
var int Monolog_OreSmiling;//zBool
var int Monolog_LeatherWorking;//zBool
var int Monolog_FRYINGMEAT;//zBool
var int Monolog_SmithSharp;//zBool
var int Monolog_WaterDrink;//zBool

func void b_endproductiondialog()
{
	AI_StopProcessInfos(self);
	Wld_StopEffect("DEMENTOR_FX");
	self.aivar[AIV_INVINCIBLE] = FALSE;
	current_monolog = MOBSI_NONE;
	
	Monolog_Gold_Hacken = FALSE;
	Monolog_Rune_Maker = FALSE;
	Monolog_Alchemicer = FALSE;
	Monolog_Pray = FALSE;
	Monolog_PrayInnos = FALSE;
	Monolog_Smith_Armor = FALSE;
	Monolog_Smith_Armor = FALSE;
	Monolog_Smith_Weapon = FALSE;
	Monolog_SmithCool = FALSE;
	Monolog_OreSmiling = FALSE;
	Monolog_LeatherWorking = FALSE;
	Monolog_FRYINGMEAT = FALSE;
	Monolog_SmithSharp = FALSE;
	Monolog_WaterDrink	=FALSE;
	
};

