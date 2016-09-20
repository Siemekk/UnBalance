
func void fryingmeat_s1()
{
	var C_NPC her;
	her = Hlp_GetNpc(pc_hero);
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		Monolog_FRYINGMEAT	= TRUE;
		AI_ProcessInfos(her);
	};
};


instance PC_FRYINGMEAT_END(C_INFO)
{
	npc = pc_hero;
	nr = 999;
	condition = pc_fryingmeat_end_condition;
	information = pc_fryingmeat_end_info;
	permanent = TRUE;
	description = DIALOG_ENDE;
};


func int pc_fryingmeat_end_condition()
{
	if(Monolog_FRYINGMEAT)
	{
		return TRUE;
	};
};

func void pc_fryingmeat_end_info()
{
	b_endproductiondialog();
};


instance PC_FRYINGMEAT_NOMEAT(C_INFO)
{
	npc = pc_hero;
	nr = 1;
	condition = pc_fryingmeat_nomeat_condition;
	information = pc_fryingmeat_nomeat_info;
	permanent = TRUE;
	description = "BRAK MIÊSA DO PIECZENIA (zakoñcz).";
};


func int pc_fryingmeat_nomeat_condition()
{
	if((Monolog_FRYINGMEAT) && (Npc_HasItems(hero,itfomuttonraw) <= 0))
	{
		return TRUE;
	};
};

func void pc_fryingmeat_nomeat_info()
{
	b_endproductiondialog();
};


instance PC_FRYINGMEAT_ADDON(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_fryingmeat_addon_condition;
	information = pc_fryingmeat_addon_info;
	permanent = TRUE;
	description = "Upiecz 1x miêso.";
};


func int pc_fryingmeat_addon_condition()
{
	if((Monolog_FRYINGMEAT) && (Npc_HasItems(hero,itfomuttonraw) >= 1))
	{
		return TRUE;
	};
};

func void pc_fryingmeat_addon_info()
{
	if(Npc_HasItems(hero,itfomuttonraw) >= 1)
	{
		CreateInvItems(hero,itfomutton,1);
		Npc_RemoveInvItems(hero,itfomuttonraw,1);
		AI_Wait(other,3);
		Print(PRINT_MEATPROCESS);
		AI_PrintScreen("Upieczono 1 kawa³ek miêsa!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_fryingmeat_addon);
	};
};


instance PC_FRYINGMEAT_ADDON_X5(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_fryingmeat_addon_x5_condition;
	information = pc_fryingmeat_addon_x5_info;
	permanent = TRUE;
	description = "Upiecz 5x miêso.";
};


func int pc_fryingmeat_addon_x5_condition()
{
	if((Monolog_FRYINGMEAT) && (Npc_HasItems(hero,itfomuttonraw) >= 5))
	{
		return TRUE;
	};
};

func void pc_fryingmeat_addon_x5_info()
{
	if(Npc_HasItems(hero,itfomuttonraw) >= 5)
	{
		CreateInvItems(hero,itfomutton,5);
		Npc_RemoveInvItems(hero,itfomuttonraw,5);
		AI_Wait(other,6);
		Print(PRINT_MEATPROCESS);
		AI_PrintScreen("Upieczono 5 kawa³ków miêsa!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_fryingmeat_addon_x5);
	};
};


instance PC_FRYINGMEAT_ADDON_X10(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_fryingmeat_addon_x10_condition;
	information = pc_fryingmeat_addon_x10_info;
	permanent = TRUE;
	description = "Upiecz 10x miêso.";
};


func int pc_fryingmeat_addon_x10_condition()
{
	if((Monolog_FRYINGMEAT) && (Npc_HasItems(hero,itfomuttonraw) >= 10))
	{
		return TRUE;
	};
};

func void pc_fryingmeat_addon_x10_info()
{
	if(Npc_HasItems(hero,itfomuttonraw) >= 10)
	{
		CreateInvItems(hero,itfomutton,10);
		Npc_RemoveInvItems(hero,itfomuttonraw,10);
		AI_Wait(other,12);
		Print(PRINT_MEATPROCESS);
		AI_PrintScreen("Upieczono 10 kawa³ków miêsa!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_fryingmeat_addon_x10);
	};
};


instance PC_FRYINGMEAT_ADDON_ALL(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = PC_FRYINGMEAT_ADDON_ALL_condition;
	information = PC_FRYINGMEAT_ADDON_ALL_info;
	permanent = TRUE;
	description = "Upiecz miêso (Wszystkie kawa³ki).";
};


func int PC_FRYINGMEAT_ADDON_ALL_condition()
{
	if((Monolog_FRYINGMEAT) && (Npc_HasItems(hero,itfomuttonraw) >= 1))
	{
		return TRUE;
	};
};

func void PC_FRYINGMEAT_ADDON_ALL_info()
{
	if(Npc_HasItems(hero,itfomuttonraw) >= 1)
	{
	var int Hero_Meat; Hero_Meat = Npc_HasItems(hero,itfomuttonraw);
	
		CreateInvItems(hero,itfomutton,Hero_Meat);
		Npc_RemoveInvItems(hero,itfomuttonraw,Hero_Meat);
		if(Hero_Meat>= 20){
		AI_Wait(other,30);
		}
		else
		{
		AI_Wait(other,5);
		};
		Print(PRINT_MEATPROCESS);
		var string Meat_Fry; 
		if(Hero_Meat==1){
		
			Meat_Fry = "Upieczono ";
		Meat_Fry = ConcatStrings(Meat_Fry,IntToString(Hero_Meat));
		Meat_Fry = ConcatStrings(Meat_Fry," kawa³ek miêsa!");
		}
		else if (Hero_Meat ==2 || Hero_Meat ==3 || Hero_Meat ==4){
			Meat_Fry = "Upieczono ";
		Meat_Fry = ConcatStrings(Meat_Fry,IntToString(Hero_Meat));
		Meat_Fry = ConcatStrings(Meat_Fry," kawa³ki miêsa!");
		}
		else
		{
			Meat_Fry = "Upieczono ";
		Meat_Fry = ConcatStrings(Meat_Fry,IntToString(Hero_Meat));
		Meat_Fry = ConcatStrings(Meat_Fry," kawa³ków miêsa!");
		};
		AI_PrintScreen(Meat_Fry,-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(PC_FRYINGMEAT_ADDON_ALL);
	};
};