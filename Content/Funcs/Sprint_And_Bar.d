var int StaminBar;                  
var int Sprint;
var int Inventory_Opened;
//10 od startu 100 max - sprint 
instance StaminaBars(GothicBar) {        
	
	x=Print_Screen[PS_X]-100;
	y= Print_Screen[PS_Y]-45;
   width = 180;   //180        
   height = 20;   //20
   backTex = "BAR_BACK.tga"; 
   barTex = "BAR_Misc.tga"; 

};
var int Stamina_Bar;
func void StaminaBarfunc()
{
    if(!Hlp_IsValidHandle(Stamina_Bar))
    {
    Stamina_Bar = Bar_Create(StaminaBars);   
	};
	Bar_SetMax(Stamina_Bar,  Stamina_Max);  
    Bar_SetValue(Stamina_Bar, Stamina);
	
};
/***********************************************/
instance ExpBars(GothicBar) {        

   y = Print_Screen[PS_Y] - 10;
   width = 900;   //180        
   height = 40;   //20
   backTex = "BAR_Exp_Back.tga"; 
   barTex = "Bar_Exp.tga"; 

};
var int Exp_Bar;
func void ExpBarfunc()
{
    if(!Hlp_IsValidHandle(Exp_Bar))
    {
    Exp_Bar = Bar_Create(ExpBars);   
	};
	Bar_SetMax(Exp_Bar,  hero.exp_next);  
    Bar_SetValue(Exp_Bar, hero.exp);
};
/***********************************************/
instance HealthBars(GothicBar) {        

   x = Print_Screen[PS_X] - 100;//Right in 1920x1080 = 1820 px
   y = Print_Screen[PS_Y] - 70;
   width = 180;   //180        
   height = 20;   //20
   backTex = "Bar_Back.tga"; 
   barTex = "Bar_Health.tga"; 

};
var int Health_Bar;
func void HealthBarfunc()
{
    if(!Hlp_IsValidHandle(Health_Bar))
    {
    Health_Bar = Bar_Create(HealthBars);   
	};
	Bar_SetMax(Health_Bar,  hero.attribute[ATR_HITPOINTS_MAX]);  
    Bar_SetValue(Health_Bar, hero.attribute[ATR_HITPOINTS]);
};

instance ManaBars(GothicBar) {        

   x = Print_Screen[PS_X] - 100;//Right in 1920x1080 = 1820 px
   y = Print_Screen[PS_Y] - 20;//trying
   width = 180;   //180        
   height = 20;   //20
   backTex = "Bar_Back.tga"; 
   barTex = "Bar_Mana.tga"; 

};
var int Mana_Bar;
func void ManaBarfunc()
{
    if(!Hlp_IsValidHandle(Mana_Bar))
    {
    Mana_Bar = Bar_Create(ManaBars);   
	};
	Bar_SetMax(Mana_Bar,  hero.attribute[ATR_MANA_MAX]);  
    Bar_SetValue(Mana_Bar, hero.attribute[ATR_MANA]);
};
/***********************************************/

/***************\
	 Hotkey
\***************/
func void B_Hotkey_Sprint()
{
	if(Sprint == TRUE)
	{
		Sprint = FALSE;
		Mdl_RemoveOverlayMds(hero,"HUMANS_SPRINT.MDS");
	}
	else
	{
		if((Stamina > 0) && (hero.attribute[ATR_HITPOINTS] > (hero.attribute[ATR_HITPOINTS_MAX]/10)))
		{
			Sprint = TRUE;
			Mdl_ApplyOverlayMds(hero,"HUMANS_SPRINT.MDS");
		}
		else
		{
		Print("Nie mam si³!");
		};
	};
};
var int sprintdebbuger;
func void Sprint_Init()
{
if (MEM_KeyState (KEY_GRAVE) == KEY_PRESSED)
{
if(C_BodyStateContains(hero,BS_RUN)||C_BodyStateContains(hero,BS_STAND))
{
 B_Hotkey_Sprint();
		};
	};
	if(MEM_KeyState(KEY_J)==KEY_PRESSED)&&(NewAttributes)
	{
		if(MoreInfosInScreen)
		{
		MoreInfosInScreen = FALSE;
		}
		else
		{
		MoreInfosInScreen = TRUE;
		};
	};
};
func void Sprint_Regenerate(){
if(C_BodyStateContains(hero,BS_RUN) && (SPRINT))
{			
if(Stamina > 1)
{
Stamina -=1;
}
else
{
Stamina = 0;
SPRINT = FALSE;
Mdl_RemoveOverlayMds(hero,"HUMANS_SPRINT.MDS");
		};
	};
if (Stamina>=stamina_max)
{
Stamina=stamina_max;
	};
	if(!SPRINT && stamina<stamina_max)
	{
	Stamina+=1;
	};
	if(SPRINT)&&(stamina<stamina_max)&&(!C_BodyStateContains(hero,BS_RUN)&&(!MEM_Game.pause_screen)&&(!C_BodyStateContains(hero,BS_HIT)))
	{
	Stamina+=1;
		};
	};
/*var int BarHided;
func void HideExp_Bar()
{
if(MEM_KeyState(KEY_NUMPAD9)==KEY_PRESSED)
{
if(!BarHided)
{
BarHided=true;
}
else
{
BarHided=false;
		};
	};
};
*/

func void Bar_Hided()
{
if (MEM_Game.pause_screen || !InfoManager_HasFinished())
{
Bar_Delete (Stamina_Bar);
Bar_Hide (Stamina_Bar);
/***********************/
Bar_Delete (Exp_Bar);
Bar_Hide (Exp_Bar);
/***********************/
Bar_Delete (Health_Bar);
Bar_Hide (Health_Bar);
/***********************/
Bar_Delete (Mana_Bar);
Bar_Hide (Mana_Bar);
/***********************/
}
else
{
	StaminaBarfunc();
	if(!BarHided){
	ExpBarfunc();
	};
	HealthBarfunc();
	ManaBarfunc();
	};
};

func void Bars_PerFrameHandle()
{
	StaminaBarfunc();
	if(!BarHided){ExpBarfunc();}else{Bar_Delete (Exp_Bar);
	Bar_Hide (Exp_Bar);};
	HealthBarfunc();
	ManaBarfunc();
	MEM_InitGlobalInst ();
	var oCViewStatusBar bar_hp; bar_hp = MEM_PtrToInst (MEM_GAME.hpBar);
	var oCViewStatusBar bar_mana; bar_mana = MEM_PtrToInst (MEM_GAME.manaBar);
	var oCViewStatusBar bar_swim; bar_swim = MEM_PtrToInst (MEM_GAME.swimBar);
			 

	bar_hp.zCView_vposy = 20000;
	bar_mana.zCView_vposy = 20000;
	bar_swim.zCView_vposy =	7500;
	
	if(hero.aivar[AIV_POISON])
	{	
	Bar_SetTexture(Health_Bar,"Bar_Back.tga","Bar_Poison.tga");
	};
	
	
};



	
	
