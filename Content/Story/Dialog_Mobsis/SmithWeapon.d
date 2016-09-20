
var int grdarmor;
var int crtarmor;
var int cmpltwpn;

instance PC_SMITHARMOR_END(C_INFO)
{
	npc = pc_hero;
	nr = 999;
	condition = pc_smitharmor_end_condition;
	information = pc_smitharmor_end_info;
	permanent = TRUE;
	description = DIALOG_ENDE;
};


func int pc_smitharmor_end_condition()
{
	if(Monolog_Smith_Armor)
	{
		return TRUE;
	};
};

func void pc_smitharmor_end_info()
{
	b_endproductiondialog();
	GRDARMOR = FALSE;
	CRTARMOR = FALSE;
};


instance PC_ARUPGRADE(C_INFO)
{
	npc = pc_hero;
	nr = 12;
	condition = pc_arupgrade_condition;
	information = pc_arupgrade_info;
	permanent = TRUE;
	description = "Ulepsz zbroje";
};


func int pc_arupgrade_condition()
{
	if((Monolog_Smith_Armor) && (GRDARMOR == FALSE) && (CMPLTWPN == FALSE) && (CRTARMOR == FALSE))
	{
		return TRUE;
	};
};

func void pc_arupgrade_info()
{
	GRDARMOR = TRUE;
};


instance PC_ARUPGRADEBACK(C_INFO)
{
	npc = pc_hero;
	nr = 99;
	condition = pc_arupgradeback_condition;
	information = pc_arupgradeback_info;
	permanent = TRUE;
	description = DIALOG_BACK;
};


func int pc_arupgradeback_condition()
{
	if((Monolog_Smith_Armor) && (GRDARMOR == TRUE) && (CMPLTWPN == FALSE) && (CRTARMOR == FALSE))
	{
		return TRUE;
	};
};

func void pc_arupgradeback_info()
{
	GRDARMOR = FALSE;
};


instance PC_ARCREATEBACK(C_INFO)
{
	npc = pc_hero;
	nr = 99;
	condition = pc_arcreateback_condition;
	information = pc_arcreateback_info;
	permanent = TRUE;
	description = DIALOG_BACK;
};


func int pc_arcreateback_condition()
{
	if((Monolog_Smith_Armor) && (GRDARMOR == FALSE) && (CMPLTWPN == FALSE) && (CRTARMOR == TRUE))
	{
		return TRUE;
	};
};

func void pc_arcreateback_info()
{
	CRTARMOR = FALSE;
};


instance PC_ARCREATE(C_INFO)
{
	npc = pc_hero;
	nr = 11;
	condition = pc_arcreate_condition;
	information = pc_arcreate_info;
	permanent = TRUE;
	description = "Wykuj zbroje";
};


func int pc_arcreate_condition()
{
	if((Monolog_Smith_Armor) && (GRDARMOR == FALSE) && (CMPLTWPN == FALSE) && (CRTARMOR == FALSE))
	{
		return TRUE;
	};
};

func void pc_arcreate_info()
{
	CRTARMOR = TRUE;
};


instance PC_ITAR_LHBO_ADDON(C_INFO)
{
	nr = 4;
	npc = pc_hero;
	condition = pc_itar_lhbo_addon_condition;
	information = pc_itar_lhbo_addon_info;
	permanent = TRUE;
	description = "Zbroja z czarnej rudy (4x czarna ruda, 5x tkaniny, 2x skóra cieniostwora, 15x skóra gada, 12x sztaba stali)";
};


func int pc_itar_lhbo_addon_condition()
{
	if((Monolog_Smith_Armor) && (KNOWS_SLDBLACKORE == TRUE) && (CRTARMOR == TRUE) && (Npc_HasItems(hero,itar_lhbo_addon) == FALSE) && (PLAYER_TALENT_ARMOR[2] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_lhbo_addon_info()
{
	if((Npc_HasItems(self,itat_shadowfur) >= 2) && (Npc_HasItems(self,itmi_zeitspalt_addon) >= 4) && (Npc_HasItems(self,itmi_textile) >= 5) && (Npc_HasItems(self,itmi_leather) >= 15) && (Npc_HasItems(self,itmi_steelbar) >= 12))
	{
		Npc_RemoveInvItems(hero,itat_shadowfur,2);
		Npc_RemoveInvItems(hero,itmi_zeitspalt_addon,4);
		Npc_RemoveInvItems(hero,itmi_textile,5);
		Npc_RemoveInvItems(hero,itmi_leather,15);
		Npc_RemoveInvItems(hero,itmi_steelbar,12);
		CreateInvItems(hero,itar_lhbo_addon,1);
		AI_EquipArmor(hero,itar_lhbo_addon);
		Print(PRINT_CRTARSUCCESS);
		b_say(self,self,"DIA_Buster_Hello_Impressive_15_00");
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_W2_TKNIGHT(C_INFO)
{
	nr = 4;
	npc = pc_hero;
	condition = pc_itar_w2_tknight_condition;
	information = pc_itar_w2_tknight_info;
	permanent = TRUE;
	description = "Królewski pancerz (14x sztaba stali, 20x skóra, 8x tkaniny)";
};


func int pc_itar_w2_tknight_condition()
{
	if((Monolog_Smith_Armor) && (KNOWS_W2KNIGHT == TRUE) && (CRTARMOR == TRUE) && (Npc_HasItems(hero,itar_w2_tknight) == FALSE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_w2_tknight_info()
{
	if((Npc_HasItems(self,itmi_textile) >= 8) && (Npc_HasItems(self,itmi_leather) >= 20) && (Npc_HasItems(self,itmi_steelbar) >= 14))
	{
		Npc_RemoveInvItems(hero,itmi_textile,8);
		Npc_RemoveInvItems(hero,itmi_leather,20);
		Npc_RemoveInvItems(hero,itmi_steelbar,14);
		CreateInvItems(hero,itar_w2_tknight,1);
		AI_Wait(hero,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_w2_tknight);
		b_say(self,self,"DIA_Buster_Hello_Impressive_15_00");
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	CRTARMOR = FALSE;
};


instance PC_ITAR_W2_TKNIGHT_GRD1(C_INFO)
{
	nr = 4;
	npc = pc_hero;
	condition = pc_itar_w2_tknight_grd1_condition;
	information = pc_itar_w2_tknight_grd1_info;
	permanent = TRUE;
	description = "Wzmocniony królewski pancerz (2x sztaba stali, 1x skóra)";
};


func int pc_itar_w2_tknight_grd1_condition()
{
	if((Monolog_Smith_Armor) && (KNOWS_W2KNIGHT_GRD1TO2 == TRUE) && (GRDARMOR == TRUE) && (Npc_HasItems(hero,itar_w2_tknight) == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_w2_tknight_grd1_info()
{
	if((Npc_HasItems(self,itmi_leather) >= 1) && (Npc_HasItems(self,itmi_steelbar) >= 2))
	{
		Npc_RemoveInvItems(hero,itmi_leather,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itar_w2_tknight,1);
		CreateInvItems(hero,itar_w2_tknight_grd1,1);
		AI_Wait(hero,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_w2_tknight_grd1);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_W2_TKNIGHT_GRD2(C_INFO)
{
	nr = 4;
	npc = pc_hero;
	condition = pc_itar_w2_tknight_grd2_condition;
	information = pc_itar_w2_tknight_grd2_info;
	permanent = TRUE;
	description = "2x wzmocniony królewski pancerz (2x sztaba stali, 1x skóra)";
};


func int pc_itar_w2_tknight_grd2_condition()
{
	if((Monolog_Smith_Armor) && (KNOWS_W2KNIGHT_GRD1TO2 == TRUE) && (GRDARMOR == TRUE) && (Npc_HasItems(hero,itar_w2_tknight_grd1) == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_w2_tknight_grd2_info()
{
	if((Npc_HasItems(self,itmi_leather) >= 1) && (Npc_HasItems(self,itmi_steelbar) >= 2))
	{
		Npc_RemoveInvItems(hero,itmi_leather,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itar_w2_tknight_grd1,1);
		CreateInvItems(hero,itar_w2_tknight_grd2,1);
		AI_Wait(hero,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_w2_tknight_grd2);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_W2_TKNIGHT_GRD3(C_INFO)
{
	nr = 4;
	npc = pc_hero;
	condition = pc_itar_w2_tknight_grd3_condition;
	information = pc_itar_w2_tknight_grd3_info;
	permanent = TRUE;
	description = "3x wzmocniony królewski pancerz (4x sztaba stali, 1x skóra)";
};


func int pc_itar_w2_tknight_grd3_condition()
{
	if((Monolog_Smith_Armor) && (KNOWS_W2KNIGHT_GRD3TO4 == TRUE) && (GRDARMOR == TRUE) && (Npc_HasItems(hero,itar_w2_tknight_grd2) == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_w2_tknight_grd3_info()
{
	if((Npc_HasItems(self,itmi_leather) >= 1) && (Npc_HasItems(self,itmi_steelbar) >= 4))
	{
		Npc_RemoveInvItems(hero,itmi_leather,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,4);
		Npc_RemoveInvItems(hero,itar_w2_tknight_grd2,1);
		CreateInvItems(hero,itar_w2_tknight_grd3,1);
		AI_Wait(hero,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_w2_tknight_grd3);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_W2_TKNIGHT_GRD4(C_INFO)
{
	nr = 4;
	npc = pc_hero;
	condition = pc_itar_w2_tknight_grd4_condition;
	information = pc_itar_w2_tknight_grd4_info;
	permanent = TRUE;
	description = "4x wzmocniony królewski pancerz (4x sztaba stali, 3x skóra)";
};


func int pc_itar_w2_tknight_grd4_condition()
{
	if((Monolog_Smith_Armor) && (KNOWS_W2KNIGHT_GRD3TO4 == TRUE) && (GRDARMOR == TRUE) && (Npc_HasItems(hero,itar_w2_tknight_grd3) == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_w2_tknight_grd4_info()
{
	if((Npc_HasItems(self,itmi_leather) >= 3) && (Npc_HasItems(self,itmi_steelbar) >= 4))
	{
		Npc_RemoveInvItems(hero,itmi_leather,3);
		Npc_RemoveInvItems(hero,itmi_steelbar,4);
		Npc_RemoveInvItems(hero,itar_w2_tknight_grd3,1);
		CreateInvItems(hero,itar_w2_tknight_grd4,1);
		AI_Wait(hero,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_w2_tknight_grd4);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_W2_TKNIGHT_GRD5(C_INFO)
{
	nr = 4;
	npc = pc_hero;
	condition = pc_itar_w2_tknight_grd5_condition;
	information = pc_itar_w2_tknight_grd5_info;
	permanent = TRUE;
	description = "5x wzmocniony królewski pancerz (3x sztaba stali)";
};


func int pc_itar_w2_tknight_grd5_condition()
{
	if((Monolog_Smith_Armor) && (KNOWS_W2KNIGHT_GRD5TO7 == TRUE) && (GRDARMOR == TRUE) && (Npc_HasItems(hero,itar_w2_tknight_grd4) == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_w2_tknight_grd5_info()
{
	if(Npc_HasItems(self,itmi_steelbar) >= 3)
	{
		Npc_RemoveInvItems(hero,itmi_steelbar,3);
		Npc_RemoveInvItems(hero,itar_w2_tknight_grd4,1);
		CreateInvItems(hero,itar_w2_tknight_grd5,1);
		AI_Wait(hero,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_w2_tknight_grd5);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_W2_TKNIGHT_GRD6(C_INFO)
{
	nr = 4;
	npc = pc_hero;
	condition = pc_itar_w2_tknight_grd6_condition;
	information = pc_itar_w2_tknight_grd6_info;
	permanent = TRUE;
	description = "6x wzmocniony królewski pancerz (4x sztaba stali, 2x skóra)";
};


func int pc_itar_w2_tknight_grd6_condition()
{
	if((Monolog_Smith_Armor) && (KNOWS_W2KNIGHT_GRD5TO7 == TRUE) && (GRDARMOR == TRUE) && (Npc_HasItems(hero,itar_w2_tknight_grd5) == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_w2_tknight_grd6_info()
{
	if((Npc_HasItems(self,itmi_leather) >= 2) && (Npc_HasItems(self,itmi_steelbar) >= 4))
	{
		Npc_RemoveInvItems(hero,itmi_leather,2);
		Npc_RemoveInvItems(hero,itmi_steelbar,4);
		Npc_RemoveInvItems(hero,itar_w2_tknight_grd5,1);
		CreateInvItems(hero,itar_w2_tknight_grd6,1);
		AI_Wait(hero,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_w2_tknight_grd6);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_W2_TKNIGHT_GRD7(C_INFO)
{
	nr = 4;
	npc = pc_hero;
	condition = pc_itar_w2_tknight_grd7_condition;
	information = pc_itar_w2_tknight_grd7_info;
	permanent = TRUE;
	description = "7x wzmocniony królewski pancerz (5x sztaba stali, 2x skóra)";
};


func int pc_itar_w2_tknight_grd7_condition()
{
	if((Monolog_Smith_Armor) && (KNOWS_W2KNIGHT_GRD5TO7 == TRUE) && (GRDARMOR == TRUE) && (Npc_HasItems(hero,itar_w2_tknight_grd6) == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_w2_tknight_grd7_info()
{
	if((Npc_HasItems(self,itmi_leather) >= 2) && (Npc_HasItems(self,itmi_steelbar) >= 5))
	{
		Npc_RemoveInvItems(hero,itmi_leather,2);
		Npc_RemoveInvItems(hero,itmi_steelbar,5);
		Npc_RemoveInvItems(hero,itar_w2_tknight_grd6,1);
		CreateInvItems(hero,itar_w2_tknight_grd7,1);
		AI_Wait(hero,6);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_w2_tknight_grd7);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_TROLL_ADDON(C_INFO)
{
	nr = 4;
	npc = pc_hero;
	condition = pc_itar_troll_addon_condition;
	information = pc_itar_troll_addon_info;
	permanent = TRUE;
	description = "Pancerz ze skóry trolla (4x skóra trolla, 3x tkaniny, 2x skóra, 1x sztaba stali)";
};


func int pc_itar_troll_addon_condition()
{
	if((Monolog_Smith_Armor) && (KNOWS_TROLLARCRFT == TRUE) && (CRTARMOR == TRUE) && (Npc_HasItems(hero,itar_troll_addon) == FALSE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_troll_addon_info()
{
	if((Npc_HasItems(hero,itat_trollfur) >= 4) && (Npc_HasItems(self,itmi_textile) >= 3) && (Npc_HasItems(self,itmi_leather) >= 2) && (Npc_HasItems(self,itmi_steelbar) >= 1))
	{
		Npc_RemoveInvItems(hero,itat_trollfur,4);
		Npc_RemoveInvItems(hero,itmi_textile,3);
		Npc_RemoveInvItems(hero,itmi_leather,2);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		CreateInvItems(hero,itar_troll_addon,1);
		AI_EquipArmor(hero,itar_troll_addon);
		Print(PRINT_CRTARSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_SLD_G3_ADDON(C_INFO)
{
	nr = 4;
	npc = pc_hero;
	condition = pc_itar_sld_g3_addon_condition;
	information = pc_itar_sld_g3_addon_info;
	permanent = TRUE;
	description = "Myrtañski pancerz (10x sztaba stali, 16x skóra, 12x tkaniny)";
};


func int pc_itar_sld_g3_addon_condition()
{
	if((Monolog_Smith_Armor) && (KNOWS_SLDG3 == TRUE) && (CRTARMOR == TRUE) && (Npc_HasItems(hero,itar_sld_g3) == FALSE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_sld_g3_addon_info()
{
	if((Npc_HasItems(self,itmi_textile) >= 12) && (Npc_HasItems(self,itmi_leather) >= 16) && (Npc_HasItems(self,itmi_steelbar) >= 10))
	{
		Npc_RemoveInvItems(hero,itmi_textile,12);
		Npc_RemoveInvItems(hero,itmi_leather,16);
		Npc_RemoveInvItems(hero,itmi_steelbar,10);
		CreateInvItems(hero,itar_sld_g3,1);
		AI_EquipArmor(hero,itar_sld_g3);
		Print(PRINT_CRTARSUCCESS);
		b_say(self,self,"DIA_Buster_Hello_Impressive_15_00");
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_BM_L(C_INFO)
{
	nr = 4;
	npc = pc_hero;
	condition = pc_itar_bm_l_condition;
	information = pc_itar_bm_l_info;
	permanent = TRUE;
	description = "Pancerz Lorda (12x skóra, 10x tkaniny, 8x sztaba stali, 1x czarna per³a, 1x skóra czarnego trolla)";
};


func int pc_itar_bm_l_condition()
{
	if((Monolog_Smith_Armor) && (KNOWS_BATTLEMAGE == TRUE) && (CRTARMOR == TRUE) && (Npc_HasItems(hero,itar_bm_l) == FALSE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_bm_l_info()
{
	if((Npc_HasItems(self,itat_trollblackfur) >= 1) && (Npc_HasItems(self,itmi_darkpearl) >= 1) && (Npc_HasItems(self,itmi_leather) >= 12) && (Npc_HasItems(self,itmi_textile) >= 10) && (Npc_HasItems(self,itmi_steelbar) >= 8))
	{
		Npc_RemoveInvItems(hero,itat_trollblackfur,1);
		Npc_RemoveInvItems(hero,itmi_darkpearl,1);
		Npc_RemoveInvItems(hero,itmi_textile,10);
		Npc_RemoveInvItems(hero,itmi_leather,12);
		Npc_RemoveInvItems(hero,itmi_steelbar,8);
		CreateInvItems(hero,itar_bm_l,1);
		AI_EquipArmor(hero,itar_bm_l);
		Print(PRINT_CRTARSUCCESS);
		b_say(self,self,"DIA_Buster_Hello_Impressive_15_00");
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_BM_M(C_INFO)
{
	nr = 4;
	npc = pc_hero;
	condition = pc_itar_bm_m_condition;
	information = pc_itar_bm_m_info;
	permanent = TRUE;
	description = "Wzmocniony Pancerz Lorda (2x sztaba stali)";
};


func int pc_itar_bm_m_condition()
{
	if((Monolog_Smith_Armor) && (Npc_HasItems(hero,itar_bm_l) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_bm_m_info()
{
	if((Npc_HasItems(hero,itar_bm_l) >= 1) && (Npc_HasItems(self,itmi_steelbar) >= 2))
	{
		Npc_RemoveInvItems(hero,itar_bm_l,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		CreateInvItems(hero,itar_bm_m,1);
		AI_EquipArmor(hero,itar_bm_m);
		Print(PRINT_CRTARSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_GERALT_ADDON_GRD1(C_INFO)
{
	nr = 4;
	npc = pc_hero;
	condition = pc_itar_geralt_addon_grd1_condition;
	information = pc_itar_geralt_addon_grd1_info;
	permanent = TRUE;
	description = "Wzmocniony pancerz ³owcy (10x skóra, 3x koœæ szkieletu)";
};


func int pc_itar_geralt_addon_grd1_condition()
{
	if((Monolog_Smith_Armor) && (Npc_HasItems(hero,itar_geralt_addon) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_geralt_addon_grd1_info()
{
	if((Npc_HasItems(hero,itar_geralt_addon) >= 1) && (Npc_HasItems(self,itmi_leather) >= 10) && (Npc_HasItems(self,itat_skeletonbone) >= 3))
	{
		Npc_RemoveInvItems(hero,itar_geralt_addon,1);
		Npc_RemoveInvItems(hero,itmi_leather,10);
		Npc_RemoveInvItems(hero,itat_skeletonbone,3);
		CreateInvItems(hero,itar_geralt_addon_grd1,1);
		AI_EquipArmor(hero,itar_geralt_addon_grd1);
		Print(PRINT_GRDSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_GERALT_ADDON_GRD2(C_INFO)
{
	nr = 4;
	npc = pc_hero;
	condition = pc_itar_geralt_addon_grd2_condition;
	information = pc_itar_geralt_addon_grd2_info;
	permanent = TRUE;
	description = "Wzmocniony pancerz ³owcy (2x sztaba stali)";
};


func int pc_itar_geralt_addon_grd2_condition()
{
	if((Monolog_Smith_Armor) && (Npc_HasItems(hero,itar_geralt_addon_grd1) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_geralt_addon_grd2_info()
{
	if((Npc_HasItems(hero,itar_geralt_addon_grd1) >= 1) && (Npc_HasItems(self,itmi_steelbar) >= 2))
	{
		Npc_RemoveInvItems(hero,itar_geralt_addon_grd1,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		CreateInvItems(hero,itar_geralt_addon_grd2,1);
		AI_EquipArmor(hero,itar_geralt_addon_grd2);
		Print(PRINT_GRDSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_GERALT_ADDON_GRD3(C_INFO)
{
	nr = 4;
	npc = pc_hero;
	condition = pc_itar_geralt_addon_grd3_condition;
	information = pc_itar_geralt_addon_grd3_info;
	permanent = TRUE;
	description = "Wzmocniony pancerz ³owcy (2x sztaba stali)";
};


func int pc_itar_geralt_addon_grd3_condition()
{
	if((Monolog_Smith_Armor) && (Npc_HasItems(hero,itar_geralt_addon_grd2) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_geralt_addon_grd3_info()
{
	if((Npc_HasItems(hero,itar_geralt_addon_grd2) >= 1) && (Npc_HasItems(self,itmi_steelbar) >= 2))
	{
		Npc_RemoveInvItems(hero,itar_geralt_addon_grd2,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		CreateInvItems(hero,itar_geralt_addon_grd3,1);
		AI_EquipArmor(hero,itar_geralt_addon_grd3);
		Print(PRINT_GRDSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_WMA_ASSN(C_INFO)
{
	nr = 4;
	npc = pc_hero;
	condition = pc_itar_wma_assn_condition;
	information = pc_itar_wma_assn_info;
	permanent = TRUE;
	description = "Ulepsz mistrzowsk¹ szatê -> zabójcy (5x skóra gada, 1x sztaba stali)";
};


func int pc_itar_wma_assn_condition()
{
	if((Monolog_Smith_Armor) && (Npc_HasItems(hero,itar_wma_base) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_wma_assn_info()
{
	if((Npc_HasItems(hero,itar_wma_base) >= 1) && (Npc_HasItems(self,itat_lurkerskin) >= 5) && (Npc_HasItems(self,itmi_steelbar) >= 1))
	{
		Npc_RemoveInvItems(hero,itar_wma_base,1);
		Npc_RemoveInvItems(hero,itat_lurkerskin,5);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		CreateInvItems(hero,itar_wma_assn,1);
		AI_EquipArmor(hero,itar_wma_assn);
		Print(PRINT_GRDSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_WMA_ALHM(C_INFO)
{
	nr = 4;
	npc = pc_hero;
	condition = pc_itar_wma_alhm_condition;
	information = pc_itar_wma_alhm_info;
	permanent = TRUE;
	description = "Ulepsz mistrzowsk¹ szatê -> alchemika (5x ska³a krystaliczna, 3x woda œwiêcona)";
};


func int pc_itar_wma_alhm_condition()
{
	if((Monolog_Smith_Armor) && (Npc_HasItems(hero,itar_wma_base) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_wma_alhm_info()
{
	if((Npc_HasItems(hero,itar_wma_base) >= 1) && (Npc_HasItems(self,itmi_rockcrystal) >= 5) && (Npc_HasItems(self,itmi_holywater) >= 3))
	{
		Npc_RemoveInvItems(hero,itar_wma_base,1);
		Npc_RemoveInvItems(hero,itmi_rockcrystal,5);
		Npc_RemoveInvItems(hero,itmi_holywater,3);
		CreateInvItems(hero,itar_wma_alhm,1);
		AI_EquipArmor(hero,itar_wma_alhm);
		Print(PRINT_GRDSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_LEATHER_L_GRD1(C_INFO)
{
	nr = 3;
	npc = pc_hero;
	condition = pc_itar_leather_l_grd1_condition;
	information = pc_itar_leather_l_grd1_info;
	permanent = TRUE;
	description = "Ulepsz skórzany pancerz (2x skóra trolla)";
};


func int pc_itar_leather_l_grd1_condition()
{
	if((Monolog_Smith_Armor) && (Npc_HasItems(hero,itar_leather_l) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_leather_l_grd1_info()
{
	if((Npc_HasItems(hero,itar_leather_l) >= 1) && (Npc_HasItems(self,itat_trollfur) >= 2))
	{
		Npc_RemoveInvItems(hero,itar_leather_l,1);
		Npc_RemoveInvItems(hero,itat_trollfur,2);
		CreateInvItems(hero,itar_leather_l_grd1,1);
		AI_EquipArmor(hero,itar_leather_l_grd1);
		Print(PRINT_GRDSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_LEATHER_L_GRD2(C_INFO)
{
	nr = 3;
	npc = pc_hero;
	condition = pc_itar_leather_l_grd2_condition;
	information = pc_itar_leather_l_grd2_info;
	permanent = TRUE;
	description = "Ulepsz skórzany pancerz (7x skóra)";
};


func int pc_itar_leather_l_grd2_condition()
{
	if((Monolog_Smith_Armor) && (Npc_HasItems(hero,itar_leather_l_grd1) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_leather_l_grd2_info()
{
	if((Npc_HasItems(hero,itar_leather_l_grd1) >= 1) && (Npc_HasItems(self,itmi_leather) >= 7))
	{
		Npc_RemoveInvItems(hero,itar_leather_l_grd1,1);
		Npc_RemoveInvItems(hero,itmi_leather,7);
		CreateInvItems(hero,itar_leather_l_grd2,1);
		AI_EquipArmor(hero,itar_leather_l_grd2);
		Print(PRINT_GRDSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_LEATHER_L_GRD3(C_INFO)
{
	nr = 3;
	npc = pc_hero;
	condition = pc_itar_leather_l_grd3_condition;
	information = pc_itar_leather_l_grd3_info;
	permanent = TRUE;
	description = "Ulepsz skórzany pancerz (4x skóra)";
};


func int pc_itar_leather_l_grd3_condition()
{
	if((Monolog_Smith_Armor) && (Npc_HasItems(hero,itar_leather_l_grd2) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_leather_l_grd3_info()
{
	if((Npc_HasItems(hero,itar_leather_l_grd2) >= 1) && (Npc_HasItems(self,itmi_leather) >= 4))
	{
		Npc_RemoveInvItems(hero,itar_leather_l_grd2,1);
		Npc_RemoveInvItems(hero,itmi_leather,4);
		CreateInvItems(hero,itar_leather_l_grd3,1);
		AI_EquipArmor(hero,itar_leather_l_grd3);
		Print(PRINT_GRDSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_LEATHER_L_GRD4(C_INFO)
{
	nr = 3;
	npc = pc_hero;
	condition = pc_itar_leather_l_grd4_condition;
	information = pc_itar_leather_l_grd4_info;
	permanent = TRUE;
	description = "Ulepsz skórzany pancerz (5x skóra, 4x kie³ trolla)";
};


func int pc_itar_leather_l_grd4_condition()
{
	if((Monolog_Smith_Armor) && (Npc_HasItems(hero,itar_leather_l_grd3) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_leather_l_grd4_info()
{
	if((Npc_HasItems(hero,itar_leather_l_grd3) >= 1) && (Npc_HasItems(self,itmi_leather) >= 5) && (Npc_HasItems(self,itat_trolltooth) >= 4) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		Npc_RemoveInvItems(hero,itar_leather_l_grd3,1);
		Npc_RemoveInvItems(hero,itmi_leather,5);
		Npc_RemoveInvItems(hero,itat_trolltooth,4);
		CreateInvItems(hero,itar_leather_l_grd4,1);
		AI_EquipArmor(hero,itar_leather_l_grd4);
		Print(PRINT_GRDSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};


instance PC_ITAR_LEATHER_L_GRD5(C_INFO)
{
	nr = 3;
	npc = pc_hero;
	condition = pc_itar_leather_l_grd5_condition;
	information = pc_itar_leather_l_grd5_info;
	permanent = TRUE;
	description = "Ulepsz skórzany pancerz (5x skóra, 4x kie³ trolla)";
};


func int pc_itar_leather_l_grd5_condition()
{
	if((Monolog_Smith_Armor) && (Npc_HasItems(hero,itar_leather_l_grd4) >= 1) && (GRDARMOR == TRUE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void pc_itar_leather_l_grd5_info()
{
	if((Npc_HasItems(hero,itar_leather_l_grd4) >= 1) && (Npc_HasItems(self,itmi_leather) >= 5) && (Npc_HasItems(self,itat_trolltooth) >= 4))
	{
		Npc_RemoveInvItems(hero,itar_leather_l_grd4,1);
		Npc_RemoveInvItems(hero,itmi_leather,5);
		Npc_RemoveInvItems(hero,itat_trolltooth,4);
		CreateInvItems(hero,itar_leather_l_grd5,1);
		AI_EquipArmor(hero,itar_leather_l_grd5);
		Print(PRINT_GRDSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};

func void smitharmor_s1()
{
	var C_NPC her;
	her = Hlp_GetNpc(pc_hero);
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		Monolog_Smith_Armor = TRUE;
		AI_ProcessInfos(her);
	};
};


instance PC_WEAPONCOMPLETE(C_INFO)
{
	npc = pc_hero;
	nr = 13;
	condition = pc_weaponcomplete_condition;
	information = pc_weaponcomplete_info;
	permanent = TRUE;
	description = "Wykoñcz broñ";
};


func int pc_weaponcomplete_condition()
{
	if((Monolog_Smith_Armor) && (GRDARMOR == FALSE) && (CMPLTWPN == FALSE) && (CRTARMOR == FALSE))
	{
		return TRUE;
	};
};

func void pc_weaponcomplete_info()
{
	CMPLTWPN = TRUE;
};


instance PC_WEAPONCOMPLETEBACK(C_INFO)
{
	npc = pc_hero;
	nr = 99;
	condition = pc_weaponcompleteback_condition;
	information = pc_weaponcompleteback_info;
	permanent = TRUE;
	description = DIALOG_BACK;
};


func int pc_weaponcompleteback_condition()
{
	if((Monolog_Smith_Armor) && (GRDARMOR == FALSE) && (CRTARMOR == FALSE) && (CMPLTWPN == TRUE))
	{
		return TRUE;
	};
};

func void pc_weaponcompleteback_info()
{
	CMPLTWPN = FALSE;
};


instance PC_ITMW_FIRSTBLADE_NS(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_firstblade_ns_condition;
	information = pc_itmw_firstblade_ns_info;
	permanent = TRUE;
	description = "Wykoñcz <<Prosty miecz>> - 1x sztaba stali, 1x tkaniny";
};


func int pc_itmw_firstblade_ns_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_firstblade_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_firstblade_ns_info()
{
	if((Npc_HasItems(hero,itmi_firstblade_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_textile) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_firstblade_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_textile,1);
		CreateInvItems(hero,itmw_firstblade_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_1HFINESWORD_NS(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_1hfinesword_ns_condition;
	information = pc_itmw_1hfinesword_ns_info;
	permanent = TRUE;
	description = "Wykoñcz <<Dobry miecz>> - 1x sztaba stali, 1x tkaniny";
};


func int pc_itmw_1hfinesword_ns_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_1hfinesword_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_1hfinesword_ns_info()
{
	if((Npc_HasItems(hero,itmi_1hfinesword_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_textile) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_1hfinesword_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_textile,1);
		CreateInvItems(hero,itmw_1hfinesword_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_SOT_NS(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_sot_ns_condition;
	information = pc_itmw_sot_ns_info;
	permanent = TRUE;
	description = "Wykoñcz <<Miecz prawdy>> - 1x sztaba stali, 1x skóra";
};


func int pc_itmw_sot_ns_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_sot_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_sot_ns_info()
{
	if((Npc_HasItems(hero,itmi_sot_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_leather) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_sot_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_leather,1);
		CreateInvItems(hero,itmw_sot_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_FINEBASTARD_NS(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_finebastard_ns_condition;
	information = pc_itmw_finebastard_ns_info;
	permanent = TRUE;
	description = "Wykoñcz <<Dobry miecz pó³torarêczny>> - 1x sztaba stali, 1x skóra";
};


func int pc_itmw_finebastard_ns_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_finebastard_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_finebastard_ns_info()
{
	if((Npc_HasItems(hero,itmi_finebastard_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_leather) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_finebastard_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_leather,1);
		CreateInvItems(hero,itmw_finebastard_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_ANDURIL_NS(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_anduril_ns_condition;
	information = pc_itmw_anduril_ns_info;
	permanent = TRUE;
	description = "Wykoñcz <<Wspania³y miecz pó³torarêczny>> - 1x sztaba stali, 1x skóra";
};


func int pc_itmw_anduril_ns_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_anduril_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_anduril_ns_info()
{
	if((Npc_HasItems(hero,itmi_anduril_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_leather) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_anduril_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_leather,1);
		CreateInvItems(hero,itmw_anduril_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_FIRSTBLADE2H_NS(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_firstblade2h_ns_condition;
	information = pc_itmw_firstblade2h_ns_info;
	permanent = TRUE;
	description = "Wykoñcz <<Prosty miecz dwurêczny>> - 1x sztaba stali, 1x tkaniny";
};


func int pc_itmw_firstblade2h_ns_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_firstblade2h_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_firstblade2h_ns_info()
{
	if((Npc_HasItems(hero,itmi_firstblade2h_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_textile) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_firstblade2h_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_textile,1);
		CreateInvItems(hero,itmw_firstblade2h_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_2HFINESWORD_NS(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_2hfinesword_ns_condition;
	information = pc_itmw_2hfinesword_ns_info;
	permanent = TRUE;
	description = "Wykoñcz <<Dobry miecz dwurêczny>> - 1x sztaba stali, 1x tkaniny";
};


func int pc_itmw_2hfinesword_ns_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_2hfinesword_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_2hfinesword_ns_info()
{
	if((Npc_HasItems(hero,itmi_2hfinesword_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_textile) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_2hfinesword_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_textile,1);
		CreateInvItems(hero,itmw_2hfinesword_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_CLAYMORE_NS(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_claymore_ns_condition;
	information = pc_itmw_claymore_ns_info;
	permanent = TRUE;
	description = "Wykoñcz <<claymore>> - 1x sztaba stali, 1x kawa³ek drewna";
};


func int pc_itmw_claymore_ns_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_claymore_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_claymore_ns_info()
{
	if((Npc_HasItems(hero,itmi_claymore_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_woodbar) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_claymore_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_woodbar,1);
		CreateInvItems(hero,itmw_claymore_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_DEMONSLAYER_NS(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_demonslayer_ns_condition;
	information = pc_itmw_demonslayer_ns_info;
	permanent = TRUE;
	description = "Wykoñcz <<'Pogromca Demonów'>> - 2x sztaba stali, 1x tkaniny";
};


func int pc_itmw_demonslayer_ns_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_demonslayer_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_demonslayer_ns_info()
{
	if((Npc_HasItems(hero,itmi_demonslayer_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 2) && (Npc_HasItems(hero,itmi_textile) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_demonslayer_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmi_textile,1);
		CreateInvItems(hero,itmw_demonslayer_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_FLAMEBERGE_NS(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_flameberge_ns_condition;
	information = pc_itmw_flameberge_ns_info;
	permanent = TRUE;
	description = "Wykoñcz <<Flamberg>> - 2x sztaba stali, 2x skóra";
};


func int pc_itmw_flameberge_ns_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_flameberge_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_flameberge_ns_info()
{
	if((Npc_HasItems(hero,itmi_flameberge_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 2) && (Npc_HasItems(hero,itmi_leather) >= 2))
	{
		Npc_RemoveInvItems(hero,itmi_flameberge_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmi_leather,2);
		CreateInvItems(hero,itmw_flameberge_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_1H_SPECIAL_01_NS(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_1h_special_01_ns_condition;
	information = pc_itmw_1h_special_01_ns_info;
	permanent = TRUE;
	description = "Wykoñcz <<D³ugi miecz magiczny>> - 1x sztaba stali, 1x skóra";
};


func int pc_itmw_1h_special_01_ns_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_1h_special_01_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_1h_special_01_ns_info()
{
	if((Npc_HasItems(hero,itmi_1h_special_01_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_leather) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_1h_special_01_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_leather,1);
		CreateInvItems(hero,itmw_1h_special_01_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_2H_SPECIAL_01_NS(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_2h_special_01_ns_condition;
	information = pc_itmw_2h_special_01_ns_info;
	permanent = TRUE;
	description = "Wykoñcz <<Magiczny miecz dwurêczny>> - 1x sztaba stali, 1x skóra, 1x tkaniny";
};


func int pc_itmw_2h_special_01_ns_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_2h_special_01_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_2h_special_01_ns_info()
{
	if((Npc_HasItems(hero,itmi_2h_special_01_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_leather) >= 1) && (Npc_HasItems(hero,itmi_textile) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_2h_special_01_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_leather,1);
		Npc_RemoveInvItems(hero,itmi_textile,1);
		CreateInvItems(hero,itmw_2h_special_01_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_1H_SPECIAL_02_NS(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_1h_special_02_ns_condition;
	information = pc_itmw_1h_special_02_ns_info;
	permanent = TRUE;
	description = "Wykoñcz <<Magiczny miecz pó³torarêczny>> - 1x sztaba stali, 1x skóra";
};


func int pc_itmw_1h_special_02_ns_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_1h_special_02_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_1h_special_02_ns_info()
{
	if((Npc_HasItems(hero,itmi_1h_special_02_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_leather) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_1h_special_02_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_leather,1);
		CreateInvItems(hero,itmw_1h_special_02_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_2H_SPECIAL_02_NS(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_2h_special_02_ns_condition;
	information = pc_itmw_2h_special_02_ns_info;
	permanent = TRUE;
	description = "Wykoñcz <<Ciê¿ki magiczny miecz dwurêczny>> - 1x sztaba stali, 1x skóra";
};


func int pc_itmw_2h_special_02_ns_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_2h_special_02_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_2h_special_02_ns_info()
{
	if((Npc_HasItems(hero,itmi_2h_special_02_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_leather) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_2h_special_02_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_leather,1);
		CreateInvItems(hero,itmw_2h_special_02_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_1H_SPECIAL_03_NS(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_1h_special_03_ns_condition;
	information = pc_itmw_1h_special_03_ns_info;
	permanent = TRUE;
	description = "Wykoñcz <<Magiczne ostrze bojowe>> - 1x sztaba stali, 1x skóra, 1x czarna per³a";
};


func int pc_itmw_1h_special_03_ns_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_1h_special_03_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_1h_special_03_ns_info()
{
	if((Npc_HasItems(hero,itmi_1h_special_03_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_leather) >= 1) && (Npc_HasItems(hero,itmi_darkpearl) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_1h_special_03_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_leather,1);
		Npc_RemoveInvItems(hero,itmi_darkpearl,1);
		CreateInvItems(hero,itmw_1h_special_03_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_2H_SPECIAL_03_NS(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_2h_special_03_ns_condition;
	information = pc_itmw_2h_special_03_ns_info;
	permanent = TRUE;
	description = "Wykoñcz <<Ciê¿kie magiczne ostrze bojowe>> - 1x sztaba stali, 2x skóra";
};


func int pc_itmw_2h_special_03_ns_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_2h_special_03_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_2h_special_03_ns_info()
{
	if((Npc_HasItems(hero,itmi_2h_special_03_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_leather) >= 2))
	{
		Npc_RemoveInvItems(hero,itmi_2h_special_03_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_leather,2);
		CreateInvItems(hero,itmw_2h_special_03_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_1H_SPECIAL_04_NS(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_1h_special_04_ns_condition;
	information = pc_itmw_1h_special_04_ns_info;
	permanent = TRUE;
	description = "Wykoñcz <<Magiczne ostrze na smoki>> - 1x sztaba stali, 1x skóra, 1x czarna per³a";
};


func int pc_itmw_1h_special_04_ns_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_1h_special_04_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_1h_special_04_ns_info()
{
	if((Npc_HasItems(hero,itmi_1h_special_04_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 1) && (Npc_HasItems(hero,itmi_leather) >= 1) && (Npc_HasItems(hero,itmi_darkpearl) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_1h_special_04_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,1);
		Npc_RemoveInvItems(hero,itmi_leather,1);
		Npc_RemoveInvItems(hero,itmi_darkpearl,1);
		CreateInvItems(hero,itmw_1h_special_04_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_2H_SPECIAL_04_NS(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_2h_special_04_ns_condition;
	information = pc_itmw_2h_special_04_ns_info;
	permanent = TRUE;
	description = "Wykoñcz <<Du¿e magiczne ostrze na smoki>> - 2x sztaba stali, 2x skóra, 1x diament, 1x ametyst";
};


func int pc_itmw_2h_special_04_ns_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_2h_special_04_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_2h_special_04_ns_info()
{
	if((Npc_HasItems(hero,itmi_2h_special_04_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 2) && (Npc_HasItems(hero,itmi_leather) >= 2) && (Npc_HasItems(hero,itmi_diamond) >= 1) && (Npc_HasItems(hero,itmi_amethyst) >= 1))
	{
		Npc_RemoveInvItems(hero,itmi_2h_special_04_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmi_leather,2);
		Npc_RemoveInvItems(hero,itmi_diamond,1);
		Npc_RemoveInvItems(hero,itmi_amethyst,1);
		CreateInvItems(hero,itmw_2h_special_04_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_1H_DEATHBRINGER_NS(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_1h_deathbringer_ns_condition;
	information = pc_itmw_1h_deathbringer_ns_info;
	permanent = TRUE;
	description = "Wykoñcz <<Druzgoc¹ce ostrze magiczne>> - 2x sztaba stali, 2x skóra, 3x rubin";
};


func int pc_itmw_1h_deathbringer_ns_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_1h_deathbringer_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_1h_deathbringer_ns_info()
{
	if((Npc_HasItems(hero,itmi_1h_deathbringer_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 2) && (Npc_HasItems(hero,itmi_leather) >= 2) && (Npc_HasItems(hero,itmi_ruby) >= 3))
	{
		Npc_RemoveInvItems(hero,itmi_1h_deathbringer_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,2);
		Npc_RemoveInvItems(hero,itmi_leather,2);
		Npc_RemoveInvItems(hero,itmi_ruby,3);
		CreateInvItems(hero,itmw_1h_deathbringer_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_ITMW_2H_DEATHBRINGER_NS(C_INFO)
{
	npc = pc_hero;
	condition = pc_itmw_2h_deathbringer_ns_condition;
	information = pc_itmw_2h_deathbringer_ns_info;
	permanent = TRUE;
	description = "Wykoñcz <<Du¿e druzgoc¹ce ostrze magiczne>> - 3x sztaba stali, 2x skóra, 3x rubin";
};


func int pc_itmw_2h_deathbringer_ns_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) && (Npc_HasItems(hero,itmi_2h_deathbringer_blade_nh) >= 1))
	{
		return TRUE;
	};
};

func void pc_itmw_2h_deathbringer_ns_info()
{
	if((Npc_HasItems(hero,itmi_2h_deathbringer_blade_nh) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >= 3) && (Npc_HasItems(hero,itmi_leather) >= 2) && (Npc_HasItems(hero,itmi_ruby) >= 3))
	{
		Npc_RemoveInvItems(hero,itmi_2h_deathbringer_blade_nh,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,3);
		Npc_RemoveInvItems(hero,itmi_leather,2);
		Npc_RemoveInvItems(hero,itmi_ruby,3);
		CreateInvItems(hero,itmw_2h_deathbringer_ns,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen(PRINT_WPNNSSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		NOT_COMPLETE_SWORD = FALSE;
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};


instance PC_KDFHOOD(C_INFO)
{
	nr = 111;
	npc = pc_hero;
	condition = pc_kdfhood_condition;
	information = pc_kdfhood_info;
	permanent = TRUE;
	description = "<<<zdejmij / umieœæ kaptur>>>";
};


func int pc_kdfhood_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == FALSE) && (GRDARMOR == FALSE) && (CRTARMOR == FALSE) && ((Npc_HasItems(self,itar_kdf_l) >= 1) || (Npc_HasItems(self,itar_kdf_l_wh) >= 1)))
	{
		return TRUE;
	};
};

func void pc_kdfhood_info()
{
	if(Npc_HasItems(hero,itar_kdf_l) >= 1)
	{
		Npc_RemoveInvItems(hero,itar_kdf_l,1);
		CreateInvItems(hero,itar_kdf_l_wh,1);
		AI_EquipArmor(hero,itar_kdf_l_wh);
		b_endproductiondialog();
	}
	else if(Npc_HasItems(hero,itar_kdf_l_wh) >= 1)
	{
		Npc_RemoveInvItems(hero,itar_kdf_l_wh,1);
		CreateInvItems(hero,itar_kdf_l,1);
		AI_EquipArmor(hero,itar_kdf_l);
		b_endproductiondialog();
	};
};

instance PC_ITAR_TROLL_UP(C_INFO)
{
	nr = 4;
	npc = pc_hero;
	condition = PC_ITAR_TROLL_UP_condition;
	information = PC_ITAR_TROLL_UP_info;
	permanent = TRUE;
	description = "Wzmocnij pancerz ze skóry trolla(3x Skóra, 5x Sztaba stali)";
};


func int PC_ITAR_TROLL_UP_condition()
{
	if((Monolog_Smith_Armor)&&(GRDARMOR == TRUE) && (Npc_HasItems(hero,itar_troll_addon) == TRUE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
	{
		return TRUE;
	};
};

func void PC_ITAR_TROLL_UP_info()
{
	if((Npc_HasItems(self,itmi_leather) >= 3) && (Npc_HasItems(self,itmi_steelbar) >= 5))
	{
		Npc_RemoveInvItems(hero,itmi_leather,3);
		Npc_RemoveInvItems(hero,itmi_steelbar,5);
		Npc_RemoveInvItems(hero,itar_troll_addon,1);
		CreateInvItems(hero,itar_troll_Upgrade,1);
		AI_Wait(hero,12);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,itar_troll_Upgrade);
	}
	else
	{
		Print("Brakuje ci sk³adników!");
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_BTROLL_UP(C_INFO)
{
	nr = 4;
	npc = pc_hero;
	condition = PC_ITAR_BTROLL_UP_condition;
	information = PC_ITAR_BTROLL_UP_info;
	permanent = TRUE;
	description = "Wzmocnij ochronê czarnego trolla (15x Skóra, 10x Sztaba stali)";
};


func int PC_ITAR_BTROLL_UP_condition()
{
	if((Monolog_Smith_Armor)&&(GRDARMOR == TRUE) && (Npc_HasItems(hero,ITAR_BlackTROLL) == TRUE) && (PLAYER_TALENT_ARMOR[2] == TRUE))
	{
		return TRUE;
	};
};

func void PC_ITAR_BTROLL_UP_info()
{
	if((Npc_HasItems(self,itmi_leather) >= 15) && (Npc_HasItems(self,itmi_steelbar) >= 10))
	{
		Npc_RemoveInvItems(hero,itmi_leather,15);
		Npc_RemoveInvItems(hero,itmi_steelbar,10);
		Npc_RemoveInvItems(hero,ITAR_BlackTROLL,1);
		CreateInvItems(hero,ITAR_BlackTROLL_Upgrade,1);
		AI_Wait(hero,30);
		Print(PRINT_ARMORPROCESS);
		AI_PrintScreen(PRINT_CRTARSUCCESS,-1,52,FONT_SCREENBRIGHTLARGE,2);
		AI_EquipArmor(hero,ITAR_BlackTROLL_Upgrade);
	}
	else
	{
		Print("Brakuje ci sk³adników!");
	};
	b_endproductiondialog();
	GRDARMOR = FALSE;
};


instance PC_ITAR_BTROLL_ADDON(C_INFO)
{
	nr = 4;
	npc = pc_hero;
	condition = PC_ITAR_BTROLL_ADDON_condition;
	information = PC_ITAR_BTROLL_ADDON_info;
	permanent = TRUE;
	description = "Ochrona Czarnego Trolla (2x skóra czarnego trolla, 5x tkaniny, 10x skóra, 3x sztaba stali, 5x kie³ trolla)";
};


func int PC_ITAR_BTROLL_ADDON_condition()
{
	if((Monolog_Smith_Armor) && (KNOWS_TROLLARCRFT == TRUE) && (CRTARMOR == TRUE) && (Npc_HasItems(hero,ITAR_BlackTROLL) == FALSE) && (PLAYER_TALENT_ARMOR[0] == TRUE))
	{
		return TRUE;
	};
};

func void PC_ITAR_BTROLL_ADDON_info()
{
	if((Npc_HasItems(hero,ITAT_TROLLBLACKFUR) >= 2) && (Npc_HasItems(self,itmi_textile) >= 5) && (Npc_HasItems(self,itmi_leather) >= 10) && (Npc_HasItems(self,itmi_steelbar) >= 3)&& (Npc_HasItems(self,ITAT_TROLLTOOTH) >= 5))
	{
		Npc_RemoveInvItems(hero,ITAT_TROLLBLACKFUR,2);
		Npc_RemoveInvItems(hero,itmi_textile,5);
		Npc_RemoveInvItems(hero,itmi_leather,10);
		Npc_RemoveInvItems(hero,ITAT_TROLLTOOTH,5);
		Npc_RemoveInvItems(hero,itmi_steelbar,3);
		CreateInvItems(hero,ITAR_BlackTROLL,1);
		AI_EquipArmor(hero,ITAR_BlackTROLL);
		Print(PRINT_CRTARSUCCESS);
	}
	else
	{
		Print(PRINT_GRDITEMSMISSING);
	};
	b_endproductiondialog();
};

instance PC_ITSH_GLADIATOR(C_INFO)
{
	npc = pc_hero;
	condition = PC_ITSH_GLADIATOR_condition;
	information = PC_ITSH_GLADIATOR_info;
	permanent = TRUE;
	description = "Ulepsz drewnian¹ tarczê(4x sztaba stali, 6x tkanina)";
};


func int PC_ITSH_GLADIATOR_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) &&(PLAYER_TALENT_ARMOR[1] == TRUE)&& (Npc_HasItems(hero,ItSH_Wooden) >= 1))
	{
		return TRUE;
	};
};

func void PC_ITSH_GLADIATOR_info()
{
	if((Npc_HasItems(hero,ItSH_Wooden) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >=4) && (Npc_HasItems(hero,itmi_textile) >= 6))
	{
		Npc_RemoveInvItems(hero,ItSH_Wooden,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,4);
		Npc_RemoveInvItems(hero,itmi_textile,6);
		CreateInvItems(hero,ItSH_Gladiator,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen("Uda³o ci siê ulepszyæ tarczê!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};
instance PC_ITSH_WoodenHeavy(C_INFO)
{
	npc = pc_hero;
	condition = PC_ITSH_WoodenHeavy_condition;
	information =PC_ITSH_WoodenHeavy_info;
	permanent = TRUE;
	description = "Ulepsz drewnian¹ tarczê(10x sztaba stali, 12x tkanina 3x skóra)";
};


func int PC_ITSH_WoodenHeavy_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) && (PLAYER_TALENT_ARMOR[2] == TRUE)&& (Npc_HasItems(hero,ItSH_Gladiator) >= 1))
	{
		return TRUE;
	};
};

func void PC_ITSH_WoodenHeavy_info()
{
	if((Npc_HasItems(hero,ItSH_Gladiator) >= 1) && (Npc_HasItems(hero,itmi_steelbar) >=10) && (Npc_HasItems(hero,itmi_textile) >= 12)&& (Npc_HasItems(hero,itmi_leather) >= 3))
	{
		Npc_RemoveInvItems(hero,ItSH_Gladiator,1);
		Npc_RemoveInvItems(hero,itmi_steelbar,10);
		Npc_RemoveInvItems(hero,itmi_textile,12);
		Npc_RemoveInvItems(hero,itmi_leather,3);
		CreateInvItems(hero,ItSH_WoodenHeavy,1);
		AI_Wait(hero,15);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen("Uda³o ci siê ulepszyæ tarczê!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};



instance PC_Ithe_Ejnar(C_INFO)
{
	npc = pc_hero;
	condition = PC_Ithe_Ejnar_condition;
	information = PC_Ithe_Ejnar_info;
	permanent = TRUE;
	description = "Wykuj rogaty he³m(7x sztaba stali, 7x tkanina, 6x skóra, 2x róg cieniostwora)";
};


func int PC_Ithe_Ejnar_condition()
{
	if((Monolog_Smith_Armor) && (CMPLTWPN == TRUE) &&(PLAYER_TALENT_ARMOR[2] == TRUE)&& (Knows_Ejnar_Helm))
	{
		return TRUE;
	};
};

func void PC_Ithe_Ejnar_info()
{
	if((Npc_HasItems(hero,ItSH_Wooden) >= 1) 
	&& (Npc_HasItems(hero,itmi_steelbar) >=7) 
	&& (Npc_HasItems(hero,itat_shadowhorn) >=2) 
	&& (Npc_HasItems(hero,ITMI_TEXTILE) >=7) 
	&& (Npc_HasItems(hero,ITMI_LEATHER) >= 6))
	{
		Npc_RemoveInvItems(hero,ITMI_STEELBAR,7);
		Npc_RemoveInvItems(hero,itat_shadowhorn,2);
		Npc_RemoveInvItems(hero,ITMI_TEXTILE,7);
		Npc_RemoveInvItems(hero,ITMI_LEATHER,6);
		CreateInvItems(hero,ITAR_Helm_DJG,1);
		AI_Wait(hero,5);
		Print(PRINT_WPNNSPROCESS);
		AI_PrintScreen("Uda³o ci siê wytworzyæ he³m!",-1,52,FONT_SCREENBRIGHTLARGE,2);
	}
	else
	{
		Print(PRINT_PRODITEMSMISSING);
	};
	b_endproductiondialog();
	CMPLTWPN = FALSE;
};