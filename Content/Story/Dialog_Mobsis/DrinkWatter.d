func void USEBECZKA_s1()
{
	var C_NPC her;
	her = Hlp_GetNpc(pc_hero);
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(pc_hero))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		Monolog_WaterDrink=TRUE;
		AI_ProcessInfos(her);
	};
};
/***********************************************/
func void DRINKWATTER_s1()
{
	var C_NPC her;
	her = Hlp_GetNpc(pc_hero);
	if(Hlp_GetInstanceID(self) == Hlp_GetInstanceID(pc_hero))
	{
		self.aivar[AIV_INVINCIBLE] = TRUE;
		Monolog_WaterDrink=TRUE;
		AI_ProcessInfos(her);
	};
};
/***********************************************/
instance PC_UseBarrel_END(C_INFO)
{
	npc = pc_hero;
	nr = 999;
	condition = pc_UseBarrel_end_condition;
	information = pc_UseBarrel_end_info;
	permanent = TRUE;
	description = "Koniec";
};


func int pc_UseBarrel_end_condition()
{
	if(Monolog_WaterDrink)
	{
		return TRUE;
	};
};

func void pc_UseBarrel_end_info()
{
	b_endproductiondialog();
};
//##############################################
instance PC_UseBarrel_Drink(C_INFO)
{
	npc = pc_hero;
	nr = 2;
	condition = pc_UseBarrel_Drink_condition;
	information = pc_UseBarrel_Drink_info;
	permanent = TRUE;
	description = "Napij siê...";
};


func int pc_UseBarrel_Drink_condition()
{
	if(Monolog_WaterDrink)
	{
		return TRUE;
	};
};

func void pc_UseBarrel_Drink_info()
{	
	var int Procent; Procent=(hero.attribute[ATR_HITPOINTS_MAX]*10)/100;
	hero.attribute[ATR_HITPOINTS] +=Procent;
	if(hero.attribute[ATR_HITPOINTS]>hero.attribute[ATR_HITPOINTS_MAX])
	{
	hero.attribute[ATR_HITPOINTS]=hero.attribute[ATR_HITPOINTS_MAX];
	};
	AI_PlayAni 	(hero, "T_TRINKFASS_SEP"); 
	desire -=10;
	
	b_endproductiondialog();
};

INSTANCE DIA_PC_Hero_FillBottle (C_INFO)
{
   npc          = PC_Hero;
   nr           = 1;
   condition    = DIA_PC_Hero_FillBottle_Condition;
   information  = DIA_PC_Hero_FillBottle_Info;
   permanent	= TRUE;
   description	= "Nape³nij butelki...";
};

FUNC INT DIA_PC_Hero_FillBottle_Condition()
{
    if (Monolog_WaterDrink)
    {
    return TRUE;
    };
};


FUNC VOID DIA_PC_Hero_FillBottle_Info()
{
    Info_ClearChoices		(DIA_PC_Hero_FillBottle);
	if(Npc_HasItems(hero,ITMI_GLASS)>=1)
	{
    Info_AddChoice		(DIA_PC_Hero_FillBottle, "Jedn¹ butelkê.", DIA_PC_Hero_FillBottle_ONE);
	};
	
	if(Npc_HasItems(hero,ITMI_GLASS)>=2)
	{
    Info_AddChoice		(DIA_PC_Hero_FillBottle, "Dwie butelki.", DIA_PC_Hero_FillBottle_TWO);
	};
	
	if(Npc_HasItems(hero,ITMI_GLASS)>=5)
	{
    Info_AddChoice		(DIA_PC_Hero_FillBottle, "Piêæ butelek.", DIA_PC_Hero_FillBottle_FIVE);
	};
	
	if(Npc_HasItems(hero,ITMI_GLASS)>=10)
	{
    Info_AddChoice		(DIA_PC_Hero_FillBottle, "Dziesiêæ butelek.", DIA_PC_Hero_FillBottle_TEN);
	};
	if(Npc_HasItems(hero,ITMI_GLASS)>=1)
	{
    Info_AddChoice		(DIA_PC_Hero_FillBottle, "Wszystkie butelki", DIA_PC_Hero_FillBottle_ALL);
	};
	Info_AddChoice		(DIA_PC_Hero_FillBottle, "[WRÓÆ]", DIA_PC_Hero_FillBottle_Back);
};

FUNC VOID DIA_PC_Hero_FillBottle_ONE()
{
CreateInvItems(hero,ITFO_WATER,1);
Npc_RemoveInvItems(hero,ITMI_GLASS,1);
AI_PrintScreen("Nape³ni³eœ jedn¹ butelkê !",-1,52,FONT_SCREENBRIGHTLARGE,2);
};

FUNC VOID DIA_PC_Hero_FillBottle_TWO()
{
CreateInvItems(hero,ITFO_WATER,2);
Npc_RemoveInvItems(hero,ITMI_GLASS,2);
AI_PrintScreen("Nape³ni³eœ dwie butelki !",-1,52,FONT_SCREENBRIGHTLARGE,2);
};

FUNC VOID DIA_PC_Hero_FillBottle_FIVE()
{
CreateInvItems(hero,ITFO_WATER,5);
Npc_RemoveInvItems(hero,ITMI_GLASS,5);
Ai_Wait(hero,5);
AI_PrintScreen("Nape³ni³eœ piêæ butelek !",-1,52,FONT_SCREENBRIGHTLARGE,2);
};

FUNC VOID DIA_PC_Hero_FillBottle_TEN()
{
CreateInvItems(hero,ITFO_WATER,10);
Npc_RemoveInvItems(hero,ITMI_GLASS,10);
Ai_Wait(hero,10);
AI_PrintScreen("Nape³ni³eœ dziesiêæ butelek !",-1,52,FONT_SCREENBRIGHTLARGE,2);
};

FUNC VOID DIA_PC_Hero_FillBottle_ALL()
{
Ai_Wait(hero,15);
var int Hero_Glass; Hero_Glass=Npc_HasItems(hero,Itmi_Glass);
CreateInvItems(hero,ITFO_WATER,Hero_Glass);
Npc_RemoveInvItems(hero,ITMI_GLASS,Hero_Glass);
var string msg; msg=ConcatStrings("Nape³ni³eœ ",IntToString(Hero_Glass));
msg=ConcatStrings(msg, "butelek !");
AI_PrintScreen(msg,-1,52,FONT_SCREENBRIGHTLARGE,2);
};

FUNC VOID DIA_PC_Hero_FillBottle_Back()
{
Info_ClearChoices	(DIA_PC_Hero_FillBottle);
};


