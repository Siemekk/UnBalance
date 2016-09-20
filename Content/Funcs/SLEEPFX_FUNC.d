var int SleepFX_Enabled;
var int SleepFX_State;

var int torches_disabled;
var int torches_enabled;

var int last_state0;
var int last_state1;

var int SleepFX_Time;
var int SleepFX_StartHH;
var int SleepFX_StartMM;

//ToDo:Zrobiæ kamery i  skrypty za nie odpowiedzialne ;0


func string Get_Hero_Locations()
{
	if(CurrentLevel==NEWWORLD_ZEN)
	{
		if(Npc_GetDistToWP(hero,"NW_CITY_HOTEL_UPTSAIRS_04")<4500)
		{
			return "CITY";
		}
		else if (Npc_GetDistToWP(hero,"NW_TAV_SLEEP_R02")<3000)
		{
			return "TAVERN";
		}
		else if (Npc_GetDistToWP(hero,"NW_MONASTERY_NOVICE04_02")<3000)
		{
			return "MONASTERY";
		}
		else if(Npc_GetDistToWP(hero,"NW_HERO_SLEEP_CAVE_01")<500)
		{
			return "XARDAS";
		}
		else if (Npc_GetDistToWP(hero,"NW_BFS_FREE_02")<8300)
		{
			return "BIGFARM";
		}
		else
		{
			return "UNKNOWN";
		};
	}
	else if(CurrentLevel==OLDWORLD_ZEN)
	{
		if (Npc_GetDistToWP(hero,"OC_GATE_GUARD_01")<8000)
		{
			return "CASTLE";
		}
		else
		{
			return "OW";
		};
	}
	else if (CurrentLevel==ADDONWORLD_ZEN)
	{	
		if (Npc_GetDistToWP(hero,"ADW_ENTRANCE")<8000)
		{
			return "CENTER";
		}
		else if (Npc_GetDistToWP(hero,"ADW_VALLEY_BENCH")<1000)
		{
			return "SLEEPCAM_EREMIT";
		}
		else if(Npc_GetDistToWP(hero,"ADW_PIRATECAMP_BEACH_22")<3000)
		{
			return "PIRATES";
		}
		else 
		{
			return "UNKNOWN";
		};
	}
	else 
	{
		return "DI";
	};
};

func void ScaleWorldTime (var int factor) 
{
	
	if(MEM_WorldTimer)
	{
		var int deltaT; deltaT = MEM_Timer.frameTimeFloat;
		deltaT = mkf(2065);
		deltaT = mulf (deltaT, subf (factor, mkf (1)));
		MEM_WorldTimer.worldTime = addf (MEM_WorldTimer.worldTime, deltaT);
	};
	
};



//0 - none
//1 - Fade to black
//2 - Set Cameras, GUI-Off, SpeedUp
//3 - Fade from black
//4 - waiting till time achieved
//5 - fade to black
//6 - turn off Cameras, reinit sky, GUI-On, default time 
//7 - fade from black - END


func void SleepFX_HeroSleep(var int Time)
{

	SleepFX_Enabled = true;
	SleepFX_Time = time;
	SleepFX_StartHH = Wld_GetHour();
	SleepFX_StartMM = Wld_GetMin();
	SleepFX_State = 1;
	torches_enabled = false;
	torches_disabled = false;	
	last_state0 = 0;
	last_state1 = 0;
	
	FF_ApplyOnceExt(SleepFX_WaitTillDestinationTimeCome,125,-1);
	FF_Apply(SleepFx_DoFrame);
};

const int Sleep_Cut_Multipler = 10;



func void SleepFx_DoFrame()
{
	if(SleepFX_Enabled)
	{
	var string CameraName;
	
		if(SleepFX_State==1)
		{
			FadeScreen_Color_Over	= 2;//Test
			Fade_Status						=	1;
			FadeScreen_Multipler		=	Sleep_Cut_Multipler;
			
			if(FadeScreen_Color_A==255)
			{
			SleepFX_State=2;
			};	
		}
		else if(SleepFX_State==2)
		{
			
				CameraName = ConcatStrings("SLEEPCAM_",Get_Hero_Locations());
			
				var int ID;
				ID = Hlp_Random(2);
			
				CameraName = ConcatStrings(CameraName,IntToString(ID));
			
				Wld_SendTrigger(cameraName);
				MEM_Game.game_drawall = FALSE;//turn off		
				SleepFX_State	=	3;
		}
		else if(SleepFX_State==3)
		{
			if(FadeScreen_Color_A==0)
			{
			SleepFX_State=4;
			};

		}
		else if (SleepFX_State==5)//Miss 4-state. 4-state called by 0.125 trigger ;)
		{
		
			Fade_Status						=	1;
			FadeScreen_Color_Over	= 2;//Test
			FadeScreen_Multipler		= Sleep_Cut_Multipler;
			
			if(FadeScreen_Color_A==255)
			{
			SleepFX_State = 6;
			};	
		
		}
		else if (SleepFX_State==6)
		{		
				Wld_SendUnTrigger(cameraName);
				MEM_Game.game_drawall = true;//turn on			
				SleepFX_State	=	7;
		}
		else if (SleepFX_State==7)
		{
			if(FadeScreen_Color_A==0)
			{
			
		
			hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
			hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];	
			
			FF_Remove(SleepFX_WaitTillDestinationTimeCome);
			FF_Remove(SleepFX_DoFrame);
			Npc_SendPassivePerc	(hero,	PERC_ASSESSENTERROOM, NULL, hero);
			
			SleepFX_State = 0;//FINISH!
			SleepFX_Enabled = false;
	
				if(NewAttributes)
				{
				Fatigue   	= 0; //Hero jest wyspany
				hunger += 30;
				desire  += 30;
				};
				Prints_Ext("Sen dobrze ci zrobi³.",RGBA(0,180,0,255));
				
			};
		
		};
	
			if(SleepFX_State>1)&&(SleepFX_State<6)
			{
							
					ScaleWorldTime(fracf(575,100));	//ScaleWorldTime
			
					if(Wld_IsTime(19,55,20,10))
					&&(!torches_enabled)
					{
						torches_enabled = true;
						Wld_SetTime(20,01);
					}
					else if(Wld_IsTime(4,55,5,10))
					&&(!torches_disabled)
					{
						torches_disabled = true;
						Wld_SetTime(5,01);	
					}; 

			};
	};
};

func void SleepFX_WaitTillDestinationTimeCome()
{
	if(SleepFX_State==4)
	{
		if(Wld_IsTime(SleepFX_Time-1,00,SleepFX_StartHH,SleepFX_StartMM))
		||((SleepFX_Time==0)&&(Wld_IsTime(23,00,0,00)))
		{
			SleepFX_State = 5;	
		};	
	};	
	
};
