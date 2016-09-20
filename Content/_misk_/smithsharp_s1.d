
func void smithsharp_s1()
{
	var C_NPC her;
	her = Hlp_GetNpc(pc_hero);
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		hero.aivar[AIV_INVINCIBLE] = TRUE;
		Monolog_SmithSharp=TRUE;
		AI_ProcessInfos(her);
	};
};


instance PC_SMITHSHARP_END(C_INFO)
{
	npc = pc_hero;
	nr = 999;
	condition = pc_smithsharp_end_condition;
	information = pc_smithsharp_end_info;
	permanent = TRUE;
	description = DIALOG_ENDE;
};


func int pc_smithsharp_end_condition()
{
	if(Monolog_SmithSharp)
	{
		return TRUE;
	};
};

func void pc_smithsharp_end_info()
{
	b_endproductiondialog();
};


instance PC_SMITHSHARP_FIRSTBLADE(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_smithsharp_firstblade_condition;
	information = pc_smithsharp_firstblade_info;
	permanent = TRUE;
	description = "Ostrzenie <<Prosty miecz>>";
};


func int pc_smithsharp_firstblade_condition()
{
	if((Monolog_SmithSharp) && (Npc_HasItems(hero,itmw_firstblade_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_firstblade_info()
{
	if(Npc_HasItems(hero,itmw_firstblade_ns) >= 1)
	{
		CreateInvItems(hero,itmw_firstblade,1);
		Npc_RemoveInvItems(hero,itmw_firstblade_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Naostrzono - Prosty miecz!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_1HFINESWORD(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_smithsharp_1hfinesword_condition;
	information = pc_smithsharp_1hfinesword_info;
	permanent = TRUE;
	description = "Ostrzenie <<Dobry miecz>>";
};


func int pc_smithsharp_1hfinesword_condition()
{
	if((Monolog_SmithSharp) && (Npc_HasItems(hero,itmw_1hfinesword_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_1hfinesword_info()
{
	if(Npc_HasItems(hero,itmw_1hfinesword_ns) >= 1)
	{
		CreateInvItems(hero,itmw_1hfinesword,1);
		Npc_RemoveInvItems(hero,itmw_1hfinesword_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Naostrzono - Dobry miecz!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_SOT(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_smithsharp_sot_condition;
	information = pc_smithsharp_sot_info;
	permanent = TRUE;
	description = "Ostrzenie <<Miecz Prawdy>>";
};


func int pc_smithsharp_sot_condition()
{
	if((Monolog_SmithSharp) && (Npc_HasItems(hero,itmw_sot_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_sot_info()
{
	if(Npc_HasItems(hero,itmw_sot_ns) >= 1)
	{
		CreateInvItems(hero,itmw_sot,1);
		Npc_RemoveInvItems(hero,itmw_sot_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Naostrzono - Miecz Prawdy!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_FINEBASTARD(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_smithsharp_finebastard_condition;
	information = pc_smithsharp_finebastard_info;
	permanent = TRUE;
	description = "Ostrzenie <<Dobry miecz pó³torarêczny>>";
};


func int pc_smithsharp_finebastard_condition()
{
	if((Monolog_SmithSharp) && (Npc_HasItems(hero,itmw_finebastard_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_finebastard_info()
{
	if(Npc_HasItems(hero,itmw_finebastard_ns) >= 1)
	{
		CreateInvItems(hero,itmw_finebastard,1);
		Npc_RemoveInvItems(hero,itmw_finebastard_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Naostrzono - Dobry miecz pó³torarêczny!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_ANDURIL(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_smithsharp_anduril_condition;
	information = pc_smithsharp_anduril_info;
	permanent = TRUE;
	description = "Ostrzenie <<Wspania³y miecz pó³torarêczny>>";
};


func int pc_smithsharp_anduril_condition()
{
	if((Monolog_SmithSharp) && (Npc_HasItems(hero,itmw_anduril_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_anduril_info()
{
	if(Npc_HasItems(hero,itmw_anduril_ns) >= 1)
	{
		CreateInvItems(hero,itmw_anduril,1);
		Npc_RemoveInvItems(hero,itmw_anduril_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Naostrzono - Wspania³y miecz pó³torarêczny!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_FIRSTBLADE2H(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_smithsharp_firstblade2h_condition;
	information = pc_smithsharp_firstblade2h_info;
	permanent = TRUE;
	description = "Ostrzenie <<Prosty miecz dwurêczny>>";
};


func int pc_smithsharp_firstblade2h_condition()
{
	if((Monolog_SmithSharp) && (Npc_HasItems(hero,itmw_firstblade2h_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_firstblade2h_info()
{
	if(Npc_HasItems(hero,itmw_firstblade2h_ns) >= 1)
	{
		CreateInvItems(hero,itmw_firstblade2h,1);
		Npc_RemoveInvItems(hero,itmw_firstblade2h_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Naostrzono - Prosty miecz dwurêczny!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_2HFINESWORD(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_smithsharp_2hfinesword_condition;
	information = pc_smithsharp_2hfinesword_info;
	permanent = TRUE;
	description = "Ostrzenie <<Dobry miecz dwurêczny>>";
};


func int pc_smithsharp_2hfinesword_condition()
{
	if((Monolog_SmithSharp) && (Npc_HasItems(hero,itmw_2hfinesword_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_2hfinesword_info()
{
	if(Npc_HasItems(hero,itmw_2hfinesword_ns) >= 1)
	{
		CreateInvItems(hero,itmw_2hfinesword,1);
		Npc_RemoveInvItems(hero,itmw_2hfinesword_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Naostrzono - Dobry miecz dwurêczny!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_CLAYMORE(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_smithsharp_claymore_condition;
	information = pc_smithsharp_claymore_info;
	permanent = TRUE;
	description = "Ostrzenie <<Claymore>>";
};


func int pc_smithsharp_claymore_condition()
{
	if((Monolog_SmithSharp) && (Npc_HasItems(hero,itmw_claymore_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_claymore_info()
{
	if(Npc_HasItems(hero,itmw_claymore_ns) >= 1)
	{
		CreateInvItems(hero,itmw_claymore,1);
		Npc_RemoveInvItems(hero,itmw_claymore_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Naostrzono - Claymore!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_DEMONSLAYER(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_smithsharp_demonslayer_condition;
	information = pc_smithsharp_demonslayer_info;
	permanent = TRUE;
	description = "Ostrzenie <<'Pogromca Demonów'>>";
};


func int pc_smithsharp_demonslayer_condition()
{
	if((Monolog_SmithSharp) && (Npc_HasItems(hero,itmw_demonslayer_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_demonslayer_info()
{
	if(Npc_HasItems(hero,itmw_demonslayer_ns) >= 1)
	{
		CreateInvItems(hero,itmw_demonslayer,1);
		Npc_RemoveInvItems(hero,itmw_demonslayer_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Naostrzono - 'Pogromca Demonów'!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_FLAMEBERGE(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_smithsharp_flameberge_condition;
	information = pc_smithsharp_flameberge_info;
	permanent = TRUE;
	description = "Ostrzenie <<Flamberg>>";
};


func int pc_smithsharp_flameberge_condition()
{
	if((Monolog_SmithSharp) && (Npc_HasItems(hero,itmw_flameberge_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_flameberge_info()
{
	if(Npc_HasItems(hero,itmw_flameberge_ns) >= 1)
	{
		CreateInvItems(hero,itmw_flameberge,1);
		Npc_RemoveInvItems(hero,itmw_flameberge_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Naostrzono - Flamberg!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_1H_SPECIAL_01(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_smithsharp_1h_special_01_condition;
	information = pc_smithsharp_1h_special_01_info;
	permanent = TRUE;
	description = "Ostrzenie <<D³ugi miecz magiczny>>";
};


func int pc_smithsharp_1h_special_01_condition()
{
	if((Monolog_SmithSharp) && (Npc_HasItems(hero,itmw_1h_special_01_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_1h_special_01_info()
{
	if(Npc_HasItems(hero,itmw_1h_special_01_ns) >= 1)
	{
		CreateInvItems(hero,itmw_1h_special_01,1);
		Npc_RemoveInvItems(hero,itmw_1h_special_01_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Naostrzono - D³ugi miecz magiczny!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_2H_SPECIAL_01(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_smithsharp_2h_special_01_condition;
	information = pc_smithsharp_2h_special_01_info;
	permanent = TRUE;
	description = "Ostrzenie <<Magiczny miecz dwurêczny>>";
};


func int pc_smithsharp_2h_special_01_condition()
{
	if((Monolog_SmithSharp) && (Npc_HasItems(hero,itmw_2h_special_01_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_2h_special_01_info()
{
	if(Npc_HasItems(hero,itmw_2h_special_01_ns) >= 1)
	{
		CreateInvItems(hero,itmw_2h_special_01,1);
		Npc_RemoveInvItems(hero,itmw_2h_special_01_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Naostrzono - Magiczny miecz dwurêczny!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_1H_SPECIAL_02(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_smithsharp_1h_special_02_condition;
	information = pc_smithsharp_1h_special_02_info;
	permanent = TRUE;
	description = "Ostrzenie <<Magiczny miecz pó³torarêczny>>";
};


func int pc_smithsharp_1h_special_02_condition()
{
	if((Monolog_SmithSharp) && (Npc_HasItems(hero,itmw_1h_special_02_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_1h_special_02_info()
{
	if(Npc_HasItems(hero,itmw_1h_special_02_ns) >= 1)
	{
		CreateInvItems(hero,itmw_1h_special_02,1);
		Npc_RemoveInvItems(hero,itmw_1h_special_02_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Naostrzono - Magiczny miecz pó³torarêczny!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_2H_SPECIAL_02(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_smithsharp_2h_special_02_condition;
	information = pc_smithsharp_2h_special_02_info;
	permanent = TRUE;
	description = "Ostrzenie <<Ciê¿ki magiczny miecz dwurêczny>>";
};


func int pc_smithsharp_2h_special_02_condition()
{
	if((Monolog_SmithSharp) && (Npc_HasItems(hero,itmw_2h_special_02_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_2h_special_02_info()
{
	if(Npc_HasItems(hero,itmw_2h_special_02_ns) >= 1)
	{
		CreateInvItems(hero,itmw_2h_special_02,1);
		Npc_RemoveInvItems(hero,itmw_2h_special_02_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Naostrzono - Ciê¿ki magiczny miecz dwurêczny!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_1H_SPECIAL_03(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_smithsharp_1h_special_03_condition;
	information = pc_smithsharp_1h_special_03_info;
	permanent = TRUE;
	description = "Ostrzenie <<Magiczne ostrze bojowe>>";
};


func int pc_smithsharp_1h_special_03_condition()
{
	if((Monolog_SmithSharp) && (Npc_HasItems(hero,itmw_1h_special_03_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_1h_special_03_info()
{
	if(Npc_HasItems(hero,itmw_1h_special_03_ns) >= 1)
	{
		CreateInvItems(hero,itmw_1h_special_03,1);
		Npc_RemoveInvItems(hero,itmw_1h_special_03_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Naostrzono - Magiczne ostrze bojowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_2H_SPECIAL_03(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_smithsharp_2h_special_03_condition;
	information = pc_smithsharp_2h_special_03_info;
	permanent = TRUE;
	description = "Ostrzenie <<Ciê¿kie magiczne ostrze bojowe>>";
};


func int pc_smithsharp_2h_special_03_condition()
{
	if((Monolog_SmithSharp) && (Npc_HasItems(hero,itmw_2h_special_03_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_2h_special_03_info()
{
	if(Npc_HasItems(hero,itmw_2h_special_03_ns) >= 1)
	{
		CreateInvItems(hero,itmw_2h_special_03,1);
		Npc_RemoveInvItems(hero,itmw_2h_special_03_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Naostrzono - Ciê¿kie magiczne ostrze bojowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_1H_SPECIAL_04(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_smithsharp_1h_special_04_condition;
	information = pc_smithsharp_1h_special_04_info;
	permanent = TRUE;
	description = "Ostrzenie <<Magiczne ostrze na smoki>>";
};


func int pc_smithsharp_1h_special_04_condition()
{
	if((Monolog_SmithSharp) && (Npc_HasItems(hero,itmw_1h_special_04_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_1h_special_04_info()
{
	if(Npc_HasItems(hero,itmw_1h_special_04_ns) >= 1)
	{
		CreateInvItems(hero,itmw_1h_special_04,1);
		Npc_RemoveInvItems(hero,itmw_1h_special_04_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Naostrzono - Magiczne ostrze na smoki!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_2H_SPECIAL_04(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_smithsharp_2h_special_04_condition;
	information = pc_smithsharp_2h_special_04_info;
	permanent = TRUE;
	description = "Ostrzenie <<Du¿e magiczne ostrze na smoki>>";
};


func int pc_smithsharp_2h_special_04_condition()
{
	if((Monolog_SmithSharp) && (Npc_HasItems(hero,itmw_2h_special_04_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_2h_special_04_info()
{
	if(Npc_HasItems(hero,itmw_2h_special_04_ns) >= 1)
	{
		CreateInvItems(hero,itmw_2h_special_04,1);
		Npc_RemoveInvItems(hero,itmw_2h_special_04_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Naostrzono - Du¿e magiczne ostrze na smoki!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_1H_DEATHBRINGER(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_smithsharp_1h_deathbringer_condition;
	information = pc_smithsharp_1h_deathbringer_info;
	permanent = TRUE;
	description = "Ostrzenie <<Druzgoc¹ce ostrze magiczne>>";
};


func int pc_smithsharp_1h_deathbringer_condition()
{
	if((Monolog_SmithSharp) && (Npc_HasItems(hero,itmw_1h_deathbringer_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_1h_deathbringer_info()
{
	if(Npc_HasItems(hero,itmw_1h_deathbringer_ns) >= 1)
	{
		CreateInvItems(hero,itmw_1h_deathbringer,1);
		Npc_RemoveInvItems(hero,itmw_1h_deathbringer_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Naostrzono - Druzgoc¹ce ostrze magiczne!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};


instance PC_SMITHSHARP_2H_DEATHBRINGER(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_smithsharp_2h_deathbringer_condition;
	information = pc_smithsharp_2h_deathbringer_info;
	permanent = TRUE;
	description = "Ostrzenie <<Du¿e druzgoc¹ce ostrze magiczne>>";
};


func int pc_smithsharp_2h_deathbringer_condition()
{
	if((Monolog_SmithSharp) && (Npc_HasItems(hero,itmw_2h_deathbringer_ns) >= 1))
	{
		return TRUE;
	};
};

func void pc_smithsharp_2h_deathbringer_info()
{
	if(Npc_HasItems(hero,itmw_2h_deathbringer_ns) >= 1)
	{
		CreateInvItems(hero,itmw_2h_deathbringer,1);
		Npc_RemoveInvItems(hero,itmw_2h_deathbringer_ns,1);
		AI_Wait(other,5);
		Print(PRINT_SHARPPROCESS);
		AI_PrintScreen("Naostrzono - Du¿e druzgoc¹ce ostrze magiczne!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};
/*****************************************************************************************************/
var int TestTimersjggj;
func int Sharping_Func(var int other, var int First_Item, var int First_Item_Need, var int Second_Item, var int Second_Item_Need)
{
var C_NPC oth; oth=Hlp_GetNpc(other);
var C_Item EquipedMeleeWeapon; 
EquipedMeleeWeapon=Npc_GetEquippedMeleeWeapon(oth);

if(Npc_HasItems(oth,First_Item)<First_Item_Need)
||(Npc_HasItems(oth,Second_Item)<Second_Item_Need)
{
Prints_Ext("Brakuje mi sk³adników !", RGBA(255,100,100,255));
var string msg1; 
msg1=ConcatStrings("Brakuje ",IntToString(First_Item_Need));
msg1=ConcatStrings(msg1,"szt. ostrzy !");
/**************************************/
var string msg2; 
msg2=ConcatStrings("Brakuje ",IntToString(First_Item_Need));
msg2=ConcatStrings(msg2,"szt. magicznej rudy !");
/**************************************/
Prints_Ext(msg1,RGBA(255,100,100,255));
Prints_Ext(msg2,RGBA(255,100,100,255));
b_endproductiondialog();
CreateInvItems (oth, ItMiSwordBlade,1);
return FALSE;
};

 if(EquipedMeleeWeapon.damage[0]>1)
||(EquipedMeleeWeapon.damage[1]>1)
||(EquipedMeleeWeapon.damage[3]>1)
||(EquipedMeleeWeapon.damage[4]>1)
||(EquipedMeleeWeapon.damage[5]>1)
||(EquipedMeleeWeapon.damage[6]>1)
||(EquipedMeleeWeapon.damage[7]>1)
{
Prints_Ext("Tej broni nie da siê naostrzyæ !", RGBA(255,100,100,255));
b_endproductiondialog();
CreateInvItems (oth, ItMiSwordBlade,1);
return FALSE;
};


if(EquipedMeleeWeapon.hp == 1)
{
Prints_Ext("Ta broñ jest ju¿ naostrzona !",RGBA(255,100,100,255));
b_endproductiondialog();
CreateInvItems (oth, ItMiSwordBlade,1);
return FALSE;
};
 
 if(EquipedMeleeWeapon.hp ==0)
{
var int WDamage; WDamage =EquipedMeleeWeapon.damagetotal/15;
var int Sum; Sum= EquipedMeleeWeapon.damagetotal / 10;
var float a; a= IntToFloat(WDamage);
/***************************************************************/
var string msg; msg=ConcatStrings("Ostrze"," jest u¿ywane do zwiêkszenia obra¿eñ...");
TestTimersjggj=1;
/***************************************************************/
AI_Wait(oth,3);
AI_Function_S(oth,Prints2,"Powoli przesuwasz orê¿ po ose³ce");
AI_Function_I(oth,UnequipWeapon_Hero,other);
/***************************************************************/
AI_Wait(oth,a);
AI_Function_S(oth,Prints2,msg);//Ostrze wzmacnia dmg
AI_Function_II(oth,Hero_RemoveInvItems,First_Item,First_Item_Need);
/***************************************************************/
AI_Wait(oth,a);
AI_Function_S(oth,Prints2,ConcatStrings("Magiczna ruda"," wzmacnia twoje ostrze..."));//Ruda
AI_Function_II(oth,Hero_RemoveInvItems,Second_Item,Second_Item_Need);
/***************************************************************/
AI_Wait(oth,a);
AI_Function_S(oth,Prints2,ConcatStrings("Uda³o ci siê naostrzyæ ",EquipedMeleeWeapon.name));
AI_Function_I(oth,Equip_Item_Hero,other);
/***************************************************************/
EquipedMeleeWeapon.hp =1;
EquipedMeleeWeapon.damage[2] += Sum;
EquipedMeleeWeapon.COUNT[1]+=Sum;
b_endproductiondialog();
Print(IntToString(FloatToInt(a)));
};
return TRUE;
};
/*******************************************************************************************************************************/
var int Sharping_Informations;
var int Sharp_FirstText;
var int Sharp_SecondText;
var int Sharp_ThirdText;
var int Sharp_CostsText;


func void Calculate_Time()
{
/***********************************************************************/
var C_ITEM EquipedMeleeWeapon;
EquipedMeleeWeapon = Npc_GetEquippedMeleeWeapon(PC_Hero);
/***********************************************************************/
var int Need_Blade; 
Need_Blade=EquipedMeleeWeapon.damage[2]  / 15 ;
/***********************************************************************/
var int Need_Nuggets;
Need_Nuggets=EquipedMeleeWeapon.damage[2]  / 30;
/***********************************************************************/
var int TimeToSharp; 
TimeToSharp=(EquipedMeleeWeapon.damage[2] / 15 )*3;
/***********************************************************************/
var string msg;
msg=ConcatStrings("Szacowany czas ostrzenia wynosi ", IntToString(TimeToSharp + 3));
msg=ConcatStrings(msg, " sekund");
/***********************************************************************/
var string msg2; 
msg2=ConcatStrings("Stalowe ostrza: ", IntToString(Need_Blade));
msg2=ConcatStrings(msg2, " sztuk");
/***********************************************************************/
var string msg3; 
msg3=ConcatStrings("Bry³ki rudy: ", IntToString(Need_Nuggets));
msg3=ConcatStrings(msg3, " sztuk");
/***********************************************************************/
var int color1; var int color2;
if(Npc_HasItems(hero,itmiswordblade)>=Need_Blade)
{
color1=RGBA(0,180,0,255);
}
else
{
color1=RGBA(180,0,0,255);
};
/***********************************************************************/
if(Npc_HasItems(hero,itmi_nugget)>=Need_Nuggets)
{
color2=RGBA(0,180,0,255);
}
else
{
color2=RGBA(180,0,0,255);
};
/***********************************************************************/
Sharp_FirstText		= Print_Ext(-1,3500,msg,"FONT_OLD_20_WHITE_HI.tga",RGBA(255,255,255,255),-1);
/***********************************************************************/
Sharp_CostsText	= Print_Ext(-1,3600+(PF_TextHeight*2),"Koszt:","FONT_OLD_20_WHITE_HI.tga",RGBA(255,255,255,255),-1);
/***********************************************************************/
Sharp_SecondText	= Print_Ext(-1,3600+(PF_TextHeight*4),msg2,"FONT_OLD_20_WHITE_HI.tga",color1,-1);
Sharp_ThirdText		=Print_Ext(-1,3600+(PF_TextHeight*6),msg3,"FONT_OLD_20_WHITE_HI.tga",color2,-1);
};

instance PC_SMITHSHARP_EQUIPEDWEAPON(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = PC_SMITHSHARP_EQUIPEDWEAPON_condition;
	information = PC_SMITHSHARP_EQUIPEDWEAPON_info;
	permanent = TRUE;
	description = "Ostrzenie: <<Za³o¿ona broñ>>";
};


func int PC_SMITHSHARP_EQUIPEDWEAPON_condition()
{
	if((Monolog_SmithSharp)&&(Npc_HasEquippedMeleeWeapon(hero))&&(Hero_Knows_Sharps))
	{
		return TRUE;
	};
};

func void PC_SMITHSHARP_EQUIPEDWEAPON_info()
{
Sharping_Informations=TRUE;
Monolog_SmithSharp=FALSE;
Calculate_Time();
};

instance PC_SMITHSHARP_EQUIPEDWEAPON_APPLY(C_INFO)
{
	npc = pc_hero;
	nr = 1;
	condition = PC_SMITHSHARP_EQUIPEDWEAPON_APPLY_condition;
	information = PC_SMITHSHARP_EQUIPEDWEAPON_APPLY_info;
	permanent = TRUE;
	description = "Rozpocznij ostrzenie !";
};


func int PC_SMITHSHARP_EQUIPEDWEAPON_APPLY_condition()
{
	if(Sharping_Informations)&&(!Monolog_SmithSharp)
	{
		return TRUE;
	};
};

func void PC_SMITHSHARP_EQUIPEDWEAPON_APPLY_info()
{
var C_ITEM EquipedMeleeWeapon; EquipedMeleeWeapon = Npc_GetEquippedMeleeWeapon(hero);
var int Need_Blade; Need_Blade=EquipedMeleeWeapon.damagetotal / 15 ;
var int Need_Nuggets; Need_Nuggets=EquipedMeleeWeapon.damagetotal / 30;
Sharping_Func(other,ItMiSwordBlade,Need_Blade,itmi_nugget,Need_Nuggets);

Print_DeleteText(Sharp_CostsText);
Print_DeleteText(Sharp_FirstText);
Print_DeleteText(Sharp_SecondText);
Print_DeleteText(Sharp_ThirdText);
Sharping_Informations=FALSE;
};


