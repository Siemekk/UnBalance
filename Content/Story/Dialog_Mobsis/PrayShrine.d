
var int prayday;
var int praydayone_0;
var int praydayone_10;
var int praydayone_50;
var int praydayone_100;

var string concatdonation;

var int shrine_str_bonus;
var int shrine_dex_bonus;
var int shrine_mana_bonus;
var int specialbless;
var int shrineisobsessed;
var int shrinehealing;
var int shrineshealed;
var int shrineisobsessed_nw_trollarea_path_37;
var int shrineisobsessed_nw_farm1_connect_xardas;
var int shrineisobsessed_nw_trollarea_path_66;
var int shrineisobsessed_nw_trollarea_path_04;
var int shrineisobsessed_sagitta;
var int shrineisobsessed_nw_bigmill_malaksversteck_02;
var int shrineisobsessed_nw_farm3_bigwood_02;

func void c_isshrineobsessed(var C_NPC slf)
{
	if(Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(hero))
	{
		SHRINEISOBSESSED = TRUE;
		if((Npc_GetDistToWP(hero,"NW_TROLLAREA_PATH_37") < 2000) && (SHRINEISOBSESSED_NW_TROLLAREA_PATH_37 == TRUE))
		{
			if(SHRINEHEALING == TRUE)
			{
				SHRINEISOBSESSED_NW_TROLLAREA_PATH_37 = FALSE;
				SHRINEISOBSESSED = FALSE;
			};
		}
		else if((Npc_GetDistToWP(hero,"NW_FARM1_CONNECT_XARDAS") < 2000) && (SHRINEISOBSESSED_NW_FARM1_CONNECT_XARDAS == TRUE))
		{
			if(SHRINEHEALING == TRUE)
			{
				SHRINEISOBSESSED_NW_FARM1_CONNECT_XARDAS = FALSE;
				SHRINEISOBSESSED = FALSE;
			};
		}
		else if((Npc_GetDistToWP(hero,"NW_TROLLAREA_PATH_66") < 2000) && (SHRINEISOBSESSED_NW_TROLLAREA_PATH_66 == TRUE))
		{
			if(SHRINEHEALING == TRUE)
			{
				SHRINEISOBSESSED_NW_TROLLAREA_PATH_66 = FALSE;
				SHRINEISOBSESSED = FALSE;
			};
		}
		else if((Npc_GetDistToWP(hero,"NW_TROLLAREA_PATH_04") < 2000) && (SHRINEISOBSESSED_NW_TROLLAREA_PATH_04 == TRUE))
		{
			if(SHRINEHEALING == TRUE)
			{
				SHRINEISOBSESSED_NW_TROLLAREA_PATH_04 = FALSE;
				SHRINEISOBSESSED = FALSE;
			};
		}
		else if((Npc_GetDistToWP(hero,"SAGITTA") < 2000) && (SHRINEISOBSESSED_SAGITTA == TRUE))
		{
			if(SHRINEHEALING == TRUE)
			{
				SHRINEISOBSESSED_SAGITTA = FALSE;
				SHRINEISOBSESSED = FALSE;
			};
		}
		else if((Npc_GetDistToWP(hero,"NW_BIGMILL_MALAKSVERSTECK_02") < 2000) && (SHRINEISOBSESSED_NW_BIGMILL_MALAKSVERSTECK_02 == TRUE))
		{
			if(SHRINEHEALING == TRUE)
			{
				SHRINEISOBSESSED_NW_BIGMILL_MALAKSVERSTECK_02 = FALSE;
				SHRINEISOBSESSED = FALSE;
			};
		}
		else if((Npc_GetDistToWP(hero,"NW_FARM3_BIGWOOD_02") < 2000) && (SHRINEISOBSESSED_NW_FARM3_BIGWOOD_02 == TRUE))
		{
			if(SHRINEHEALING == TRUE)
			{
				SHRINEISOBSESSED_NW_FARM3_BIGWOOD_02 = FALSE;
				SHRINEISOBSESSED = FALSE;
			};
		}
		else
		{
			SHRINEISOBSESSED = FALSE;
		};
	};
};


instance PC_PRAYSHRINE_HEALSHRINE(C_INFO)
{
	npc = pc_hero;
	nr = 1;
	condition = pc_prayshrine_healshrine_condition;
	information = pc_prayshrine_healshrine_info;
	permanent = TRUE;
	description = "Oczy�� �wi�tyni�";
};


func int pc_prayshrine_healshrine_condition()
{
	if((Monolog_PrayInnos) && Npc_HasItems(hero,itmi_ultharsholywater_mis) && (SHRINEISOBSESSED == TRUE))
	{
		return TRUE;
	};
};

func void pc_prayshrine_healshrine_info()
{
	var string shrinestext;
	var string shrinesleft;
	Wld_PlayEffect("spellFX_HealShrine",hero,hero,0,0,0,FALSE);
	Snd_Play("MFX_Heal_Cast");
	SHRINEHEALING = TRUE;
	c_isshrineobsessed(self);
	SHRINEHEALING = FALSE;
	SHRINESHEALED = SHRINESHEALED + 1;
	if(SHRINESHEALED < 7)
	{
		b_say(self,self,"$HEALSHRINE");
		shrinesleft = IntToString(7 - SHRINESHEALED);
		shrinestext = ConcatStrings(shrinesleft,PRINT_NUMBERLEFT);
		AI_PrintScreen(shrinestext,-1,YPOS_GOLDGIVEN,FONT_SCREENSMALL,2);
	}
	else
	{
		b_say(self,self,"$HEALLASTSHRINE");
		MIS_ULTHAR_HEILESCHREINE_PAL = LOG_SUCCESS;
	};
	b_giveplayerxp(XP_AMBIENT);
	b_endproductiondialog();
};

func void prayshrine_s1()
{
	var C_NPC her;
	her = Hlp_GetNpc(pc_hero);
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(her))
	{
		c_isshrineobsessed(self);
		if(SHRINEISOBSESSED == TRUE)
		{
			Wld_PlayEffect("DEMENTOR_FX",hero,hero,0,0,0,FALSE);
		};
		self.aivar[AIV_INVINCIBLE] = TRUE;
		Monolog_PrayInnos = TRUE;
		AI_ProcessInfos(her);
	};
};


instance PC_PRAYSHRINE_END(C_INFO)
{
	npc = pc_hero;
	nr = 999;
	condition = pc_prayshrine_end_condition;
	information = pc_prayshrine_end_info;
	permanent = TRUE;
	description = DIALOG_ENDE;
};


func int pc_prayshrine_end_condition()
{
	if(Monolog_PrayInnos)
	{
		return TRUE;
	};
};

func void pc_prayshrine_end_info()
{
	b_endproductiondialog();
};


instance PC_PRAYSHRINE_PALADINE(C_INFO)
{
	npc = pc_hero;
	nr = 3;
	condition = pc_prayshrine_paladine_condition;
	information = pc_prayshrine_paladine_info;
	permanent = FALSE;
	description = "Zm�w modlitw� za paladyn�w.";
};


func int pc_prayshrine_paladine_condition()
{
	if((Monolog_PrayInnos) && (MIS_MARDUKBETEN == LOG_RUNNING) && (KAPITEL == 1))
	{
		return TRUE;
	};
};

func void pc_prayshrine_paladine_info()
{
	PrintScreen(PRAY_PALADIN1,-1,33,FONT_SCREENSMALL,3);
	PrintScreen(PRAY_PALADIN2,-1,36,FONT_SCREENSMALL,4);
	PrintScreen(PRAY_PALADIN3,-1,39,FONT_SCREENSMALL,5);
	PrintScreen(PRAY_PALADIN4,-1,42,FONT_SCREENSMALL,6);
};


instance PC_PRAYSHRINE_PRAY(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_prayshrine_pray_condition;
	information = pc_prayshrine_pray_info;
	permanent = TRUE;
	description = "M�dl si�";
};


func int pc_prayshrine_pray_condition()
{
	if(Monolog_PrayInnos)
	{
		return TRUE;
	};
};

func void pc_prayshrine_pray_info()
{
	if(SHRINEISOBSESSED == TRUE)
	{
		SC_ISOBSESSED = TRUE;
		PrintScreen(PRINT_SCISOBSESSED,-1,-1,FONT_SCREEN,2);
		Snd_Play("DEM_Die");
	}
	else
	{
		Info_ClearChoices(pc_prayshrine_pray);
		Info_AddChoice(pc_prayshrine_pray,DIALOG_BACK,pc_prayshrine_pray_back);
		Info_AddChoice(pc_prayshrine_pray,"Chc� si� pomodli�.",pc_prayshrine_pray_nopay);
		if(Npc_HasItems(hero,itmi_gold) >= 100)
		{
			Info_AddChoice(pc_prayshrine_pray,"Chc� si� pomodli� i z�o�y� ofiar� 100 sztuk z�ota.",pc_prayshrine_pray_smallpay);
		};
		if(Npc_HasItems(hero,itmi_gold) >= 200)
		{
			Info_AddChoice(pc_prayshrine_pray,"Chc� si� pomodli� i z�o�y� ofiar� 200 sztuk z�ota.",pc_prayshrine_pray_mediumpay);
		};
		if(Npc_HasItems(hero,itmi_gold) >= 300)
		{
			Info_AddChoice(pc_prayshrine_pray,"Chc� si� pomodli� i z�o�y� ofiar� 300 sztuk z�ota.",pc_prayshrine_pray_bigpay);
		};
	};
};

func void pc_prayshrine_pray_back()
{
	Info_ClearChoices(pc_prayshrine_pray);
};

func void pc_prayshrine_pray_nopay()
{
	var int zufall;
	zufall = Hlp_Random(100);
	if(((PRAYDAY == Wld_GetDay()) && (PRAYDAY != 0)) || ((Wld_GetDay() == 0) && (PRAYDAYONE_0 == TRUE)))
	{
		PrintScreen(PRINT_BLESSNONE,-1,-1,FONT_SCREEN,2);
	}
	else if(zufall < 5)
	{
		b_blessattribute(hero,ATR_HITPOINTS_MAX,1);
	}
	else
	{
		PrintScreen(PRINT_BLESSNONE,-1,-1,FONT_SCREEN,2);
	};
	PRAYDAY = Wld_GetDay();
	if(PRAYDAY == 0)
	{
		PRAYDAYONE_0 = TRUE;
	};
	Info_ClearChoices(pc_prayshrine_pray);
};

func void pc_prayshrine_pray_smallpay()
{
	Npc_RemoveInvItems(hero,itmi_gold,100);
	if(((PRAYDAY == Wld_GetDay()) && (PRAYDAY != 0)) || ((Wld_GetDay() == 0) && (PRAYDAYONE_10 == TRUE)))
	{
		PrintScreen(PRINT_BLESSNONE,-1,-1,FONT_SCREEN,2);
	}
	else
	{
		b_blessattribute(hero,ATR_HITPOINTS_MAX,1);
	};
	PRAYDAY = Wld_GetDay();
	if(PRAYDAY == 0)
	{
		PRAYDAYONE_10 = TRUE;
	};
	Info_ClearChoices(pc_prayshrine_pray);
};

func void pc_prayshrine_pray_mediumpay()
{
	Npc_RemoveInvItems(hero,itmi_gold,200);
	if(((PRAYDAY == Wld_GetDay()) && (PRAYDAY != 0)) || ((Wld_GetDay() == 0) && (PRAYDAYONE_50 == TRUE)))
	{
		PrintScreen(PRINT_BLESSNONE,-1,-1,FONT_SCREEN,2);
	}
	else
	{
		b_blessattribute(hero,ATR_HITPOINTS_MAX,2);
	};
	PRAYDAY = Wld_GetDay();
	if(PRAYDAY == 0)
	{
		PRAYDAYONE_50 = TRUE;
	};
	Info_ClearChoices(pc_prayshrine_pray);
};

func void pc_prayshrine_pray_bigpay()
{
	var int zufall;
	zufall = Hlp_Random(100);
	Npc_RemoveInvItems(hero,itmi_gold,300);
	if(((PRAYDAY == Wld_GetDay()) && (PRAYDAY != 0)) || ((Wld_GetDay() == 0) && (PRAYDAYONE_100 == TRUE)))
	{
		PrintScreen(PRINT_BLESSNONE,-1,-1,FONT_SCREEN,2);
	}
	else if((SHRINE_STR_BONUS < 10) && (hero.guild != GIL_KDF) && (hero.guild != GIL_NOV) && (zufall < 50))
	{
		b_blessattribute(hero,ATR_STRENGTH,1);
		SHRINE_STR_BONUS += 1;
	}
	else if((SHRINE_DEX_BONUS < 10) && (hero.guild != GIL_KDF) && (hero.guild != GIL_NOV) && (zufall >= 50))
	{
		b_blessattribute(hero,ATR_DEXTERITY,1);
		SHRINE_DEX_BONUS += 1;
	}
	else if((SHRINE_MANA_BONUS < 20) && (hero.guild != GIL_SLD) && (hero.guild != GIL_DJG))
	{
		b_blessattribute(hero,ATR_MANA_MAX,1);
		SHRINE_MANA_BONUS += 1;
	}
	else
	{
		b_blessattribute(hero,ATR_HITPOINTS_MAX,3);
	};
	PRAYDAY = Wld_GetDay();
	if(PRAYDAY == 0)
	{
		PRAYDAYONE_100 = TRUE;
	};
	Info_ClearChoices(pc_prayshrine_pray);
};


instance PC_PRAYSHRINE_BLESSSWORD(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_prayshrine_blesssword_condition;
	information = pc_prayshrine_blesssword_info;
	permanent = TRUE;
	description = BLESS_SWORD;
};


func int pc_prayshrine_blesssword_condition()
{
	if((Monolog_PrayInnos) && (hero.guild == GIL_PAL) && (Npc_GetDistToWP(hero,"NW_MONASTERY_CHAPELL_02") <= 500) && ((Npc_HasItems(hero,itmw_1h_blessed_01) >= 1) || (Npc_HasItems(hero,itmw_2h_blessed_01) >= 1)))
	{
		return TRUE;
	};
};

func void pc_prayshrine_blesssword_info()
{
	if(SHRINEISOBSESSED == TRUE)
	{
		SC_ISOBSESSED = TRUE;
		PrintScreen(PRINT_SCISOBSESSED,-1,-1,FONT_SCREEN,2);
		Snd_Play("DEM_Die");
	}
	else if(Npc_HasItems(hero,itmi_gold) >= GOLD_BLESSSWORD)
	{
		Npc_RemoveInvItems(hero,itmi_gold,GOLD_BLESSSWORD);
		CONCATDONATION = ConcatStrings(IntToString(GOLD_BLESSSWORD),PRINT_GOLDGEGEBEN);
		AI_PrintScreen(CONCATDONATION,-1,YPOS_GOLDGIVEN,FONT_SCREENSMALL,2);
		if(Npc_HasItems(hero,itmw_2h_blessed_01) >= 1)
		{
			Npc_RemoveInvItems(hero,itmw_2h_blessed_01,1);
			CreateInvItems(hero,itmw_2h_blessed_02,1);
			Wld_PlayEffect("spellFX_PalHeal_ORIGIN",hero,hero,0,0,0,FALSE);
			Snd_Play("MFX_Heal_Cast");
			b_giveplayerxp(XP_SWORDBLESSED);
		}
		else
		{
			Npc_RemoveInvItems(hero,itmw_1h_blessed_01,1);
			CreateInvItems(hero,itmw_1h_blessed_02,1);
			Wld_PlayEffect("spellFX_PalHeal_ORIGIN",hero,hero,0,0,0,FALSE);
			Snd_Play("MFX_Heal_Cast");
			b_giveplayerxp(XP_SWORDBLESSED);
		};
	}
	else
	{
		AI_PrintScreen(PRINT_NOTENOUGHGOLD,-1,YPOS_GOLDGIVEN,FONT_SCREENSMALL,2);
	};
};


instance PC_PRAYSHRINE_BLESSSWORD_FINAL(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_prayshrine_blesssword_final_condition;
	information = pc_prayshrine_blesssword_final_info;
	permanent = TRUE;
	description = BLESS_SWORD2;
};


func int pc_prayshrine_blesssword_final_condition()
{
	if((Monolog_PrayInnos) && (hero.guild == GIL_PAL) && (Npc_GetDistToWP(hero,"NW_MONASTERY_CHAPELL_02") <= 500) && (PAL_KNOWSABOUT_FINAL_BLESSING == TRUE) && ((Npc_HasItems(hero,itmw_1h_blessed_02) >= 1) || (Npc_HasItems(hero,itmw_2h_blessed_02) >= 1)))
	{
		return TRUE;
	};
};

func void pc_prayshrine_blesssword_final_info()
{
	if(SHRINEISOBSESSED == TRUE)
	{
		SC_ISOBSESSED = TRUE;
		PrintScreen(PRINT_SCISOBSESSED,-1,-1,FONT_SCREEN,2);
		Snd_Play("DEM_Die");
	}
	else if((Npc_HasItems(hero,itpo_potionofdeath_01_mis) >= 1) || (Npc_HasItems(hero,itpo_potionofdeath_02_mis) >= 1))
	{
		Npc_RemoveInvItems(hero,itpo_potionofdeath_01_mis,1);
		Npc_RemoveInvItems(hero,itpo_potionofdeath_02_mis,1);
		if(Npc_HasItems(hero,itmw_2h_blessed_02) >= 1)
		{
			Npc_RemoveInvItems(hero,itmw_2h_blessed_02,1);
			CreateInvItems(hero,itmw_2h_blessed_03,1);
			Wld_PlayEffect("spellFX_PalHeal_ORIGIN",hero,hero,0,0,0,FALSE);
			Snd_Play("MFX_Heal_Cast");
			b_giveplayerxp(XP_SWORDBLESSED2);
		}
		else if (Npc_HasItems(hero,itmw_1h_blessed_02) >= 1)&&((Npc_HasItems(hero,itsh_knight) >= 1))
		{
			Npc_RemoveInvItems(hero,itmw_1h_blessed_02,1);
				Npc_RemoveInvItems(hero,itsh_knight,1);
			CreateInvItems(hero,itsh_paladin,1);
			CreateInvItems(hero,itmw_1h_blessed_03,1);
			Wld_PlayEffect("spellFX_PalHeal_ORIGIN",hero,hero,0,0,0,FALSE);
			Snd_Play("MFX_Heal_Cast");
			b_giveplayerxp(XP_SWORDBLESSED2);
		};
	}
	else
	{
		AI_PrintScreen(PRINT_NOINNOSTEARS,-1,YPOS_GOLDGIVEN,FONT_SCREENSMALL,2);
	};
};

