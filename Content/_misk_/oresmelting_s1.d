
func void oresmelting_s1()
{
	var C_NPC her;
	her = Hlp_GetNpc(pc_hero);
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		Monolog_OreSmiling = TRUE;
		AI_ProcessInfos(her);
	};
};


instance PC_ORESMELTING_END(C_INFO)
{
	npc = pc_hero;
	nr = 999;
	condition = pc_oresmelting_end_condition;
	information = pc_oresmelting_end_info;
	permanent = TRUE;
	description = DIALOG_ENDE;
};


func int pc_oresmelting_end_condition()
{
	if(Monolog_OreSmiling)
	{
		return TRUE;
	};
};

func void pc_oresmelting_end_info()
{
	b_endproductiondialog();
};


instance PC_ORESMELTING_ADDON(C_INFO)
{
	npc = pc_hero;
	nr = 1;
	condition = pc_oresmelting_addon_condition;
	information = pc_oresmelting_addon_info;
	permanent = TRUE;
	description = "Wytop stalow¹ sztabê (2x bry³ka ¿elaza)";
};


func int pc_oresmelting_addon_condition()
{
	if((Monolog_OreSmiling) && (Npc_HasItems(hero,itmi_ironnugget_addon) >= 2))
	{
		return TRUE;
	};
};

func void pc_oresmelting_addon_info()
{
	if(Npc_HasItems(hero,itmi_ironnugget_addon) >= 2)
	{
		CreateInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_ironnugget_addon,2);
		AI_Wait(other,3);
		Print(PRINT_SMELTPROCESS);
		AI_PrintScreen("Otrzymano - 1x sztaba stali!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_oresmelting_addon);
	};
};


instance PC_ORESMELTING_ADDON_X5(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_oresmelting_addon_x5_condition;
	information = pc_oresmelting_addon_x5_info;
	permanent = TRUE;
	description = "Wytop 5 stalowych sztab (10x bry³ka ¿elaza)";
};


func int pc_oresmelting_addon_x5_condition()
{
	if((Monolog_OreSmiling) && (Npc_HasItems(hero,itmi_ironnugget_addon) >= 10))
	{
		return TRUE;
	};
};

func void pc_oresmelting_addon_x5_info()
{
	if(Npc_HasItems(hero,itmi_ironnugget_addon) >= 10)
	{
		CreateInvItems(hero,itmi_steelbar,5);
		Npc_RemoveInvItems(hero,itmi_ironnugget_addon,10);
		AI_Wait(other,5);
		Print(PRINT_SMELTPROCESS);
		AI_PrintScreen("Otrzymano - 5x sztaba stali!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_oresmelting_addon_x5);
	};
};


instance PC_ORESMELTING_ADDON_X10(C_INFO)
{
	npc = pc_hero;
	nr = 3;
	condition = pc_oresmelting_addon_x10_condition;
	information = pc_oresmelting_addon_x10_info;
	permanent = TRUE;
	description = "Wytop 10 stalowych sztab (20x bry³ka ¿elaza)";
};


func int pc_oresmelting_addon_x10_condition()
{
	if((Monolog_OreSmiling) && (Npc_HasItems(hero,itmi_ironnugget_addon) >= 20))
	{
		return TRUE;
	};
};

func void pc_oresmelting_addon_x10_info()
{
	if(Npc_HasItems(hero,itmi_ironnugget_addon) >= 20)
	{
		CreateInvItems(hero,itmi_steelbar,10);
		Npc_RemoveInvItems(hero,itmi_ironnugget_addon,20);
		AI_Wait(other,10);
		Print(PRINT_SMELTPROCESS);
		AI_PrintScreen("Otrzymano - 10x sztaba stali!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_oresmelting_addon_x10);
	};
};


instance PC_MAGICORESMELTING_ADDON(C_INFO)
{
	npc = pc_hero;
	nr = 4;
	condition = pc_magicoresmelting_addon_condition;
	information = pc_magicoresmelting_addon_info;
	permanent = TRUE;
	description = "Wytop sztabê rudy (1x bry³ka rudy, 2x bry³ka ¿elaza)";
};


func int pc_magicoresmelting_addon_condition()
{
	if((Monolog_OreSmiling) && (Npc_HasItems(hero,itmi_ironnugget_addon) >= 2) && (Npc_HasItems(hero,itmi_nugget) >= 1))
	{
		return TRUE;
	};
};

func void pc_magicoresmelting_addon_info()
{
	if((Npc_HasItems(hero,itmi_ironnugget_addon) >= 2) && (Npc_HasItems(hero,itmi_nugget) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_ironnugget_addon,2);
		Npc_RemoveInvItems(hero,itmi_nugget,1);
		CreateInvItems(hero,itmi_magicbar,1);
		AI_Wait(other,3);
		Print(PRINT_SMELTPROCESS);
		AI_PrintScreen("Otrzymano - sztaba rudy!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_magicoresmelting_addon);
	};
};


instance PC_MAGICORESMELTING_ADDON_X5(C_INFO)
{
	npc = pc_hero;
	nr = 5;
	condition = pc_magicoresmelting_addon_x5_condition;
	information = pc_magicoresmelting_addon_x5_info;
	permanent = TRUE;
	description = "Wytop 5 sztab rudy (5x bry³ka rudy, 10x bry³ka ¿elaza)";
};


func int pc_magicoresmelting_addon_x5_condition()
{
	if((Monolog_OreSmiling) && (Npc_HasItems(hero,itmi_ironnugget_addon) >= 10) && (Npc_HasItems(hero,itmi_nugget) >= 5))
	{
		return TRUE;
	};
};

func void pc_magicoresmelting_addon_x5_info()
{
	if((Npc_HasItems(hero,itmi_ironnugget_addon) >= 10) && (Npc_HasItems(hero,itmi_nugget) >= 5))
	{
		Npc_RemoveInvItems(hero,itmi_ironnugget_addon,10);
		Npc_RemoveInvItems(hero,itmi_nugget,5);
		CreateInvItems(hero,itmi_magicbar,5);
		AI_Wait(other,5);
		Print(PRINT_SMELTPROCESS);
		AI_PrintScreen("Otrzymano - 5x sztaba rudy!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_magicoresmelting_addon_x5);
	};
};


instance PC_MAGICORESMELTING_ADDON_X10(C_INFO)
{
	npc = pc_hero;
	nr = 6;
	condition = pc_magicoresmelting_addon_x10_condition;
	information = pc_magicoresmelting_addon_x10_info;
	permanent = TRUE;
	description = "Wytop 10 sztab rudy (10x bry³ka rudy, 20x bry³ka ¿elaza)";
};


func int pc_magicoresmelting_addon_x10_condition()
{
	if((Monolog_OreSmiling) && (Npc_HasItems(hero,itmi_ironnugget_addon) >= 20) && (Npc_HasItems(hero,itmi_nugget) >= 10))
	{
		return TRUE;
	};
};

func void pc_magicoresmelting_addon_x10_info()
{
	if((Npc_HasItems(hero,itmi_ironnugget_addon) >= 20) && (Npc_HasItems(hero,itmi_nugget) >= 10))
	{
		Npc_RemoveInvItems(hero,itmi_ironnugget_addon,20);
		Npc_RemoveInvItems(hero,itmi_nugget,10);
		CreateInvItems(hero,itmi_magicbar,10);
		AI_Wait(other,10);
		Print(PRINT_SMELTPROCESS);
		AI_PrintScreen("Otrzymano - 5x sztaba rudy!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_magicoresmelting_addon_x10);
	};
};

