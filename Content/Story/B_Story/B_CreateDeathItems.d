func void B_CreateDeathInvTeeth(var C_NPC slf)
{
	if(slf.aivar[AIV_MM_REAL_ID]==ID_SNAPPER)						{			CreateInvItems(slf,ItAt_SnapperTeeth,4);			};
	if(slf.aivar[AIV_MM_REAL_ID]==ID_SHADOWBEAST)				{			CreateInvItems(slf,ItAt_ShadTeeth,4);				};	
	if(slf.aivar[AIV_MM_REAL_ID]==ID_WARG)							{			CreateInvItems(slf,ItAt_OrcDogTeeth,4);			};	
	if(slf.aivar[AIV_MM_REAL_ID]==ID_Razor)							{			CreateInvItems(slf,ItAt_RazorTeeth,4);				};
	if(slf.aivar[AIV_MM_REAL_ID]==ID_OrcBiter)							{			CreateInvItems(slf,ItAt_BiterTeeth,4);				};
	if(slf.aivar[AIV_MM_REAL_ID]==ID_WARAN)							{			CreateInvItems(slf,ItAt_WaranTeeth,4);				};
	if(slf.aivar[AIV_MM_REAL_ID]==ID_FIREWARAN)					{			CreateInvItems(slf,ItAt_FireWaranTeeth,4);		};	
	if(slf.aivar[AIV_MM_REAL_ID]==ID_LURKER)							{			CreateInvItems(slf,ItAt_LurkerTeeth,2);				};	
	if(slf.aivar[AIV_MM_REAL_ID]==ID_WOLF)	||(slf.aivar[AIV_MM_REAL_ID]==id_Young_wolf)	
	||(slf.aivar[AIV_MM_REAL_ID]==ID_Icewolf)			
	{			
	CreateInvItems(slf,ItAt_WolfTeeth,2);			
	};
	if(slf.aivar[AIV_MM_REAL_ID]==ID_ALLIGATOR)						{			CreateInvItems(slf,ItAt_AligatTeeth,2);				};
	if(slf.aivar[AIV_MM_REAL_ID]==ID_GARGOYLE)						{			CreateInvItems(slf,ITAT_PumaTeeth,4);				};//pumy	
	if(slf.aivar[AIV_MM_REAL_ID]==ID_SWAMPSHARK)				{			CreateInvItems(slf,ItAt_SharkTeeth,4);			};
	if(slf.aivar[AIV_MM_REAL_ID]==ID_TROLL)
	||(slf.aivar[AIV_MM_REAL_ID]==ID_TROLL_BLACK)				{			CreateInvItems(slf,ItAt_TrollTooth,2);					};	
	if(slf.aivar[AIV_MM_REAL_ID]==ID_DRAGONSNAPPER)			{			CreateInvItems(slf,ItAt_DirkTeeth,4);					};
	if(slf.aivar[AIV_MM_REAL_ID]==ID_Bloodhound)					{			CreateInvItems(slf,ItAt_BloodHoTeeth,4);			};	
	
	if(slf.aivar[AIV_MM_REAL_ID]==ID_ORCWARRIOR) 			||	(slf.aivar[AIV_MM_REAL_ID]==ID_ORC_WARRIOR_ROAM) 
	||(slf.aivar[AIV_MM_REAL_ID]==ID_ORCSHAMAN)				||	(slf.aivar[AIV_MM_REAL_ID]==ID_ORC_WARRIOR_REST) 	
	||(slf.aivar[AIV_MM_REAL_ID]==ID_ORCELITE)					||	(slf.aivar[AIV_MM_REAL_ID]==ID_ORC_WARRIOR_SIT) 		
	||	(slf.aivar[AIV_MM_REAL_ID]==ID_ORC_ELITE_ROAM) 	||	(slf.aivar[AIV_MM_REAL_ID]==ID_ORC_ELITE_SIT) 
	||	(slf.aivar[AIV_MM_REAL_ID]==ID_ORC_ELITE_REST) 
	{
	CreateInvItems(slf,ItAt_OrcTeeth,2);					
	};
	
};
//next
func void B_CreateDeathInvMeat(var C_NPC slf)
{
		if(slf.aivar[AIV_MM_REAL_ID] == ID_WOLF)
		{
			CreateInvItems(slf,itfomuttonraw,1);
		};
		if(slf.aivar[AIV_MM_REAL_ID] == ID_WARG)
		{
			CreateInvItems(slf,itfomuttonraw,1);
		};
		if(slf.aivar[AIV_MM_REAL_ID] == ID_ICEWOLF)
		{
			CreateInvItems(slf,itfomuttonraw,1);
		};
		if(slf.aivar[AIV_MM_REAL_ID] == ID_KEILER)
		{
			CreateInvItems(slf,itfomuttonraw,1);
		};
		if(slf.aivar[AIV_MM_REAL_ID] == ID_ORCBITER)
		{
			CreateInvItems(slf,itfomuttonraw,1);
		};
		if(slf.aivar[AIV_MM_REAL_ID] == ID_SWAMPRAT)
		{
			CreateInvItems(slf,itfomuttonraw,2);
		};
		if(slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)
		{
			CreateInvItems(slf,itfomuttonraw,3);
		};
		if(slf.aivar[AIV_MM_REAL_ID] == ID_GIANT_RAT)
		{
			CreateInvItems(slf,itfomuttonraw,1);
		};
		if(slf.aivar[AIV_MM_REAL_ID] == ID_SCAVENGER)
		{
			CreateInvItems(slf,itfomuttonraw,1);
		};
		if(slf.aivar[AIV_MM_REAL_ID] == ID_SCAVENGER_DEMON)
		{
			CreateInvItems(slf,itfomuttonraw,1);
		};
		if(slf.aivar[AIV_MM_REAL_ID] == ID_SHEEP)
		{
			CreateInvItems(slf,itfomuttonraw,1);
		};
		if(slf.aivar[AIV_MM_REAL_ID] == ID_MOLERAT)
		{
			CreateInvItems(slf,itfomuttonraw,1);
		};
};
//next
func void B_CreateDeathInvClaws(var C_NPC slf)
{
	if (slf.aivar[AIV_MM_REAL_ID]==ID_WARAN)					{	CreateInvItems(slf,ItAt_WaranClaws,		4);		};
	if (slf.aivar[AIV_MM_REAL_ID]==ID_FIREWARAN)			{	CreateInvItems(slf,ItAt_FireWaranClaws,	4);		};
	if (slf.aivar[AIV_MM_REAL_ID]==ID_SNAPPER)   			{	CreateInvItems(slf,ItAt_SnapperClaws,		2);		};
	if (slf.aivar[AIV_MM_REAL_ID]==ID_RAZOR)					{	CreateInvItems(slf,ItAt_RazorClaws,			2);		};
	if (slf.aivar[AIV_MM_REAL_ID]==ID_ORCBITER)    			{	CreateInvItems(slf,ItAt_BiterClaws,			2);		};
	if (slf.aivar[AIV_MM_REAL_ID]==ID_LURKER)					{	CreateInvItems(slf,ItAt_LurkerClaws,		2);		};
	if (slf.aivar[AIV_MM_REAL_ID]==ID_WOLF)					
	||(slf.aivar[AIV_MM_REAL_ID]==id_Young_wolf)				{	CreateInvItems(slf, ItAt_WolfClaws, 			2);		};		
	if (slf.aivar[AIV_MM_REAL_ID]==ID_BLOODHOUND)		{	CreateInvItems(slf,ItAt_BloodHoundClaws,2);		};
	if (slf.aivar[AIV_MM_REAL_ID]==ID_SHADOWBEAST)		{	CreateInvItems(slf,ItAt_ShadClaws,			4);		};	
	if (slf.aivar[AIV_MM_REAL_ID]==ID_WARG)					{	CreateInvItems(slf,ItAt_OrcDogClaws,		2);		};
	if (slf.aivar[AIV_MM_REAL_ID]==ID_ALLIGATOR)			{	CreateInvItems(slf,ItAt_AligatClaws,			4);		};
	if (slf.aivar[AIV_MM_REAL_ID]==ID_DRAGONSNAPPER)	{	CreateInvItems(slf,ItAt_DirkClaws,			4); 		}; 
	if (slf.aivar[AIV_MM_REAL_ID]==ID_GARGOYLE)				{	CreateInvItems(slf,ItAt_PumaClaws,			4); 		}; 
};
//next
func void B_CreateDeathInvFurs(var C_NPC slf)
{
	if (slf.aivar[AIV_MM_REAL_ID]==ID_WOLF)
	||(slf.aivar[AIV_MM_REAL_ID]==id_Young_wolf)						{		CreateInvItems(slf,ItAt_WolfFur,1);				};
	if (slf.aivar[AIV_MM_REAL_ID]==ID_ICEWOLF)							{		CreateInvItems(slf,ItAt_IceWolfFur, 1);			};

	
	if (slf.aivar[AIV_MM_REAL_ID]==ID_WARG)							{	CreateInvItems(slf,Itat_WargFur,		1);				}; 
	if (slf.aivar[AIV_MM_REAL_ID]==ID_SHADOWBEAST)				{	CreateInvItems(slf,ItAt_ShadowFur,		1);			};
	if (slf.aivar[AIV_MM_REAL_ID]==ID_TROLL)							{	CreateInvItems(slf,ItAt_TrollFur,			1);			};
	if (slf.aivar[AIV_MM_REAL_ID]==ID_TROLL_BLACK)				{	CreateInvItems(slf,ItAt_TrollBlackFur,		1);		};
	if (slf.aivar[AIV_MM_REAL_ID]==ID_BLOODHOUND)				{	CreateInvItems(slf,ItAt_BloodhoundSkin,	1);		};
	
	if (slf.aivar[AIV_MM_REAL_ID]==ID_GARGOYLE)					{	CreateInvItems(slf,ItAt_PanterSkin,	1);				};
		
		
	if (slf.aivar[AIV_MM_REAL_ID]==ID_SHEEP)							{	CreateInvItems(slf,Itat_SheepFur,		1);			}; 
	if (slf.aivar[AIV_MM_REAL_ID]==ID_KEILER)							{	CreateInvItems(slf,itat_addon_keilerfur,		1);	}; 
};
//next
func void B_CreateDeathInvHearth(var C_NPC slf)
{
		if (slf.aivar[AIV_MM_REAL_ID]==ID_STONEGOLEM)		{	CreateInvItems(slf,ItAt_StoneGolemHeart,	1);						};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_FIREGOLEM)			{	CreateInvItems(slf,ItAt_FireGolemHeart,	1);							};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_ICEGOLEM)			{	CreateInvItems(slf,ItAt_IceGolemHeart,	1);							};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_DEMON)				{	CreateInvItems(slf,ItAt_DemonHeart,	1);								};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_DEMON_LORD)		{	CreateInvItems(slf,ItAt_DemonHeart,	1);								};
		
		if (slf.aivar[AIV_MM_REAL_ID]==ID_DRACONIAN)		{	CreateInvItems(slf,ItAt_DraconianHeart,	1);								};
		
		if (slf.guild==GIL_ORC)		{	CreateInvItems(slf,ItAt_OrcHeart,	1);								};
		
		
};
//next
func void B_CreateDeathInvShadowHorns(var C_NPC slf)
{
		if (slf.aivar[AIV_MM_REAL_ID]==ID_SHADOWBEAST)					{	CreateInvItems(slf,ItAt_ShadowHorn,	1);		};
};
//next
func void B_CreateDeathInvTongue(var C_NPC slf)
{
		if (slf.aivar[AIV_MM_REAL_ID]==ID_FIREWARAN)					{	CreateInvItems(slf,ItAt_WaranFiretongue,	1);					};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_WARAN)						{	CreateInvItems(slf,ItAt_WaranTongue, 1);						};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_DRACONIAN)					{	CreateInvItems(slf,ItAt_DraconianTongue,	1);				};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_DEMON)						{	CreateInvItems(slf,ItAt_DemonTongue, 1);						};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_DEMON_LORD)				{	CreateInvItems(slf,ItAt_DemonLordTongue,	1);				};
};
//next
func void B_CreateDeathInvWings(var C_NPC slf)
{
		if (slf.aivar[AIV_MM_REAL_ID]==ID_BLOODFLY)					{	CreateInvItems(slf,ItAt_Wing,	2);		};
};
//next
func void B_CreateDeathInvSting(var C_NPC slf)
{
		if (slf.aivar[AIV_MM_REAL_ID]==ID_BLOODFLY)					{	CreateInvItems(slf,ItAt_Sting,	1);		};
};
//next
func void B_CreateDeathInvCrawlerMandible(var C_NPC slf)
{
		if (slf.aivar[AIV_MM_REAL_ID]==ID_MINECRAWLER)					{	CreateInvItems(slf,ItAt_CrawlerMandibles,	1);		};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_MINECRAWLERWARRIOR)		{	CreateInvItems(slf,ItAt_CrawlerMandibles,	2);		};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_GIANT_BUG)						{	CreateInvItems(slf,ItAt_BugMandibles,			2);		};
};
//next
func void B_CreateDeathInvCrawlerPlate(var C_NPC slf)
{
		if (slf.aivar[AIV_MM_REAL_ID]==ID_MINECRAWLER)					{	CreateInvItems(slf,ItAt_CrawlerPlate,			1);		};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_MINECRAWLERWARRIOR)		{	CreateInvItems(slf,ItAt_CrawlerPlate,			2);		};
};
//next
func void B_CreateDeathInvDragonSnapperHorn(var C_NPC slf)
{
if (slf.aivar[AIV_MM_REAL_ID]==ID_DRAGONSNAPPER)					{	CreateInvItems(slf,ItAt_DrgSnapperHorn, 1);		};
};
//next
func void B_CreateDeathInvDragonScale(var C_NPC slf)
{
		if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_FIRE)			{		CreateInvItems(slf,itat_dragonscale,12);	};
		if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ICE)			{		CreateInvItems(slf,itat_dragonscale,12);	};
		if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ROCK)		{		CreateInvItems(slf,itat_dragonscale,12);	};
		if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_SWAMP)		{		CreateInvItems(slf,itat_dragonscale,12);	};
};
//next
func void B_CreateDeathInvDragonBlood(var C_NPC slf)
{
		if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_FIRE)			{		CreateInvItems(slf,itat_dragonblood,2);	};
		if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ICE)			{		CreateInvItems(slf,itat_dragonblood,2);	};
		if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ROCK)		{		CreateInvItems(slf,itat_dragonblood,2);	};
		if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_SWAMP)		{		CreateInvItems(slf,itat_dragonblood,2);	};
};
//next
func void B_CreateDeathInvHide(var C_NPC slf)
{
		if (slf.aivar[AIV_MM_REAL_ID]==ID_LURKER)					{	CreateInvItems(slf,ItAt_LurkerSkin,			1);		};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_SWAMPSHARK)			{	CreateInvItems(slf,ItAt_SwampsharkSkin,	1);	 	};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_SNAPPER)   				{	CreateInvItems(slf,ItAt_SnapperSkin,		1);		};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_RAZOR)						{	CreateInvItems(slf,ItAt_RazorSkin,			1);		};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_WARAN)					{	CreateInvItems(slf,ItAt_WaranSkin,			1);		};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_FIREWARAN)				{	CreateInvItems(slf,ItAt_FireWSkin,			1);		};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_ALLIGATOR)				{	CreateInvItems(slf,ItAt_AligatSkin,			1);		};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_ORCBITER)    				{	CreateInvItems(slf,ItAt_BiterSkin,			1);		};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_DRAGONSNAPPER)		{	CreateInvItems(slf,ItAt_DirkSkin,				1);		};
};
//next
func void B_CreateDeathInvLiver(var C_NPC slf)
{
		if (slf.aivar[AIV_MM_REAL_ID]==ID_MOLERAT)					{	CreateInvItems(slf,ItAt_WatMRat,	1);					};
};
//next
func void B_CreateDeathInvFeather(var C_NPC slf)
{
		if (slf.aivar[AIV_MM_REAL_ID]==ID_HARPY)					{	CreateInvItems(slf,ItAt_HarFeather,	10);							};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_SCAVENGER)			{	CreateInvItems(slf,ItAt_ScaFeather,	20);							};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_SCAVENGER_DEMON)			{	CreateInvItems(slf,ItAt_ScaFeather,	25);							};
};
//next
func void B_CreateDeathInvWTF(var C_NPC slf)
{
	if(slf.aivar[AIV_MM_REAL_ID]==ID_SHADOWBEAST)				{			CreateInvItems(slf,ItAt_WTF,1);				};	
};
//next
func void B_CreateDeathInvWool(var C_NPC slf)
{
		if (slf.aivar[AIV_MM_REAL_ID]==ID_SHEEP)										{	CreateInvItems(slf,ItAt_Wool,				2);										};
};
//next
func void B_CreateDeathInvThread(var C_NPC slf)
{
		if (slf.aivar[AIV_MM_REAL_ID]==ID_MINECRAWLER)							{	CreateInvItems(slf,ItAt_ClawlerThread,				3);	};
		if (slf.aivar[AIV_MM_REAL_ID]==ID_MINECRAWLERWARRIOR)			{	CreateInvItems(slf,ItAt_ClawlerThread,				2);	};
};
/**Mod Helper**/
func void B_CreateDeathModHelper(var C_NPC slf)
{
if(slf.aivar[AIV_MM_REAL_ID]==999){

};
};
