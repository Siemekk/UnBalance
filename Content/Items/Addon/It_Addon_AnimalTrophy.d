PROTOTYPE ITAT_ANIMALTROPHY(C_Item)
{
	name 				=	"Skrzyd³a";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	10;

	visual 				=	"ItAt_Bloodfly_01.3DS";
	material 			=	MAT_LEATHER;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= 10;
};
/*******************Pióra*******************/
INSTANCE	ItAt_ScaFeather	(ITAT_ANIMALTROPHY)
{
	name				=	"Pióro œcierwojada";
	
	value				=	1;
	visual 				=	"ItAt_Scavenger.3DS";	
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE	ItAt_HarFeather	(ITAT_ANIMALTROPHY)
{
	name				=	"Pióro harpii";
	
	value				=	2;
	visual 				=	"ItAt_Harpie.3DS";		
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
/*******************WTF*******************/
INSTANCE	ItAt_WatMRat (C_Item)
{
	name				=	"W¹troba kretoszczura";
	
	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;
	
	value				=	10;
	
	visual 				=	"ItAt_Molerat_01.3DS";
	material 			=	MAT_LEATHER;
	
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE ItAt_WTF (C_Item)
{
	name 				=	"Jelita cieniostwora";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	100;

	visual 				=	"ITRM_WTF.3DS";
	material 			=	MAT_LEATHER;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= 100;
};
/*******************Wool*******************/
INSTANCE	ItAt_Wool	(ITAT_ANIMALTROPHY)
{
	name				=	"We³na";
	
	value				=	5;
	visual 				=	"ITRM_WOOL.3DS";		
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
/*******************Crawler*******************/
INSTANCE ItAT_ClawlerThread (C_Item)
{
	name 				=	"Niæ pe³zacza";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	55;

	visual 				=	"ITRM_CRWTHREAD.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	
	TEXT[5]				= 	NAME_Value;	
	COUNT[5]			= 	value;
};
/**Tetehs**/
PROTOTYPE	ItAt_Teeth_01	(C_Item)
{
	name 				=	"K³y";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	14;

	visual 				=	"ItAt_Teeth.3DS";
	material 			=	MAT_LEATHER;

	description			=	name;
	TEXT[4]				=	NAME_Value;					COUNT[4]	= 14;
};

INSTANCE	ItAt_WolfTeeth	(ItAt_Teeth_01)
{
	name				=	"K³y wilka";
	
	value				=	14;
	
	description			=	name;
	TEXT[4]				=	NAME_Value;					COUNT[4]	= Value;
};

INSTANCE	ItAt_SnapperTeeth	(ItAt_Teeth_01)
{
	name				=	"K³y zêbacza";
	
	value				=	27;
	
	description			=	name;
	TEXT[4]				=	NAME_Value;					COUNT[4]	= Value;
};

INSTANCE	ItAt_RazorTeeth	(ItAt_Teeth_01)
{
	name				=	"K³y brzytwy";
	
	value				=	33;
	
	description			=	name;
	TEXT[4]				=	NAME_Value;					COUNT[4]	= Value;
};

INSTANCE	ItAt_BloodHoTeeth	(ItAt_Teeth_01)
{
	name				=	"K³y ogara";
	
	value				=	27;
	
	description			=	name;
	TEXT[4]				=	NAME_Value;					COUNT[4]	= Value;
};

INSTANCE	ItAt_WaranTeeth	(ItAt_Teeth_01)
{
	name				=	"K³y jaszczura";
	
	value				=	13;
	
	description			=	name;
	TEXT[4]				=	NAME_Value;					COUNT[4]	= Value;
};

INSTANCE	ItAt_FireWaranTeeth		(ItAt_Teeth_01)
{
	name				=	"K³y ognistego jaszczura";
	
	value				=	55;
	
	description			=	name;
	TEXT[4]				=	NAME_Value;					COUNT[4]	= Value;
};

INSTANCE	ItAt_LurkerTeeth	(ItAt_Teeth_01)
{
	name				=	"K³y topielca";
	
	value				=	22;
	
	description			=	name;
	TEXT[4]				=	NAME_Value;					COUNT[4]	= Value;
};

INSTANCE	ItAt_ShadTeeth	(ItAt_Teeth_01)
{
	name				=	"K³y cieniostwora";
	
	value				=	45;
	
	description			=	name;
	TEXT[4]				=	NAME_Value;					COUNT[4]	= Value;
};

INSTANCE	ItAt_OrcDogTeeth	(ItAt_Teeth_01)
{
	name				=	"K³y warga ";
	
	value				=	17;
	
	description			=	name;
	TEXT[4]				=	NAME_Value;					COUNT[4]	= Value;
};

INSTANCE	ItAt_BiterTeeth	(ItAt_Teeth_01)
{
	name				=	"K³y k¹sacza";
	
	value				=	17;
	
	description			=	name;
	TEXT[4]				=	NAME_Value;					COUNT[4]	= Value;
};

INSTANCE	ItAt_DirkTeeth	(ItAt_Teeth_01)
{
	name				=	"K³y sztyletnika";
	
	value				=	55;
	
	description			=	name;
	TEXT[4]				=	NAME_Value;					COUNT[4]	= Value;
};

INSTANCE	ItAt_AligatTeeth (ItAt_Teeth_01)
{
	name				=	"K³y aligatora";
	
	value				=	30;
	
	description			=	name;
	TEXT[4]				=	NAME_Value;					COUNT[4]	= Value;
};
INSTANCE	ItAt_OrcTeeth (ItAt_Teeth_01)
{
	name				=	"Orkowy kie³";
	
	value				=	40;
	visual 				=	"ItAt_OrcTeeth.3ds";	
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE	ITAT_PumaTeeth (ItAt_Teeth_01)
{
	name				=	"K³y pantery";
	
	value				=	30;
	
	description			=	name;
	TEXT[4]				=	NAME_Value;					COUNT[4]	= Value;
};

/*Claws*/
PROTOTYPE	ItAt_Claws_01	(C_Item)
{
	name 				=	"Pazury";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	19;

	visual 				=	"ItAt_Claws_01.3DS";
	material 			=	MAT_LEATHER;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= 19;
};

INSTANCE	ItAt_WolfClaws	(ItAt_Claws_01)
{
	name				=	"Pazury wilka";
	
	value				=	19;
	
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE	ItAt_SnapperClaws	(ItAt_Claws_01)
{
	name				=	"Pazury zêbacza";
	
	value				=	32;
	
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE	ItAt_RazorClaws	(ItAt_Claws_01)
{
	name				=	"Pazury brzytwy";
	
	value				=	38;
	
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE	ItAt_BloodHoundClaws	(ItAt_Claws_01)
{
	name				=	"Pazury ogara";
	
	value				=	32;
	
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE	ItAt_WaranClaws	(ItAt_Claws_01)
{
	name				=	"Pazury jaszczura";
	
	value				=	18;
	
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE	ItAt_FireWaranClaws	(ItAt_Claws_01)
{
	name				=	"Pazury ognistego jaszczura";
	
	value				=	60;
	
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE	ItAt_DirkClaws	(ItAt_Claws_01)
{
	name				=	"Pazury sztyletnika";
	
	value				=	60;
	
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE	ItAt_ShadClaws	(ItAt_Claws_01)
{
	name				=	"Pazury cieniostwora";
	
	value				=	50;
	
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE	ItAt_OrcDogClaws	(ItAt_Claws_01)
{
	name				=	"Pazury warga";
	
	value				=	22;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE	ItAt_BiterClaws	(ItAt_Claws_01)
{
	name				=	"Pazury k¹sacza";
	
	value				=	22;
	
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE	ItAt_AligatClaws (ItAt_Claws_01)
{
	name				=	"Pazury aligatora";
	
	value				=	25;
	
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE	ItAt_PumaClaws (ItAt_Claws_01)
{
	name				=	"Pazury pantery";
	
	value				=	29;
	
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
	
/******************************************************************************************/
INSTANCE ItAt_LurkerClaws (C_Item)
{
	name 				=	"Pazury topielca";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	27;

	visual 				=	"ItAt_Lurker_01.3DS";
	material 			=	MAT_LEATHER;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
/*****************************************************************************************/
INSTANCE ItAt_BloodhoundSkin (C_Item)
{
	name 				=	"Futro ogara";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	120;

	visual 				=	"ItAt_ShadowFur.3DS";
	material 			=	MAT_LEATHER;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
/****************************************************************************************/
INSTANCE ItAt_LurkerSkin (C_Item)
{
	name 				=	"Skóra topielca";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	74;

	visual 				=	"ItAt_Lurker_02.3DS";
	material 			=	MAT_LEATHER;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
/******************************************************************************************/
PROTOTYPE	ItAt_SSH_Skin_01	(C_Item)
{
	name 				=	"Skóra b³otnego wê¿a";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	500;

	visual 				=	"ItAt_Swampshark_01.3DS";
	material 			=	MAT_LEATHER;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= 500;
};

INSTANCE ItAt_SwampsharkSkin (ItAt_SSH_Skin_01)
{
	name 				=	"Skóra b³otnego wê¿a";

	value 				=	140;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE	ItAt_SnapperSkin (ItAt_SSH_Skin_01)
{
	name				=	"Skóra zêbacza";
	
	value				=	84;
	visual 				=	"ItAt_Snapper.3DS";	
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE	ItAt_RazorSkin (ItAt_SSH_Skin_01)
{
	name				=	"Skóra brzytwy";
	
	value				=	96;
	visual 				=	"ItAt_Razor.3DS";	
	
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE	ItAt_DirkSkin (ItAt_SSH_Skin_01)
{
	name				=	"Skóra sztyletnika";
	
	value				=	140;
	visual 				=	"ItAt_Dirk.3DS";	
	
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE	ItAt_WaranSkin (ItAt_SSH_Skin_01)
{
	name				=	"Skóra jaszczura";
	
	value				=	56;
	visual 				=	"ItAt_WaranSkin.3DS";		
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE	ItAt_FireWSkin (ItAt_SSH_Skin_01)
{
	name				=	"Skóra ognistego jaszczura";
	visual 				=	"ItAt_FireWaranSkin.3DS";		
	
	value				=	140;
	
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE	ItAt_BiterSkin (ItAt_SSH_Skin_01)
{
	name				=	"Skóra k¹sacza";
	
	value				=	64;
	visual 				=	"ItAt_Bitter.3DS";		
	
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE	ItAt_AligatSkin (ItAt_SSH_Skin_01)
{
	name				= 	"Skóra aligatora";
	
	value				=	90;
	visual 				=	"ItAt_Aligator.3DS";		
	
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE	ItAt_PanterSkin (ItAt_SSH_Skin_01)
{
	name				= 	"Skóra pantery";
	
	value				=	120;
	visual 				=	"ItAt_PumaSkin.3DS";		
	
	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
//*******************************/
//                               /
//     MONSTER TOUNGE            /
//                               /
//*******************************/

/******************************************************************************************/
INSTANCE ItAt_WaranTongue (C_Item)
{
	name 				=	"Jêzyk jaszczura";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	15;

	visual 				=	"ItAt_Waran_01.3DS";
	material 			=	MAT_LEATHER;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_FWaranTongue (C_Item)
{
	name 				=	"Jêzyk ognia";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	150;

	visual 				=	"ItAt_Waran_01.3DS";
	material 			=	MAT_LEATHER;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE ItAt_DraconianTongue (C_Item)
{
	name 				=	"Jêzyk jaszczurocz³eka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	50;

	visual 				=	"ItAt_Waran_01.3DS";
	material 			=	MAT_LEATHER;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE ItAt_DemonTongue (C_Item)
{
	name 				=	"Jêzyk demona";

	mainflag 			=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;

	value 				=	150;

	visual 				=	"ItAt_Waran_01.3DS";
	material 			=	MAT_LEATHER;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

INSTANCE ItAt_DemonLordTongue (C_Item)
{
	name 				=	"Jêzyk ksiêcia demonów";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	300;

	visual 				=	"ItAt_Waran_01.3DS";
	material 			=	MAT_LEATHER;

	description			= name;
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
//
INSTANCE ItAt_IceWolfFur (C_Item)
{
	name 				=	"Skóra lodowego wilka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ICeWolfFur;

	visual 				=	"ItAt_IceWolfFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

// ************************************************************************************************
// Wert von Tiertrophäen
// ************************************************************************************************
//Addon
const int	Value_BCKopf				=   50;

const int	Value_Meatbugflesh			=	10;
const int	Value_SheepFur				=	10;
const int	Value_WolfFur				=	10;
const int	Value_BugMandibles			=	15;	
const int	Value_Claw					=	15;
const int	Value_LurkerClaw			=	15;	
const int	Value_Teeth					=	15;
const int	Value_CrawlerMandibles		=	15;	
const int	Value_Wing					=	20;
const int	Value_Sting					=	25;
const int	Value_ReptileSkin			=	25;
const int 	Value_WargFur				=	25;
const int	Value_DrgSnapperHorn		=	100;
const int	Value_CrawlerPlate			=	50;
const int	Value_ShadowFur				=	250;
const int	Value_SharkSkin				=	200;
const int	Value_TrollFur				=	300;
const int	Value_WaranFiretongue		=	300;
const int	Value_ShadowHorn			=	300;
const int	Value_SharkTeeth			=	300;
const int	Value_TrollTooth			=	300;
const int	Value_TrollBlackFur			=	350;

const int	Value_GoblinBone			=	10;
const int	Value_SkeletonBone			=	10;
const int	Value_DemonHeart			=	300;
const int	Value_StoneGolemHeart		=	300;
const int	Value_FireGolemHeart		=	300;
const int	Value_IceGolemHeart			=	300;

const int	Value_UndeadDragonSoulStone	=	400;
const int	Value_IcedragonHeart		=	400;
const int	Value_FiredragonHeart		=	400;
const int	Value_SwampdragonHeart		=	400;
const int	Value_RockdragonHeart		=	400;

const int	Value_DragonBlood			=	200;
const int	Value_DragonScale			=	200;

const int	Value_Keilerfur				= 	 15;	
const int	Value_IceWolfFur				= 	 20;	
/*****************ADDON*************************************************************************/
INSTANCE ItAt_Addon_BCKopf (C_Item)
{
	name 				=	"G³owa";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_BCKopf;

	visual 				=	"ItAt_Blattcrawler_01.3DS"; 
	material 			=	MAT_LEATHER;
	

	description			= 	"G³owa polnego pe³zacza";
	TEXT[0]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_Meatbugflesh (C_Item)
{
	name 				=	"Owadzie miêso";

	mainflag 			=	ITEM_KAT_FOOD;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Meatbugflesh;

	visual 				=	"ItAt_Meatbugflesh.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"FOODHUGE";
	on_state[0]			=	Use_Meatbugflesh;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	NAME_Bonus_HP; COUNT[1] = 10;
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

	FUNC VOID Use_Meatbugflesh()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS, 10);
	};

/******************************************************************************************/
INSTANCE ItAt_SheepFur (C_Item)
{
	name 				=	"Owcza skóra";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_SheepFur;

	visual 				=	"ItAt_SheepFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_WolfFur (C_Item)
{
	name 				=	"Skóra wilka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_WolfFur;

	visual 				=	"ItAt_WolfFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_BugMandibles (C_Item)
{
	name 				=	"¯uwaczki polnej bestii";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_BugMandibles;

	visual 				=	"ItAt_BugMandibles.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_Claw (C_Item)
{
	name 				=	"Pazury";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Claw;

	visual 				=	"ItAt_Claw.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_LurkerClaw (C_Item)
{
	name 				=	"Pazur topielca";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_LurkerClaw;

	visual 				=	"ItAt_LurkerClaw.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE itmi_lobartteeth (C_Item)
{
	name 				=	"K³y bestii";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Teeth;

	visual 				=	"ItAt_Teeth.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

INSTANCE ItAt_Teeth (C_Item)
{
	name 				=	"K³y";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Teeth;

	visual 				=	"ItAt_Teeth.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_CrawlerMandibles (C_Item)
{
	name 				=	"¯uwaczki pe³zacza";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_CrawlerMandibles;

	visual 				=	"ItAt_CrawlerMandibles.3DS";
	material 			=	MAT_LEATHER;
	scemeName			=	"FOOD";
	on_state[0]			=	Use_Mandibles;
	
	description			= 	name;
	
	TEXT[0]				= 	"Mo¿na je otworzyæ w celu";
	TEXT[1]				= 	"wypicia zawartej w nich wydzieliny,";
	TEXT[2]				= 	"która pozwala zregenerowaæ manê";
	TEXT[3]				= 	"Efekt z czasem przemija.";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
FUNC VOID Use_Mandibles()
{
	if (Mandibles_Bonus <= 9)
	{
		Npc_ChangeAttribute	(self,	ATR_MANA, self.attribute[ATR_MANA_MAX] );
		
		Mandibles_Bonus = (Mandibles_Bonus +1);
	}
	else
	{
		PrintScreen		(PRINT_Mandibles, -1, YPOS_LEVELUP, FONT_ScreenSmall, 2);
	};
};

/******************************************************************************************/
INSTANCE ItAt_Wing (C_Item)
{
	name 				=	"Skrzyd³a";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Wing;
	
	visual 				=	"ItAt_Wing.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_Sting (C_Item)
{
	name 				=	"¯¹d³o";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_Sting;
	scemeName			=	"FOOD";
	
	on_state[0]			=	Use_Sting;
	
	visual 				=	"ItAt_Sting.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"Zawiera";
	TEXT[2]				= 	"truj¹c¹ wydzielinê";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
FUNC VOID Use_Sting()
{
	if (Knows_Bloodfly == TRUE)
	{
		if (Bloodfly_Bonus <= 10)
		{
			Npc_ChangeAttribute (self, ATR_HITPOINTS, self.attribute[ATR_HITPOINTS_MAX]);
			Print (PRINT_FullyHealed);
			
			Bloodfly_Bonus = (Bloodfly_Bonus+1);
		}
		else
		{
			Print (PRINT_Mandibles);
		};
	}
	else
	{
		Print (PRINT_Bloodfly);
		
		if (self.attribute[ATR_HITPOINTS] > 1) 
		{
			self.attribute[ATR_HITPOINTS] =  (self.attribute[ATR_HITPOINTS] -1);
		};
	};
};

/******************************************************************************************/

/******************************************************************************************/
INSTANCE ItAt_WargFur (C_Item)
{
	name 				=	"Skóra warga";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_WargFur;

	visual 				=	"ItAt_WargFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_Addon_KeilerFur (C_Item)
{
	name 				=	"Skóra dzika";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_KeilerFur;

	visual 				=	"ItAt_WargFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_DrgSnapperHorn (C_Item)
{
	name 				=	"Róg smoczego zêbacza";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_DrgSnapperHorn;

	visual 				=	"ItAt_DrgSnapperHorn.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_CrawlerPlate (C_Item)
{
	name 				=	"P³yty pancerza pe³zacza";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_CrawlerPlate;

	visual 				=	"ItAt_CrawlerPlate.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_ShadowFur (C_Item)
{
	name 				=	"Skóra cieniostwora";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ShadowFur;

	visual 				=	"ItAt_ShadowFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_SharkSkin (C_Item)
{
	name 				=	"Skóra b³otnego wê¿a";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_SharkSkin;

	visual 				=	"ItAt_SharkSkin.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_TrollFur (C_Item)
{
	name 				=	"Skóra trolla";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_TrollFur;

	visual 				=	"ItAt_TrollFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_TrollBlackFur (C_Item)
{
	name 				=	"Skóra czarnego trolla";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_TrollBlackFur;

	visual 				=	"ItAt_TrollFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
INSTANCE ItAt_TrollBlackFur_Tan (C_Item)
{
	name 				=	"Skóra czarnego trolla";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_TrollBlackFur;

	visual 				=	"ItAt_TrollFur.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_WaranFiretongue (C_Item)
{
	name 				=	"Jêzyk ognistego jaszczura";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_WaranFiretongue;

	visual 				=	"ItAt_WaranFiretongue.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_ShadowHorn (C_Item)
{
	name 				=	"Róg cieniostwora";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_ShadowHorn;

	visual 				=	"ItAt_ShadowHorn.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_SharkTeeth (C_Item)
{
	name 				=	"K³y b³otnego wê¿a";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_SharkTeeth;

	visual 				=	"ItAt_SharkTeeth.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_TrollTooth (C_Item)
{
	name 				=	"Kie³ trolla";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_TrollTooth;

	visual 				=	"ItAt_TrollTooth.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
	
	INV_ZBIAS				= INVCAM_ENTF_RING_STANDARD;
	
};
/******************************************************************************************/
INSTANCE ItAt_StoneGolemHeart (C_Item)
{
	name 				=	"Serce kamiennego golema";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;
	//spell				= 	SPL_WINDFIST;

	value 				=	Value_StoneGolemHeart;

	visual 				=	"ItAt_StoneGolemHeart.3DS";
	material 			=	MAT_STONE;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	""; 
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItAt_FireGolemHeart (C_Item)
{
	name 				=	"Serce ognistego golema";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;
	//spell				= 	SPL_FIREBALL;

	value 				=	Value_FireGolemHeart;

	visual 				=	"ItAt_FireGolemHeart.3DS";
	material 			=	MAT_STONE;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	""; 
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

/******************************************************************************************/
INSTANCE ItAt_IceGolemHeart (C_Item)
{
	name 				=	"Serce lodowego golema";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;
	//spell				= 	SPL_ICECUBE;

	value 				=	Value_IceGolemHeart;

	visual 				=	"ItAt_IceGolemHeart.3DS";
	material 			=	MAT_STONE;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_GoblinBone (C_Item)
{
	name 				=	"Koœæ goblina";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_GoblinBone;

	visual 				=	"ItAt_GoblinBone.3DS";
	material 			=	MAT_WOOD;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_SkeletonBone (C_Item)
{
	name 				=	"Koœæ szkieletu";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_SkeletonBone;

	visual 				=	"ItAt_SkeletonBone.3DS";
	material 			=	MAT_WOOD;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_DemonHeart (C_Item)
{
	name 				=	"Serce demona";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_DemonHeart;

	visual 				=	"ItAt_DemonHeart.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

//**************************************************************************
//					Drachentrophäen		
//**************************************************************************
INSTANCE ItAt_UndeadDragonSoulStone (C_Item)
{
	name 				=	"Kamieñ duszy smoka-o¿ywieñca";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	Value_UndeadDragonSoulStone;

	visual 				=	"ItAt_UndeadDragonSoulStone.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
	
	INV_ZBIAS				= INVCAM_ENTF_MISC_STANDARD;
	
};
/******************************************************************************************/
INSTANCE ItAt_IcedragonHeart (C_Item)
{
	name 				=	"Serce lodowego smoka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	Value_IcedragonHeart;

	visual 				=	"ItAt_IcedragonHeart.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_RockdragonHeart (C_Item)
{
	name 				=	"Serce kamiennego smoka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	Value_RockdragonHeart;

	visual 				=	"ItAt_RockdragonHeart.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_SwampdragonHeart (C_Item)
{
	name 				=	"Serce b³otnego smoka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION; 

	value 				=	Value_SwampdragonHeart;

	visual 				=	"ItAt_SwampdragonHeart.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_FiredragonHeart (C_Item)
{
	name 				=	"Serce ognistego smoka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	Value_FiredragonHeart;

	visual 				=	"ItAt_FiredragonHeart.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_DragonBlood (C_Item)
{
	name 				=	"Smocza krew";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI|ITEM_MISSION;

	value 				=	Value_DragonBlood;

	visual 				=	"ItAt_DragonBlood.3DS";
	material 			=	MAT_LEATHER;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
	
	INV_ZBIAS				= INVCAM_ENTF_MISC_STANDARD;
};
/******************************************************************************************/
INSTANCE ItAt_DragonScale (C_Item)
{
	name 				=	"Smocze ³uski";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MULTI;

	value 				=	Value_DragonScale;

	visual 				=	"ItAt_DragonScale.3DS";
	material 			=	MAT_STONE ;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	"";
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/******************************************************************************************/
INSTANCE ItAt_OrcHeart (C_Item)
{
	name 				=	"Serce orka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=		ITEM_MULTI|ITEM_MISSION;

	value 				=	30;

	visual 				=	"ItAt_FireGolemHeart.3DS";
	material 			=	MAT_STONE;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	""; 
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
/*###################################################*/
INSTANCE ItAt_DraconianHeart (C_Item)
{
	name 				=	"Serce jaszurocz³eka";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=		ITEM_MULTI|ITEM_MISSION;

	value 				=	30;

	visual 				=	"ItAt_FireGolemHeart.3DS";
	material 			=	MAT_STONE;

	description			= 	name;
	TEXT[0]				= 	"";
	TEXT[1]				= 	"";
	TEXT[2]				= 	""; 
	TEXT[3]				= 	"";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};
