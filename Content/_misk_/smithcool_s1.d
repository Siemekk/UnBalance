
func void smithcool_s1()
{
	var C_NPC her;
	her = Hlp_GetNpc(pc_hero);
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		Monolog_SmithCool = TRUE;
		AI_ProcessInfos(her);
	};
};


instance PC_SMITHCOOL_END(C_INFO)
{
	npc = pc_hero;
	nr = 999;
	condition = pc_smithcool_end_condition;
	information = pc_smithcool_end_info;
	permanent = TRUE;
	description = DIALOG_ENDE;
};


func int pc_smithcool_end_condition()
{
	if(Monolog_SmithCool)
	{
		return TRUE;
	};
};

func void pc_smithcool_end_info()
{
	b_endproductiondialog();
};


instance PC_SMITHCOOL_ADDON(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_smithcool_addon_condition;
	information = pc_smithcool_addon_info;
	permanent = TRUE;
	description = "Ch³odzenie ostrza.";
};


func int pc_smithcool_addon_condition()
{
	if(Monolog_SmithCool)
	{
		return TRUE;
	};
};

func void pc_smithcool_addon_info()
{
	if(Npc_HasItems(hero,itmi_flameberge_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_flameberge_blade,1);
		CreateInvItems(hero,itmi_flameberge_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Gotowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_demonslayer_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_demonslayer_blade,1);
		CreateInvItems(hero,itmi_demonslayer_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Gotowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_claymore_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_claymore_blade,1);
		CreateInvItems(hero,itmi_claymore_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Gotowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_2hfinesword_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_2hfinesword_blade,1);
		CreateInvItems(hero,itmi_2hfinesword_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Gotowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_firstblade2h_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_firstblade2h_blade,1);
		CreateInvItems(hero,itmi_firstblade2h_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Gotowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_anduril_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_anduril_blade,1);
		CreateInvItems(hero,itmi_anduril_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Gotowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_finebastard_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_finebastard_blade,1);
		CreateInvItems(hero,itmi_finebastard_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Gotowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_sot_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_sot_blade,1);
		CreateInvItems(hero,itmi_sot_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Gotowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_1hfinesword_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_1hfinesword_blade,1);
		CreateInvItems(hero,itmi_1hfinesword_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Gotowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_firstblade_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_firstblade_blade,1);
		CreateInvItems(hero,itmi_firstblade_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Gotowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_1h_special_01_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_1h_special_01_blade,1);
		CreateInvItems(hero,itmi_1h_special_01_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Gotowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_2h_special_01_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_2h_special_01_blade,1);
		CreateInvItems(hero,itmi_2h_special_01_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Gotowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_1h_special_02_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_1h_special_02_blade,1);
		CreateInvItems(hero,itmi_1h_special_02_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Gotowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_2h_special_02_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_2h_special_02_blade,1);
		CreateInvItems(hero,itmi_2h_special_02_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Gotowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_1h_special_03_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_1h_special_03_blade,1);
		CreateInvItems(hero,itmi_1h_special_03_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Gotowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_2h_special_03_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_2h_special_03_blade,1);
		CreateInvItems(hero,itmi_2h_special_03_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Gotowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_1h_special_04_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_1h_special_04_blade,1);
		CreateInvItems(hero,itmi_1h_special_04_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Gotowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_2h_special_04_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_2h_special_04_blade,1);
		CreateInvItems(hero,itmi_2h_special_04_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Gotowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_1h_deathbringer_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_1h_deathbringer_blade,1);
		CreateInvItems(hero,itmi_1h_deathbringer_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Gotowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itmi_2h_deathbringer_blade) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_2h_deathbringer_blade,1);
		CreateInvItems(hero,itmi_2h_deathbringer_blade_nh,1);
		AI_Wait(hero,3);
		AI_PrintScreen("Gotowe!",-1,52,FONT_SCREENBRIGHTLARGE,2);
		b_endproductiondialog();
	}
	else
	{
		b_say_overlay(self,self,"$MISSINGITEM");
		PrintScreen("Nie ma czego sch³adzaæ!",-1,-1,FONT_SCREENSMALL,2);
		b_endproductiondialog();
	};
};

