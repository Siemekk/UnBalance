var int Monolog_Sleep_A_Bit; //zBool
func void pc_sleep(var int t)
{
		AI_StopProcessInfos(self);
		Monolog_Sleep_A_Bit = FALSE;
		self.aivar[AIV_INVINCIBLE] = FALSE;
	
		Wld_StopEffect("DEMENTOR_FX");
		if(SC_ISOBSESSED == TRUE)
		{
			PrintScreen(PRINT_SLEEPOVEROBSESSED,-1,-1,FONT_SCREEN,2);
		}
		else if (NewAttributes)&&(Fatigue<60)
		{
			PrintScreen("Nie jestem zmêczony !",-1,-1,FONT_SCREEN,2);
		} 
		else if(CURRENTLEVEL != DRAGONISLAND_ZEN)
		{
		SleepFX_HeroSleep(t);
		}
		else if (CURRENTLEVEL == DRAGONISLAND_ZEN)
		{
			PrintScreen("Aura tego miejsca nie pozwala mi należycie wypocząć!",-1,-1,FONT_SCREEN,2);
		};
		
		printglobals(PD_ITEM_MOBSI);
		Npc_SendPassivePerc(hero,PERC_ASSESSENTERROOM,NULL,hero);

};


func void SLEEPABIT_S1 ()
{
	var C_NPC her; 	her = Hlp_GetNpc(PC_Hero);
	var C_NPC rock; rock = Hlp_GetNpc(PC_Rockefeller);

	if ( (Hlp_GetInstanceID(self)==Hlp_GetInstanceID(her))||(Hlp_GetInstanceID(self)==Hlp_GetInstanceID(rock)) )
	{
		self.aivar[AIV_INVINCIBLE]=TRUE;
		Monolog_Sleep_A_Bit = TRUE;
		Ai_ProcessInfos (self);

		if (SC_IsObsessed == TRUE)
			{
				Wld_PlayEffect("DEMENTOR_FX",  hero, hero, 0, 0, 0, FALSE);
			};
	};
};

//-------------------- Gar nicht schlafen -------------------------

INSTANCE PC_NoSleep (c_Info)

{
	npc				= PC_Hero;
	nr				= 999;
	condition		= PC_NoSleep_Condition;
	information		= PC_NoSleep_Info;
	important		= 0;
	permanent		= 1;
	description		= DIALOG_ENDE;
};

FUNC INT PC_NoSleep_Condition()
{
	if (Monolog_Sleep_A_Bit)
	{
		return 1;
	};
};

func VOID PC_NoSleep_Info()
{
	AI_StopProcessInfos (self);
 	Wld_StopEffect("DEMENTOR_FX");
	self.aivar[AIV_INVINCIBLE]=FALSE;
	Monolog_Sleep_A_Bit=FALSE;
};

//---------------------- morgens --------------------------------------

INSTANCE PC_SleepTime_Morning (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_SleepTime_Morning_Condition;
	information		= PC_SleepTime_Morning_Info;
	important		= 0;
	permanent		= 1;
	description		= "Odpoczywaj do rana";
};

FUNC INT PC_SleepTime_Morning_Condition()
{
	if (Monolog_Sleep_A_Bit)
	{
		return 1;
	};
};

func void PC_SleepTime_Morning_Info ()
{
	PC_Sleep (8);
};

//--------------------- mittags -----------------------------------------

INSTANCE PC_SleepTime_Noon (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_SleepTime_Noon_Condition;
	information		= PC_SleepTime_Noon_Info;
	important		= 0;
	permanent		= 1;
	description		= "Odpoczywaj do po³udnia";
};

FUNC INT PC_SleepTime_Noon_Condition()
{
	if (Monolog_Sleep_A_Bit)
	{
		return 1;
	};
};

func void PC_SleepTime_Noon_Info ()
{
	PC_Sleep (12);
};

//---------------------- abend --------------------------------------

INSTANCE PC_SleepTime_Evening (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_SleepTime_Evening_Condition;
	information		= PC_SleepTime_Evening_Info;
	important		= 0;
	permanent		= 1;
	description		= "Odpoczywaj do nastêpnego wieczora";
};

FUNC INT PC_SleepTime_Evening_Condition()
{
	if (Monolog_Sleep_A_Bit)
	{
		return 1;
	};
};

func void PC_SleepTime_Evening_Info ()
{
	PC_Sleep (20);
};

//------------------------ nacht -----------------------------------------

instance PC_SleepTime_Midnight (C_INFO)
{
	npc				= PC_Hero;
	condition		= PC_SleepTime_Midnight_Condition;
	information		= PC_SleepTime_Midnight_Info;
	important		= 0;
	permanent		= 1;
	description		= "Odpoczywaj do pó³nocy";
};

FUNC INT PC_SleepTime_Midnight_Condition()
{
	if (Monolog_Sleep_A_Bit)
	{
		return 1;
	};
};

func VOID PC_SleepTime_Midnight_Info()
{
	PC_Sleep (0);
};
