
var int erzwaffen;
var int normalwaffen;
var int grdwaffen;

instance PC_SMITHWEAPON_END(C_INFO)
{
	npc = pc_hero;
	nr = 999;
	condition = pc_smithweapon_end_condition;
	information = pc_smithweapon_end_info;
	permanent = TRUE;
	description = DIALOG_ENDE;
};


func int pc_smithweapon_end_condition()
{
	if(Monolog_Smith_Weapon)
	{
		return TRUE;
	};
};

func void pc_smithweapon_end_info()
{
	b_endproductiondialog();
	ERZWAFFEN = FALSE;
	NORMALWAFFEN = FALSE;
};


instance PC_NEEDCOMPLETEWORK(C_INFO)
{
	npc = pc_hero;
	nr = 1;
	condition = pc_needcompletework_condition;
	information = pc_needcompletework_info;
	permanent = TRUE;
	description = "Zakoñcz pracê.";
};


func int pc_needcompletework_condition()
{
	if((Monolog_Smith_Weapon) && (NOT_COMPLETE_SWORD == TRUE))
	{
		return TRUE;
	};
};

func void pc_needcompletework_info()
{
	b_endproductiondialog();
};


instance PC_COMMON(C_INFO)
{
	npc = pc_hero;
	condition = pc_common_condition;
	information = pc_common_info;
	permanent = TRUE;
	description = "Wykuj stalow¹ broñ.";
};


func int pc_common_condition()
{
	if((Monolog_Smith_Weapon) && (NORMALWAFFEN == FALSE) && (ERZWAFFEN == FALSE) && (GRDWAFFEN == FALSE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_common_info()
{
	NORMALWAFFEN = TRUE;
};


instance PC_ORE(C_INFO)
{
	npc = pc_hero;
	condition = pc_ore_condition;
	information = pc_ore_info;
	permanent = TRUE;
	description = "Wykuj magiczn¹ broñ.";
};


func int pc_ore_condition()
{
	if((Monolog_Smith_Weapon) && (NORMALWAFFEN == FALSE) && (ERZWAFFEN == FALSE) && (GRDWAFFEN == FALSE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_ore_info()
{
	ERZWAFFEN = TRUE;
};


instance PC_UPGRADE_WEAPON(C_INFO)
{
	npc = pc_hero;
	condition = pc_upgrade_weapon_condition;
	information = pc_upgrade_weapon_info;
	permanent = TRUE;
	description = "Ulepsz broñ.";
};


func int pc_upgrade_weapon_condition()
{
	if((Monolog_Smith_Weapon) && (NORMALWAFFEN == FALSE) && (ERZWAFFEN == FALSE) && (GRDWAFFEN == FALSE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_upgrade_weapon_info()
{
	GRDWAFFEN = TRUE;
};


instance PC_COMMONBACK(C_INFO)
{
	npc = pc_hero;
	nr = 99;
	condition = pc_commonback_condition;
	information = pc_commonback_info;
	permanent = TRUE;
	description = DIALOG_BACK;
};


func int pc_commonback_condition()
{
	if((Monolog_Smith_Weapon) && (NORMALWAFFEN == TRUE) && (GRDWAFFEN == FALSE) && (ERZWAFFEN == FALSE))
	{
		return TRUE;
	};
};

func void pc_commonback_info()
{
	NORMALWAFFEN = FALSE;
};


instance PC_OREBACK(C_INFO)
{
	npc = pc_hero;
	nr = 99;
	condition = pc_oreback_condition;
	information = pc_oreback_info;
	permanent = TRUE;
	description = DIALOG_BACK;
};


func int pc_oreback_condition()
{
	if((Monolog_Smith_Weapon) && (NORMALWAFFEN == FALSE) && (GRDWAFFEN == FALSE) && (ERZWAFFEN == TRUE))
	{
		return TRUE;
	};
};

func void pc_oreback_info()
{
	ERZWAFFEN = FALSE;
};


instance PC_UPGRADEBACK(C_INFO)
{
	npc = pc_hero;
	nr = 99;
	condition = pc_upgradeback_condition;
	information = pc_upgradeback_info;
	permanent = TRUE;
	description = DIALOG_BACK;
};


func int pc_upgradeback_condition()
{
	if((Monolog_Smith_Weapon) && (GRDWAFFEN == TRUE) && (NORMALWAFFEN == FALSE) && (ERZWAFFEN == FALSE))
	{
		return TRUE;
	};
};

func void pc_upgradeback_info()
{
	GRDWAFFEN = FALSE;
};


instance PC_ITMW_FIRSTBLADE_BLADE(C_INFO)
{
	npc = pc_hero;
	nr = 10;
	condition = pc_itmw_firstblade_blade_condition;
	information = pc_itmw_firstblade_blade_info;
	permanent = TRUE;
	description = "(1H) Prosty miecz (obra¿enia-40 d³ugoœæ-75 min.si³a-30) - x2 sztaba stali";
};


func int pc_itmw_firstblade_blade_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[0] == TRUE) && (NORMALWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_firstblade_blade_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 2)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		CreateInvItems(hero,itmi_firstblade_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	NORMALWAFFEN = FALSE;
};


instance PC_ITMW_1HFINESWORD_BLADE(C_INFO)
{
	npc = pc_hero;
	nr = 9;
	condition = pc_itmw_1hfinesword_blade_condition;
	information = pc_itmw_1hfinesword_blade_info;
	permanent = TRUE;
	description = "(1H) Dobry miecz (obra¿enia-50 d³ugoœæ-90 min.si³a-40) - x2 sztaba stali";
};


func int pc_itmw_1hfinesword_blade_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[9] == TRUE) && (NORMALWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_1hfinesword_blade_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 2)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		CreateInvItems(hero,itmi_1hfinesword_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	NORMALWAFFEN = FALSE;
};


instance PC_ITMW_SOT_BLADE(C_INFO)
{
	npc = pc_hero;
	nr = 8;
	condition = pc_itmw_sot_blade_condition;
	information = pc_itmw_sot_blade_info;
	permanent = TRUE;
	description = "(1H) Miecz Prawdy (obra¿enia-65 d³ugoœæ-95 min.si³a-55) - x2 sztaba stali";
};


func int pc_itmw_sot_blade_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[10] == TRUE) && (NORMALWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_sot_blade_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 2)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		CreateInvItems(hero,itmi_sot_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	NORMALWAFFEN = FALSE;
};


instance PC_ITMW_FINEBASTARD_BLADE(C_INFO)
{
	npc = pc_hero;
	nr = 7;
	condition = pc_itmw_finebastard_blade_condition;
	information = pc_itmw_finebastard_blade_info;
	permanent = TRUE;
	description = "(1H) Dobry miecz pó³torarêczny (obra¿enia-85 d³ugoœæ-100 min.si³a-70) - x3 sztaba stali";
};


func int pc_itmw_finebastard_blade_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[11] == TRUE) && (NORMALWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_finebastard_blade_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 3)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,3);
		CreateInvItems(hero,itmi_finebastard_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	NORMALWAFFEN = FALSE;
};


instance PC_ITMW_ANDURIL_BLADE(C_INFO)
{
	npc = pc_hero;
	nr = 6;
	condition = pc_itmw_anduril_blade_condition;
	information = pc_itmw_anduril_blade_info;
	permanent = TRUE;
	description = "(1H) Wspania³y miecz pó³torarêczny (obra¿enia-100 d³ugoœæ-110 min.si³a-90) - x3 sztaba stali";
};


func int pc_itmw_anduril_blade_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[12] == TRUE) && (NORMALWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_anduril_blade_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 3)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,3);
		CreateInvItems(hero,itmi_anduril_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	NORMALWAFFEN = FALSE;
};


instance PC_ITMW_ANDURIL_GRD1(C_INFO)
{
	npc = pc_hero;
	nr = 6;
	condition = pc_itmw_anduril_grd1_condition;
	information = pc_itmw_anduril_grd1_info;
	permanent = TRUE;
	description = "(1H) Wspania³y miecz pó³torarêczny (ulepszenie-poziom 1) - 2x sztaba stali, 1x sztaba rudy";
};


func int pc_itmw_anduril_grd1_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[12] == TRUE) && (GRDWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE) && (Npc_HasItems(hero,itmw_anduril) >= 1) && (KNOWS_SMITHMASTERBOOK_LVL1 == TRUE))
	{
		return TRUE;
	};
};

func void pc_itmw_anduril_grd1_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 2) && (Npc_HasItems(hero,itmi_magicbar) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmi_magicbar,1);
		Npc_RemoveInvItems(hero,itmw_anduril,1);
		CreateInvItems(hero,itmw_anduril_grd1,1);
		AI_PrintScreen(PRINT_SMITHSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipBestMeleeWeapon(hero);
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	GRDWAFFEN = FALSE;
};


instance PC_ITMW_ANDURIL_GRD2(C_INFO)
{
	npc = pc_hero;
	nr = 6;
	condition = pc_itmw_anduril_grd2_condition;
	information = pc_itmw_anduril_grd2_info;
	permanent = TRUE;
	description = "(1H) Wspania³y miecz pó³torarêczny (ulepszenie-poziom 2) - 1x sztaba stali, 1x sztaba rudy";
};


func int pc_itmw_anduril_grd2_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[12] == TRUE) && (GRDWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE) && (Npc_HasItems(hero,itmw_anduril_grd1) >= 1) && (KNOWS_SMITHMASTERBOOK_LVL2 == TRUE))
	{
		return TRUE;
	};
};

func void pc_itmw_anduril_grd2_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_magicbar) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_magicbar,1);
		Npc_RemoveInvItems(hero,itmw_anduril_grd1,1);
		CreateInvItems(hero,itmw_anduril_grd2,1);
		AI_PrintScreen(PRINT_SMITHSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipBestMeleeWeapon(hero);
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	GRDWAFFEN = FALSE;
};


instance PC_ITMW_ANDURIL_GRD3(C_INFO)
{
	npc = pc_hero;
	nr = 6;
	condition = pc_itmw_anduril_grd3_condition;
	information = pc_itmw_anduril_grd3_info;
	permanent = TRUE;
	description = "(1H) Wspania³y miecz pó³torarêczny (ulepszenie-poziom 3) - 1x sztaba stali, 1x sztaba rudy";
};


func int pc_itmw_anduril_grd3_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[12] == TRUE) && (GRDWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE) && (Npc_HasItems(hero,itmw_anduril_grd2) >= 1) && (KNOWS_SMITHMASTERBOOK_LVL3 == TRUE))
	{
		return TRUE;
	};
};

func void pc_itmw_anduril_grd3_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_magicbar) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_magicbar,1);
		Npc_RemoveInvItems(hero,itmw_anduril_grd2,1);
		CreateInvItems(hero,itmw_anduril_grd3,1);
		AI_PrintScreen(PRINT_SMITHSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipBestMeleeWeapon(hero);
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	GRDWAFFEN = FALSE;
};


instance PC_ITMW_FIRSTBLADE2H_BLADE(C_INFO)
{
	npc = pc_hero;
	nr = 5;
	condition = pc_itmw_firstblade2h_blade_condition;
	information = pc_itmw_firstblade2h_blade_info;
	permanent = TRUE;
	description = "(2H) Prosty miecz dwurêczny (obra¿enia-60 d³ugoœæ-100 min.si³a-50) - 4x sztaba stali";
};


func int pc_itmw_firstblade2h_blade_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[13] == TRUE) && (NORMALWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_firstblade2h_blade_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 4)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,4);
		CreateInvItems(hero,itmi_firstblade2h_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	NORMALWAFFEN = FALSE;
};


instance PC_ITMW_2HFINESWORD_BLADE(C_INFO)
{
	npc = pc_hero;
	nr = 4;
	condition = pc_itmw_2hfinesword_blade_condition;
	information = pc_itmw_2hfinesword_blade_info;
	permanent = TRUE;
	description = "(2H) Dobry miecz dwurêczny (obra¿enia-80 d³ugoœæ-140 min.si³a-70) - 4x sztaba stali";
};


func int pc_itmw_2hfinesword_blade_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[15] == TRUE) && (NORMALWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_2hfinesword_blade_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 4)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,4);
		CreateInvItems(hero,itmi_2hfinesword_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	NORMALWAFFEN = FALSE;
};


instance PC_ITMW_CLAYMORE_BLADE(C_INFO)
{
	npc = pc_hero;
	nr = 3;
	condition = pc_itmw_claymore_blade_condition;
	information = pc_itmw_claymore_blade_info;
	permanent = TRUE;
	description = "(2H) Claymore (obra¿enia-100 d³ugoœæ-110 min.si³a-90) - 4x sztaba stali";
};


func int pc_itmw_claymore_blade_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[14] == TRUE) && (NORMALWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_claymore_blade_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 4)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,4);
		CreateInvItems(hero,itmi_claymore_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	NORMALWAFFEN = FALSE;
};


instance PC_ITMW_DEMONSLAYER_BLADE(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_itmw_demonslayer_blade_condition;
	information = pc_itmw_demonslayer_blade_info;
	permanent = TRUE;
	description = "(2H) 'Pogromca Demonów' (obra¿enia-125 d³ugoœæ-135 min.si³a-125) - 5x sztaba stali";
};


func int pc_itmw_demonslayer_blade_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[16] == TRUE) && (NORMALWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_demonslayer_blade_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 5)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,5);
		CreateInvItems(hero,itmi_demonslayer_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	NORMALWAFFEN = FALSE;
};


instance PC_ITMW_FLAMEBERGE_BLADE(C_INFO)
{
	npc = pc_hero;
	nr = 1;
	condition = pc_itmw_flameberge_blade_condition;
	information = pc_itmw_flameberge_blade_info;
	permanent = TRUE;
	description = "(2H) Flamberg (obra¿enia-150 d³ugoœæ-150 min.si³a-150) - 5x sztaba stali";
};


func int pc_itmw_flameberge_blade_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[17] == TRUE) && (NORMALWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_flameberge_blade_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 5)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,5);
		CreateInvItems(hero,itmi_flameberge_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	NORMALWAFFEN = FALSE;
};


instance PC_ITMW_FLAMEBERGE_GRD1(C_INFO)
{
	npc = pc_hero;
	nr = 6;
	condition = pc_itmw_flameberge_grd1_condition;
	information = pc_itmw_flameberge_grd1_info;
	permanent = TRUE;
	description = "(2H) Flamberg (ulepszenie-poziom 1) - 2x sztaba stali";
};


func int pc_itmw_flameberge_grd1_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[17] == TRUE) && (GRDWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE) && (Npc_HasItems(hero,itmw_flameberge) >= 1) && (KNOWS_SMITHMASTERBOOK_LVL1 == TRUE))
	{
		return TRUE;
	};
};

func void pc_itmw_flameberge_grd1_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 2)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmw_flameberge,1);
		CreateInvItems(hero,itmw_flameberge_grd1,1);
		AI_PrintScreen(PRINT_SMITHSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipBestMeleeWeapon(hero);
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	GRDWAFFEN = FALSE;
};


instance PC_ITMW_FLAMEBERGE_GRD2(C_INFO)
{
	npc = pc_hero;
	nr = 6;
	condition = pc_itmw_flameberge_grd2_condition;
	information = pc_itmw_flameberge_grd2_info;
	permanent = TRUE;
	description = "(2H) Flamberg (ulepszenie-poziom 2) - 2x sztaba stali, 2x sztaba rudy";
};


func int pc_itmw_flameberge_grd2_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[17] == TRUE) && (GRDWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE) && (Npc_HasItems(hero,itmw_flameberge_grd1) >= 1) && (KNOWS_SMITHMASTERBOOK_LVL2 == TRUE))
	{
		return TRUE;
	};
};

func void pc_itmw_flameberge_grd2_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 2) && (Npc_HasItems(hero,itmi_magicbar) >= 2))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmi_magicbar,2);
		Npc_RemoveInvItems(hero,itmw_flameberge_grd1,1);
		CreateInvItems(hero,itmw_flameberge_grd2,1);
		AI_PrintScreen(PRINT_SMITHSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipBestMeleeWeapon(hero);
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	GRDWAFFEN = FALSE;
};


instance PC_ITMW_FLAMEBERGE_GRD3(C_INFO)
{
	npc = pc_hero;
	nr = 6;
	condition = pc_itmw_flameberge_grd3_condition;
	information = pc_itmw_flameberge_grd3_info;
	permanent = TRUE;
	description = "(2H) Flamberg (ulepszenie-poziom 3) - 1x sztaba stali";
};


func int pc_itmw_flameberge_grd3_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[17] == TRUE) && (GRDWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE) && (Npc_HasItems(hero,itmw_flameberge_grd2) >= 1) && (KNOWS_SMITHMASTERBOOK_LVL3 == TRUE))
	{
		return TRUE;
	};
};

func void pc_itmw_flameberge_grd3_info()
{
	if(Npc_HasItems(hero,itmi_steelbar) >= 1)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmw_flameberge_grd2,1);
		CreateInvItems(hero,itmw_flameberge_grd3,1);
		AI_PrintScreen(PRINT_SMITHSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipBestMeleeWeapon(hero);
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	GRDWAFFEN = FALSE;
};


instance PC_ITMW_1H_SPECIAL_01(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_1h_special_01_condition;
	information = pc_itmw_1h_special_01_info;
	permanent = TRUE;
	description = "(1H) D³ugi miecz magiczny - 1x sztaba rudy, 2x sztaba stali";
};


func int pc_itmw_1h_special_01_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[WEAPON_1H_SPECIAL_01] == TRUE) && (ERZWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_1h_special_01_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 2) && (Npc_HasItems(hero,itmi_magicbar) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmi_magicbar,1);
		CreateInvItems(hero,itmi_1h_special_01_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	ERZWAFFEN = FALSE;
};


instance PC_ITMW_2H_SPECIAL_01(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_2h_special_01_condition;
	information = pc_itmw_2h_special_01_info;
	permanent = TRUE;
	description = "(2H) Magiczny miecz dwurêczny - 2x sztaba rudy, 3x sztaba stali";
};


func int pc_itmw_2h_special_01_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[WEAPON_2H_SPECIAL_01] == TRUE) && (ERZWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_2h_special_01_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 3) && (Npc_HasItems(hero,itmi_magicbar) >= 2))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,3);
		Npc_RemoveInvItems(hero,itmi_magicbar,2);
		CreateInvItems(hero,itmi_2h_special_01_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	ERZWAFFEN = FALSE;
};


instance PC_ITMW_1H_SPECIAL_02(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_1h_special_02_condition;
	information = pc_itmw_1h_special_02_info;
	permanent = TRUE;
	description = "(1H) Magiczny miecz pó³torarêczny - 1x sztaba rudy, 2x sztaba stali";
};


func int pc_itmw_1h_special_02_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[WEAPON_1H_SPECIAL_02] == TRUE) && (ERZWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_1h_special_02_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 2) && (Npc_HasItems(hero,itmi_magicbar) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmi_magicbar,1);
		CreateInvItems(hero,itmi_1h_special_02_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	ERZWAFFEN = FALSE;
};


instance PC_ITMW_2H_SPECIAL_02(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_2h_special_02_condition;
	information = pc_itmw_2h_special_02_info;
	permanent = TRUE;
	description = "(2H) Ciê¿ki magiczny miecz dwurêczny - 2x sztaba rudy, 3x sztaba stali";
};


func int pc_itmw_2h_special_02_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[WEAPON_2H_SPECIAL_02] == TRUE) && (ERZWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_2h_special_02_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 3) && (Npc_HasItems(hero,itmi_magicbar) >= 2))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,3);
		Npc_RemoveInvItems(hero,itmi_magicbar,2);
		CreateInvItems(hero,itmi_2h_special_02_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	ERZWAFFEN = FALSE;
};


instance PC_ITMW_1H_SPECIAL_03(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_1h_special_03_condition;
	information = pc_itmw_1h_special_03_info;
	permanent = TRUE;
	description = "(1H) Magiczne ostrze bojowe - 2x sztaba rudy, 2x sztaba stali";
};


func int pc_itmw_1h_special_03_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[WEAPON_1H_SPECIAL_03] == TRUE) && (ERZWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_1h_special_03_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 2) && (Npc_HasItems(hero,itmi_magicbar) >= 2))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmi_magicbar,2);
		CreateInvItems(hero,itmi_1h_special_03_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	ERZWAFFEN = FALSE;
};


instance PC_ITMW_2H_SPECIAL_03(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_2h_special_03_condition;
	information = pc_itmw_2h_special_03_info;
	permanent = TRUE;
	description = "(2H) Ciê¿kie magiczne ostrze bojowe - 3x sztaba rudy, 3x sztaba stali";
};


func int pc_itmw_2h_special_03_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[WEAPON_2H_SPECIAL_03] == TRUE) && (ERZWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_2h_special_03_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 3) && (Npc_HasItems(hero,itmi_magicbar) >= 3))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,3);
		Npc_RemoveInvItems(hero,itmi_magicbar,3);
		CreateInvItems(hero,itmi_2h_special_03_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	ERZWAFFEN = FALSE;
};


instance PC_ITMW_1H_SPECIAL_04(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_1h_special_04_condition;
	information = pc_itmw_1h_special_04_info;
	permanent = TRUE;
	description = "(1H) Magiczne ostrze na smoki - 5x smocza krew, 3x sztaba rudy, 4x sztaba stali";
};


func int pc_itmw_1h_special_04_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[WEAPON_1H_SPECIAL_04] == TRUE) && (ERZWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_1h_special_04_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 4) && (Npc_HasItems(hero,itmi_magicbar) >= 3) && (Npc_HasItems(hero,itat_dragonblood) >= 5))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,4);
		Npc_RemoveInvItems(hero,itmi_magicbar,3);
		Npc_RemoveInvItems(hero,itat_dragonblood,5);
		CreateInvItems(hero,itmi_1h_special_04_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	ERZWAFFEN = FALSE;
};


instance PC_ITMW_2H_SPECIAL_04(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_2h_special_04_condition;
	information = pc_itmw_2h_special_04_info;
	permanent = TRUE;
	description = "(2H) Du¿e magiczne ostrze na smoki - 5x smocza krew, 4x sztaba rudy, 5x sztaba stali";
};


func int pc_itmw_2h_special_04_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[WEAPON_2H_SPECIAL_04] == TRUE) && (ERZWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_2h_special_04_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 5) && (Npc_HasItems(hero,itmi_magicbar) >= 4) && (Npc_HasItems(hero,itat_dragonblood) >= 5))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,5);
		Npc_RemoveInvItems(hero,itmi_magicbar,4);
		Npc_RemoveInvItems(hero,itat_dragonblood,5);
		CreateInvItems(hero,itmi_2h_special_04_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	ERZWAFFEN = FALSE;
};


instance PC_ITMW_1H_DEATHBRINGER(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_1h_deathbringer_condition;
	information = pc_itmw_1h_deathbringer_info;
	permanent = TRUE;
	description = "(1H) Druzgoc¹ce ostrze magiczne - 6x smocza krew, 4x sztaba rudy, 4x sztaba stali";
};


func int pc_itmw_1h_deathbringer_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[18] == TRUE) && (ERZWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_1h_deathbringer_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 4) && (Npc_HasItems(hero,itmi_magicbar) >= 4) && (Npc_HasItems(hero,itat_dragonblood) >= 6))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,4);
		Npc_RemoveInvItems(hero,itmi_magicbar,4);
		Npc_RemoveInvItems(hero,itat_dragonblood,6);
		CreateInvItems(hero,itmi_1h_deathbringer_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	ERZWAFFEN = FALSE;
};


instance PC_ITMW_2H_DEATHBRINGER(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_2h_deathbringer_condition;
	information = pc_itmw_2h_deathbringer_info;
	permanent = TRUE;
	description = "(2H) Du¿e druzgoc¹ce ostrze magiczne - 7x smocza krew, 5x sztaba rudy, 5x sztaba stali";
};


func int pc_itmw_2h_deathbringer_condition()
{
	if((Monolog_Smith_Weapon) && (PLAYER_TALENT_SMITH[19] == TRUE) && (ERZWAFFEN == TRUE) && (NOT_COMPLETE_SWORD == FALSE))
	{
		return TRUE;
	};
};

func void pc_itmw_2h_deathbringer_info()
{
	if((Npc_HasItems(hero,itmi_steelbar) >= 5) && (Npc_HasItems(hero,itmi_magicbar) >= 5) && (Npc_HasItems(hero,itat_dragonblood) >= 7))
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,5);
		Npc_RemoveInvItems(hero,itmi_magicbar,5);
		Npc_RemoveInvItems(hero,itat_dragonblood,7);
		CreateInvItems(hero,itmi_2h_deathbringer_blade,1);
		AI_Wait(hero,5);
		Print(PRINT_BLADEPROCESS);
		AI_PrintScreen(PRINT_BLADESUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = TRUE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	ERZWAFFEN = FALSE;
};

func void smithweapon_s1()
{
	var C_NPC her;
	her = Hlp_GetNpc(pc_hero);
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		Monolog_Smith_Weapon = TRUE;
		AI_ProcessInfos(her);
	};
	pc_itmw_1h_special_01.description = ConcatStrings(NAME_ITMW_1H_SPECIAL_01,PRINT_SMITH_1H_SPECIAL_01);
	pc_itmw_2h_special_01.description = ConcatStrings(NAME_ITMW_2H_SPECIAL_01,PRINT_SMITH_2H_SPECIAL_01);
	pc_itmw_1h_special_02.description = ConcatStrings(NAME_ITMW_1H_SPECIAL_02,PRINT_SMITH_1H_SPECIAL_02);
	pc_itmw_2h_special_02.description = ConcatStrings(NAME_ITMW_2H_SPECIAL_02,PRINT_SMITH_2H_SPECIAL_02);
	pc_itmw_1h_special_03.description = ConcatStrings(NAME_ITMW_1H_SPECIAL_03,PRINT_SMITH_1H_SPECIAL_03);
	pc_itmw_2h_special_03.description = ConcatStrings(NAME_ITMW_2H_SPECIAL_03,PRINT_SMITH_2H_SPECIAL_03);
	pc_itmw_1h_special_04.description = ConcatStrings(NAME_ITMW_1H_SPECIAL_04,PRINT_SMITH_1H_SPECIAL_04);
	pc_itmw_2h_special_04.description = ConcatStrings(NAME_ITMW_2H_SPECIAL_04,PRINT_SMITH_2H_SPECIAL_04);
	pc_itmw_1h_deathbringer.description = ConcatStrings(NAME_ITMW_1H_DEATHBRINGER,PRINT_SMITH_1H_DEATHBRINGER);
	pc_itmw_2h_deathbringer.description = ConcatStrings(NAME_ITMW_2H_DEATHBRINGER,PRINT_SMITH_2H_DEATHBRINGER);
};

