
func void leatherwork_s1()
{
	var C_NPC her;
	her = Hlp_GetNpc(pc_hero);
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		Monolog_LeatherWorking= TRUE;
		AI_ProcessInfos(her);
	};
};


instance PC_LEATHERWORK_END(C_INFO)
{
	npc = pc_hero;
	nr = 999;
	condition = pc_leatherwork_end_condition;
	information = pc_leatherwork_end_info;
	permanent = TRUE;
	description = DIALOG_ENDE;
};


func int pc_leatherwork_end_condition()
{
	if(Monolog_LeatherWorking)
	{
		return TRUE;
	};
};

func void pc_leatherwork_end_info()
{
	b_endproductiondialog();
};


instance PC_LEATHERWORK_NOSKILL(C_INFO)
{
	npc = pc_hero;
	nr = 1;
	condition = pc_leatherwork_noskill_condition;
	information = pc_leatherwork_noskill_info;
	permanent = TRUE;
	description = "BRAK WYMAGANEJ UMIEJÊTNOŒCI (zakoñcz).";
};


func int pc_leatherwork_noskill_condition()
{
	if((Monolog_LeatherWorking) && (PLAYER_TALENT_LEATHER == FALSE))
	{
		return TRUE;
	};
};

func void pc_leatherwork_noskill_info()
{
	b_endproductiondialog();
};


instance PC_LEATHERWORK_ADDON(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_leatherwork_addon_condition;
	information = pc_leatherwork_addon_info;
	permanent = TRUE;
	description = "Obrób skóry.";
};


func int pc_leatherwork_addon_condition()
{
	if((Monolog_LeatherWorking) && (PLAYER_TALENT_LEATHER == TRUE))
	{
		return TRUE;
	};
};

func void pc_leatherwork_addon_info()
{
	if(Npc_HasItems(hero,itat_sheepfur) >= 1)
	{
		Npc_RemoveInvItems(hero,itat_sheepfur,1);
		CreateInvItems(hero,itmi_leather,1);
		AI_Wait(hero,2);
		PrintScreen("Obrabianie owczej skóry!",-1,-1,FONT_SCREENSMALL,2);
		AI_PrintScreen("Otrzymano - skóra.",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_leatherwork_addon);
	}
	else if(Npc_HasItems(hero,itat_wolffur) >= 1)
	{
		Npc_RemoveInvItems(hero,itat_wolffur,1);
		CreateInvItems(hero,itmi_leather,1);
		AI_Wait(hero,2);
		PrintScreen("Obrabianie wilczej skóry!",-1,-1,FONT_SCREENSMALL,2);
		AI_PrintScreen("Otrzymano - skóra.",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_leatherwork_addon);
	}
	else if(Npc_HasItems(hero,itat_addon_keilerfur) >= 1)
	{
		Npc_RemoveInvItems(hero,itat_addon_keilerfur,1);
		CreateInvItems(hero,itmi_leather,2);
		AI_Wait(hero,2);
		PrintScreen("Obrabianie skóry dzika!",-1,-1,FONT_SCREENSMALL,2);
		AI_PrintScreen("Otrzymano - 2x skóra.",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_leatherwork_addon);
	}
	else if(Npc_HasItems(hero,itat_wargfur) >= 1)
	{
		Npc_RemoveInvItems(hero,itat_wargfur,1);
		CreateInvItems(hero,itmi_leather,2);
		AI_Wait(hero,2);
		PrintScreen("Obrabianie skóry warga!",-1,-1,FONT_SCREENSMALL,2);
		AI_PrintScreen("Otrzymano - 2x skóra.",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_leatherwork_addon);
	}
	else if(Npc_HasItems(hero,itat_sharkskin) >= 1)
	{
		Npc_RemoveInvItems(hero,itat_sharkskin,1);
		CreateInvItems(hero,itmi_leather,3);
		AI_Wait(hero,2);
		PrintScreen("Obrabianie skóry wê¿a b³otnego!",-1,-1,FONT_SCREENSMALL,2);
		AI_PrintScreen("Otrzymano - 3x skóra.",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_leatherwork_addon);
	}
	else if(Npc_HasItems(hero,itat_shadowfur) >= 1)
	{
		Npc_RemoveInvItems(hero,itat_shadowfur,1);
		CreateInvItems(hero,itmi_leather,4);
		AI_Wait(hero,2);
		PrintScreen("Obrabianie skóry cieniostwora!",-1,-1,FONT_SCREENSMALL,2);
		AI_PrintScreen("Otrzymano - 4x skóra.",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_leatherwork_addon);
	}
	else if(Npc_HasItems(hero,itat_trollfur) >= 1)
	{
		Npc_RemoveInvItems(hero,itat_trollfur,1);
		CreateInvItems(hero,itmi_leather,5);
		AI_Wait(hero,2);
		PrintScreen("Obrabianie skóry trolla!",-1,-1,FONT_SCREENSMALL,2);
		AI_PrintScreen("Otrzymano - 5x skóra.",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_leatherwork_addon);
	}
	else if(Npc_HasItems(hero,itat_trollblackfur) >= 1)
	{
		Npc_RemoveInvItems(hero,itat_trollblackfur,1);
		CreateInvItems(hero,itmi_leather,10);
		AI_Wait(hero,3);
		PrintScreen("Obrabianie skóry czarnego trolla!",-1,-1,FONT_SCREENSMALL,2);
		AI_PrintScreen("Otrzymano - 10x skóra.",-1,52,FONT_SCREENBRIGHTLARGE,2);
		Info_ClearChoices(pc_leatherwork_addon);
	}
	else
	{
		b_say_overlay(self,self,"$MISSINGITEM");
		PrintScreen("Brak skór!",-1,-1,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	};
};

