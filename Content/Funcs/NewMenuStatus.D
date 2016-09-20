/**********************/
var string Dodge_Icon;
/*******Titles*********/
var int HitChance1h;
var int HitChance2h;
var int HitChanceBow;
var int HitChanceCrossBow;
/**********************/
var int HeroEDGE_Button; 
var int Print_HeroHeroEDGE;
var int Print_HeroEDGE;
/******Statistics******/
var int Level_Button; 
var int Print_HeroLevel;
var int Print_Level;
/**********************/
var int Exp_Button; 
var int Print_HeroExp;
var int Print_Exp;
/******Statistics******/
var int HeroLp_Button; 
var int Print_HeroHeroLp;
var int Print_HeroLp;
/******Statistics******/
var int HeroSTR_Button; 
var int Print_HeroHeroSTR;
var int Print_HeroSTR;
/*****Statistics******/
var int HeroDEX_Button; 
var int Print_HeroHeroDEX;
var int Print_HeroDEX;
/*****Statistics******/
var int HeroHP_Button; 
var int Print_HeroHeroHP;
var int Print_HeroHP;
/*****Statistics******/
var int HeroMP_Button; 
var int Print_HeroHeroMP;
var int Print_HeroMP;
/*****Statistics******/
var int HeroBLUNT_Button; 
var int Print_HeroHeroBLUNT;
var int Print_HeroBLUNT;
/*****Statistics******/
var int HeroPOINT_Button; 
var int Print_HeroHeroPOINT;
var int Print_HeroPOINT;
/*****Statistics******/
var int HeroFIRE_Button; 
var int Print_HeroHeroFIRE;
var int Print_HeroFIRE;
/*****Statistics******/
var int HeroMagic_Button; 
var int Print_HeroHeroMagic;
var int Print_HeroMagic;
/*****Statistics******/
const string TitlesFont = "FONT_OLD_20_WHITE_HI.tga";
const string YesOrNoFont = "FONT_OLD_15_WHITE_HI.tga";
var int Fightskills;
var int MagicSkills;
var int AlchemySkills;
var int SmithSkills;
var int SpecialSkills;
var int ThiefSkills;
var int HunterSkills;
var int HeroPrint;
var int Attributes_print;
var int Protection_print;
var int OtherSkillsPrint;
/**********************/
const int PDoY =6500; //Pozycja Y-Descriptiona
const int PPoY =PDoY+400; //Pozycja Y-Opisu
//1h-Weapons
var int Sword1_Button; 
var int Sword1_Description;
var int Sword1_Title;
/**********************/
var int Sword2_Button; 
var int Sword2_Description;
var int Sword2_Title;
/**********************/
var int Sword3_Button; 
var int Sword3_Description;
var int Sword3_Title;
//1h-Weapons
/**********************/
//2h-Weapons
var int Axe1_Button; 
var int Axe1_Description;
var int Axe1_Title;
/**********************/
var int Axe2_Button; 
var int Axe2_Description;
var int Axe2_Title;
/**********************/
var int Axe3_Button; 
var int Axe3_Description;
var int Axe3_Title;
var int Menu_New_Debbuger;
//2h-Weapons
//Bows
/**********************/
var int Bow_Button; 
var int Bow_Description;
var int Bow_Title;
/**********************/
var int Bow2_Button; 
var int Bow2_Description;
var int Bow2_Title;
/**********************/
var int Bow3_Button; 
var int Bow3_Description;
var int Bow3_Title;

//Bows
/**********************/
//CrossBows
var int CrossBow1_Button; 
var int CrossBow1_Description;
var int CrossBow1_Title;
/**********************/
var int CrossBow2_Button; 
var int CrossBow2_Description;
var int CrossBow2_Title;
/**********************/
var int CrossBow3_Button; 
var int CrossBow3_Description;
var int CrossBow3_Title;
//CrossBows
/*********************/
/*Shield*/
var int Shield_Button;
var int Shield_Title;
var int Shield_Description;
/*Shield*/
/*********************/
/*Duals*/
var int Duals_Button;
var int Duals_Title;
var int Duals_Description;
/*Duals*/
/********************/
/*Break*/
var int Break_Button;
var int Break_Title;
var int Break_Description;
/*Break*/
/********************/
/*PercCrossbow*/
var int PercCrossbow_Button;
var int PercCrossbow_Title;
var int PercCrossbow_Description;
/*PercCrossbow*/
/********************/
/*Staffs*/
var int MagicStaffs_Button; 
var int MagicStaffs_Description;
var int MagicStaffs_Title;
/*Staff*/
/*******************/
/*RuneMaker*/
var int RuneMake_Button; 
var int RuneMake_Description;
var int RuneMake_Title;
/*RuneMaker*/
/*******************/
/*MagicCircle*/
var int MagicCircle_Button; 
var int MagicCircle_Description;
var int MagicCircle_Title;
var int MagicCircle_Click;
/*MagicCircle*/
/*******************/
/*PotionHealth*/
var int Health_Button; 
var int Health_Description;
var int Health_Title;
/*PotionHealth*/
/*******************/
/*PotionPermHealth*/
var int HealthPerm_Button; 
var int HealthPerm_Description;
var int HealthPerm_Title;
/*PotionPermHealth*/
/*******************/
/*PotionMana*/
var int Mana_Button; 
var int Mana_Description;
var int Mana_Title;
/*PotionMana*/
/*******************/
/*PotionPermMana*/
var int ManaPerm_Button; 
var int ManaPerm_Description;
var int ManaPerm_Title;
/*PotionPermMana*/
/*******************/
/*Strenght*/
var int Str_Button; 
var int Str_Description;
var int Str_Title;
/*Strenght*/
/*******************/
/*Dexterity*/
var int Dex_Button; 
var int Dex_Description;
var int Dex_Title;
/*Dexterity*/
/*******************/
/*Minner*/
var int Minner_Button; 
var int Minner_Description;
var int Minner_Title;
/*Minner*/
/*******************/
/*Smith*/
var int Smith_Button; 
var int Smith_Description;
var int Smith_Title;
/*Smith*/
/******************/
/*Armors*/
var int Armored_Button; 
var int Armored_Description;
var int Armored_Title;
/*Armors*/
/******************/
/*PickLock*/
var int PickLock_Button; 
var int PickLock_Description;
var int PickLock_Title;
/*PickLock*/
/******************/
/*Sneak*/
var int Sneak_Button; 
var int Sneak_Description;
var int Sneak_Title;
/*Sneak*/
/******************/
/*PickPocket*/
var int PickPocket_Button; 
var int PickPocket_Description;
var int PickPocket_Title;
/*PickPocket*/
/******************/
/*Teeth*/
var int Teeth_Button; 
var int Teeth_Description;
var int Teeth_Title;
/*Teeth*/
/******************/
/*Claws*/
var int Claws_Button; 
var int Claws_Description;
var int Claws_Title;
/*Claws*/
/******************/
/*ShadowHorn*/
var int ShadowHorn_Button; 
var int ShadowHorn_Description;
var int ShadowHorn_Title;
/*ShadowHorn*/
/******************/
/*Sting*/
var int Sting_Button; 
var int Sting_Description;
var int Sting_Title;
/*Sting*/
/******************/
/*CrawlerPlate*/
/*******************/
var int CrawlerPlate_Button; 
var int CrawlerPlate_Description;
var int CrawlerPlate_Title;
/*******************/
/*CrawlerPlate*/
/******************/
/*WolfFur*/
var int Furs_Button; 
var int Furs_Description;
var int Furs_Title;
/*WolfFur*/
/******************/
/*LurkerSkin*/
var int LurkerSkins_Button; 
var int LurkerSkins_Description;
var int LurkerSkins_Title;
/*LurkerSkin*/
/******************/
/*CrawlerPlate*/

/*CrawlerPlate*/
/******************/
/*FireWaranLean*/
var int FireWaranLean_Button; 
var int FireWaranLean_Description;
var int FireWaranLean_Title;
/*FireWaranLean*/
/******************/
/*Herats*/

/*Herats*/
/******************/
var int FastLearn_Button; 
var int FastLearn_Description;
var int FastLearn_Title;
/*******************/
var int Barter_Button; 
var int Barter_Description;
var int Barter_Title;
/*******************/
var int OrcWeapons_Button; 
var int OrcWeapons_Description;
var int OrcWeapons_Title;
/*******************/
var int HealthRegenation_Button; 
var int HealthRegenation_Description;
var int HealthRegenation_Title;
/*******************/
var int ManaRegenation_Button; 
var int ManaRegenation_Description;
var int ManaRegenation_Title;
/******************/
/*******************/
var int View_Menu_Icons; 

//+650
func void Open_Menu()
{

if(!Menu_New_Debbuger)
{
var int x; var int y; x= Print_Screen[PS_X]; y=Print_Screen[PS_Y];
/*
View_Menu_Icons = View_CreateCenterPxl(x/2,y/2,x,y);
View_SetTexture(View_Menu_Icons,"Menu_Icons_Back.tga");
View_Open(View_Menu_Icons);
*/
RedebugMenuHit();
Cursor_Show();
ViewPtr_Top(MEM_Game.array_view[0]);
Menu_New_Debbuger=true;
/*Swords*/
Sword1_Button =Button_Create(5500,800,400,500,"Ico_1h1Yes.tga",Enter_Sword1,Leave_Sword1,Button_null);
Button_Show(Sword1_Button);
Button_Activate(Sword1_Button);
Button_GetView(Sword1_Button);


Sword2_Button =Button_Create(5950,800,400,500,Ico_1hst2,Enter_Sword2,Leave_Sword2,Button_null);
Button_Show(Sword2_Button);
Button_Activate(Sword2_Button);
Button_GetView(Sword2_Button);


Sword3_Button =Button_Create(6400,800,400,500,Ico_1hst3,Enter_Sword3,Leave_Sword3,Button_null);
Button_Show(Sword3_Button);
Button_Activate(Sword3_Button);
Button_GetView(Sword3_Button);
/*Swords*/

/*Axes*/
Axe1_Button =Button_Create(5500,1350,400,500,"AxeSt1yes.tga",Enter_Axe1,Leave_Axe1,Button_null);
Button_Show(Axe1_Button);
Button_Activate(Axe1_Button);
Button_GetView(Axe1_Button);


Axe2_Button =Button_Create(5950,1350,400,500,Ico_2hst2,Enter_Axe2,Leave_Axe2,Button_null);
Button_Show(Axe2_Button);
Button_Activate(Axe2_Button);
Button_GetView(Axe2_Button);


Axe3_Button =Button_Create(6400,1350,400,500,Ico_2hst3,Enter_Axe3,Leave_Axe3,Button_null);
Button_Show(Axe3_Button);
Button_Activate(Axe3_Button);
Button_GetView(Axe3_Button);
/*Axes*/

/*Bows*/
Bow_Button =Button_Create(5500,1900,400,500,"Ico_BowSt1yes.tga",Enter_Bow,Leave_Bow,Button_null);
Button_Show(Bow_Button);
Button_Activate(Bow_Button);
Button_GetView(Bow_Button);


Bow2_Button =Button_Create(5950,1900,400,500,Ico_Bowst2,Enter_Bow2,Leave_Bow2,Button_null);
Button_Show(Bow2_Button);
Button_Activate(Bow2_Button);
Button_GetView(Bow2_Button);


Bow3_Button =Button_Create(6400,1900,400,500,Ico_Bowst3,Enter_Bow3,Leave_Bow3,Button_null);
Button_Show(Bow3_Button);
Button_Activate(Bow3_Button);
Button_GetView(Bow3_Button);
/*Bows*/

/*CrossBows*/
CrossBow1_Button =Button_Create(5500,2450,400,500,"Ico_CBst1yes.tga",Enter_CrossBow1,Leave_CrossBow1,Button_null);
Button_Show(CrossBow1_Button);
Button_Activate(CrossBow1_Button);
Button_GetView(CrossBow1_Button);


CrossBow2_Button =Button_Create(5950,2450,400,500,Ico_CrossBowSt2,Enter_CrossBow2,Leave_CrossBow2,Button_null);
Button_Show(CrossBow2_Button);
Button_Activate(CrossBow2_Button);
Button_GetView(CrossBow2_Button);


CrossBow3_Button =Button_Create(6400,2450,400,500,Ico_CrossBowSt3,Enter_CrossBow3,Leave_CrossBow3,Button_null);
Button_Show(CrossBow3_Button);
Button_Activate(CrossBow3_Button);
Button_GetView(CrossBow3_Button);
/*CrossBows*/

/*Shield*/
Shield_Button =Button_Create(7250,800,400,500,Ico_Shields,Enter_Shield_Button,Leave_Shield_Button,Button_null);
Button_Show(Shield_Button);
Button_Activate(Shield_Button);
Button_GetView(Shield_Button);
/*Shield*/

/*Duals*/
Duals_Button =Button_Create(7250,1350,400,500,Ico_Duals,Enter_Duals_Button,Leave_Duals_Button,Button_null);
Button_Show(Duals_Button);
Button_Activate(Duals_Button);
Button_GetView(Duals_Button);
/*Duals*/

/*Break*/
Break_Button =Button_Create(7250,1900,400,500,Ico_Break,Enter_Break_Button,Leave_Break_Button,Button_null);
Button_Show(Break_Button);
Button_Activate(Break_Button);
Button_GetView(Break_Button);
/*Break*/

/*PercCrossbow*/
PercCrossbow_Button =Button_Create(7250,2450,400,500,Ico_Penetration,Enter_PercCrossbow_Button,Leave_PercCrossbow_Button,Button_null);
Button_Show(PercCrossbow_Button);
Button_Activate(PercCrossbow_Button);
Button_GetView(PercCrossbow_Button);
/*PercCrossbow*/

/*MagicStaff*/
MagicStaffs_Button =Button_Create(3500,800,400,500,Ico_MagicStaffs,Enter_MagicStaffs,Leave_MagicStaffs,Button_null);
Button_Show(MagicStaffs_Button);
Button_Activate(MagicStaffs_Button);
Button_GetView(MagicStaffs_Button);
/*MagicStaff*/

/*RuneMaker*/
RuneMake_Button =Button_Create(3050,800,400,500,Ico_RuneMaker,Enter_RuneMake,Leave_RuneMake,Button_null);
Button_Show(RuneMake_Button);
Button_Activate(RuneMake_Button);
Button_GetView(RuneMake_Button);
/*RuneMaker*/

/*MagicCircle*/
MagicCircle_Button =Button_Create(2600,800,400,500,Ico_MagicCircle,Enter_MagicCircle,Leave_MagicCircle,Click_MagicCircle);
Button_Show(MagicCircle_Button);
Button_Activate(MagicCircle_Button);
Button_GetView(MagicCircle_Button);
/*MagicCircle*/

/*PotionHealth*/
Health_Button =Button_Create(2600,1900,400,500,Ico_Health,Enter_Health,Leave_Health,Button_Null);
Button_Show(Health_Button);
Button_Activate(Health_Button);
Button_GetView(Health_Button);
/*PotionHealth*/

/*PotionPermHealth*/
HealthPerm_Button =Button_Create(2600,2450,400,500,Ico_HealthPerm,Enter_HealthPerm,Leave_HealthPerm,Button_Null);
Button_Show(HealthPerm_Button);
Button_Activate(HealthPerm_Button);
Button_GetView(HealthPerm_Button);
/*PotionPermHealth*/

/*PotionMana*/
Mana_Button =Button_Create(3050,1900,400,500,Ico_Mana,Enter_Mana,Leave_Mana,Button_Null);
Button_Show(Mana_Button);
Button_Activate(Mana_Button);
Button_GetView(Mana_Button);
/*PotionMana*/

/*PotionPermMANA*/
ManaPerm_Button =Button_Create(3050,2450,400,500,Ico_ManaPerm,Enter_ManaPerm,Leave_ManaPerm,Button_Null);
Button_Show(ManaPerm_Button);
Button_Activate(ManaPerm_Button);
Button_GetView(ManaPerm_Button);
/*PotionPermMANA*/

/*Dexterity*/
Dex_Button =Button_Create(3500,1900,400,500,Ico_PermDex,Enter_Dex,Leave_Dex,Button_Null);
Button_Show(Dex_Button);
Button_Activate(Dex_Button);
Button_GetView(Dex_Button);
/*Dexterity*/

/*Strenght*/
Str_Button =Button_Create(3500,2450,400,500,Ico_PermSTR,Enter_Str,Leave_Str,Button_Null);
Button_Show(Str_Button);
Button_Activate(Str_Button);
Button_GetView(Str_Button);
/*Strenght*/

/*Minner*/
Minner_Button =Button_Create(2600,3550,400,500,Ico_Minner,Enter_Minner,Leave_Minner,Button_Null);
Button_Show(Minner_Button);
Button_Activate(Minner_Button);
Button_GetView(Minner_Button);
/*Minner*/

/*Smith*/
Smith_Button =Button_Create(3050,3550,400,500,Ico_Smith,Enter_Smith,Leave_Smith,Button_Null);
Button_Show(Smith_Button);
Button_Activate(Smith_Button);
Button_GetView(Smith_Button);
/*Smith*/

/*Armors*/
Armored_Button =Button_Create(3500,3550,400,500,Ico_ArmorMaking,Enter_Armored,Leave_Armored,Button_Null);
Button_Show(Armored_Button);
Button_Activate(Armored_Button);
Button_GetView(Armored_Button);
/*Armors*/

/*PickLock*/
PickLock_Button =Button_Create(2600,4650,400,500,Ico_PickLock,Enter_PickLock,Leave_PickLock,Button_Null);
Button_Show(PickLock_Button);
Button_Activate(PickLock_Button);
Button_GetView(PickLock_Button);
/*PickLock*/

/*Sneak*/
Sneak_Button =Button_Create(3500,4650,400,500,Ico_Sneak,Enter_Sneak,Leave_Sneak,Button_Null);
Button_Show(Sneak_Button);
Button_Activate(Sneak_Button);
Button_GetView(Sneak_Button);
/*Sneak*/

/*PickPocket*/
PickPocket_Button =Button_Create(3050,4650,400,500,Ico_PickPocket,Enter_PickPocket,Leave_PickPocket,Button_Null);
Button_Show(PickPocket_Button);
Button_Activate(PickPocket_Button);
Button_GetView(PickPocket_Button);
/*PickPocket*/

/*Teeth*/
Teeth_Button =Button_Create(5500,3550,400,500,Ico_Teeth,Enter_Teeth,Leave_Teeth,Button_Null);
Button_Show(Teeth_Button);
Button_Activate(Teeth_Button);
Button_GetView(Teeth_Button);
/*Teeth*/

/*Claws*/
Claws_Button =Button_Create(5950,3550,400,500,Ico_Claws,Enter_Claws,Leave_Claws,Button_Null);
Button_Show(Claws_Button);
Button_Activate(Claws_Button);
Button_GetView(Claws_Button);
/*Claws*/

/*ShadowHorn*/
ShadowHorn_Button =Button_Create(6400,3550,400,500,Ico_ShadowHorn,Enter_ShadowHorn,Leave_ShadowHorn,Button_Null);
Button_Show(ShadowHorn_Button);
Button_Activate(ShadowHorn_Button);
Button_GetView(ShadowHorn_Button);
/*ShadowHorn*/

/*Sting*/
Sting_Button =Button_Create(6850,3550,400,500,Ico_BloodFlySting,Enter_Sting,Leave_Sting,Button_Null);
Button_Show(Sting_Button);
Button_Activate(Sting_Button);
Button_GetView(Sting_Button);
/*Sting*/

/*CrawlerPlate*/
CrawlerPlate_Button =Button_Create(6400,4100,400,500,Ico_CrawlerPlate,Enter_CrawlerPlate,Leave_CrawlerPlate,Button_Null);
Button_Show(CrawlerPlate_Button);
Button_Activate(CrawlerPlate_Button);
/*CrawlerPlate*/

/*WolfFur*/
Furs_Button =Button_Create(5500,4100,400,500,Ico_Furs,Enter_Furs,Leave_Furs,Button_Null);
Button_Show(Furs_Button);
Button_Activate(Furs_Button);
Button_GetView(Furs_Button);

/*WolfFur*/

/*LurkerSkin*/
LurkerSkins_Button =Button_Create(5950,4100,400,500,Ico_LurkerSkin,Enter_LurkerSkins,Leave_LurkerSkins,Button_Null);
Button_Show(LurkerSkins_Button);
Button_Activate(LurkerSkins_Button);
Button_GetView(LurkerSkins_Button);
/*LurkerSkin*/

/*CrawlerPlate*/

/*CrawlerPlate*/

/*FireWaranLean*/
FireWaranLean_Button =Button_Create(6850,4100,400,500,Ico_FireLan,Enter_FireWaranLean,Leave_FireWaranLean,Button_Null);
Button_Show(FireWaranLean_Button);
Button_Activate(FireWaranLean_Button);
Button_GetView(FireWaranLean_Button);
/*FireWaranLean*/

/*Herats*/

/*Herats*/

/*FastLearn*/
FastLearn_Button =Button_Create(5500,5200,400,500,Ico_FastLearn,Enter_FastLearn,Leave_FastLearn,Button_Null);
Button_Show(FastLearn_Button);
Button_Activate(FastLearn_Button);
/*FastLearn*/

/*Barter*/
Barter_Button =Button_Create(5950,5200,400,500,Ico_Barter,Enter_Barter,Leave_Barter,Button_Null);
Button_Show(Barter_Button);
Button_Activate(Barter_Button);
/*Barter*/

/*OrcWeapons*/
OrcWeapons_Button =Button_Create(6400,5200,400,500,Ico_OrcWeapons,Enter_OrcWeapons,Leave_OrcWeapons,Button_Null);
Button_Show(OrcWeapons_Button);
Button_Activate(OrcWeapons_Button);
/*OrcWeapons*/

/*HealthRegenation*/
HealthRegenation_Button =Button_Create(6850,5200,400,500,Ico_HealthRegenation,Enter_HealthRegenation,Leave_HealthRegenation,Button_Null);
Button_Show(HealthRegenation_Button);
Button_Activate(HealthRegenation_Button);
/*HealthRegenation*/

/*ManaRegenation*/
ManaRegenation_Button =Button_Create(7250,5200,400,500,Ico_ManaRegenation,Enter_ManaRegenation,Leave_ManaRegenation,Button_Null);
Button_Show(ManaRegenation_Button);
Button_Activate(ManaRegenation_Button);
/*ManaRegenation*/
/*Dodge*/

/*Dodge*/
/********\
**Prints**
\********/
Fightskills=Print_Ext(5590,400,"Umiejêtnoœci bojowe",TitlesFont,RGBA(0,170,0,255),-1);
MagicSkills=Print_Ext(2300,400,"Umiejêtnoœci magiczne",TitlesFont,RGBA(0,170,0,255),-1);
AlchemySkills=Print_Ext(2850,1500,"Alchemia",TitlesFont,RGBA(0,170,0,255),-1);
SmithSkills=Print_Ext(2825,3100,"Kowalstwo",TitlesFont,RGBA(0,170,0,255),-1);
ThiefSkills=Print_Ext(2200,4200,"Umiejêtnoœci z³odziejskie",TitlesFont,RGBA(0,170,0,255),-1);
HunterSkills=Print_Ext(5560,3100,"Umiejêtnoœci myœliwskie",TitlesFont,RGBA(0,170,0,255),-1);
HeroPrint=Print_Ext(100,300,"Postaæ",PF_Font,RGBA(255,255,255,255),-1);
Attributes_print=Print_Ext(100,2050,"Atrybuty",PF_Font,RGBA(255,255,255,255),-1);
Protection_print=Print_Ext(100,4450,"Ochrona",PF_Font,RGBA(255,255,255,255),-1);
OtherSkillsPrint=Print_Ext(5560,4700,"Umiejêtnoœci dodatkowe",TitlesFont,RGBA(0,170,0,255),-1);



//var int SpecialSkills;
/*****Statistics******/
Level_Button =Button_Create(50,500,300,375,"Ico_HeroLevel.tga",Button_Null,Button_Null,Button_Null);
Button_Show(Level_Button);
Button_Activate(Level_Button);

Print_HeroLevel=Print_Ext(400,600,"Poziom",PF_Font,RGBA(255,255,255,255),-1);
Print_Level=Print_Ext(1150,600,IntToString(hero.level),PF_Font,RGBA(255,255,255,255),-1);
/*****Statistics******/
Exp_Button =Button_Create(50,1000,300,375,"Ico_HeroExp.tga",Button_Null,Button_Null,Button_Null);
Button_Show(Exp_Button);
Button_Activate(Exp_Button);
/****HitChance******/
HitChance1h=Print_Ext(6850,800,ConcatStrings(IntToString(hero.hitchance[1]),"%"),TitlesFont,RGBA(0,170,0,255),-1);
HitChance2h=Print_Ext(6850,1350,ConcatStrings(IntToString(hero.hitchance[2]),"%"),TitlesFont,RGBA(0,170,0,255),-1);
HitChanceBow=Print_Ext(6850,1900,ConcatStrings(IntToString(hero.hitchance[3]),"%"),TitlesFont,RGBA(0,170,0,255),-1);
HitChanceCrossBow=Print_Ext(6850,2450,ConcatStrings(IntToString(hero.hitchance[4]),"%"),TitlesFont,RGBA(0,170,0,255),-1);
/****HitChance******/
Print_HeroExp=Print_Ext(400,1100,"Doœwiadczenie:",PF_Font,RGBA(255,255,255,255),-1);
var string XP;
XP=ConcatStrings(IntToString(hero.exp),"/");
XP=ConcatStrings(XP,IntToString(hero.exp_next));
Print_Exp=Print_Ext(1250,1100,XP,PF_Font,RGBA(255,255,255,255),-1);
/*****Statistics******/
HeroLp_Button =Button_Create(50,1500,300,375,"Ico_HeroLP.tga",Button_Null,Button_Null,Button_Null);
Button_Show(HeroLp_Button);
Button_Activate(HeroLp_Button);

Print_HeroHeroLp=Print_Ext(400,1600,"Punkty nauki",PF_Font,RGBA(255,255,255,255),-1);
Print_HeroLp=Print_Ext(1150,1600,IntToString(hero.lp),PF_Font,RGBA(255,255,255,255),-1);
/*****Statistics******/
HeroSTR_Button =Button_Create(50,2600-200,300,375,"Ico_HeroSTR.tga",Button_Null,Button_Null,Button_Null);
Button_Show(HeroSTR_Button);
Button_Activate(HeroSTR_Button);
//+400
Print_HeroHeroSTR=Print_Ext(400,2700-200,"Si³a ",PF_Font,RGBA(255,255,255,255),-1);
Print_HeroSTR=Print_Ext(1150,2700-200,IntToString(hero.attribute[ATR_STRENGTH]),PF_Font,RGBA(255,255,255,255),-1);
/*****Statistics******/
HeroDEX_Button =Button_Create(50,3100-200,300,375,"Ico_HeroDEX.tga",Button_Null,Button_Null,Button_Null);
Button_Show(HeroDEX_Button);
Button_Activate(HeroDEX_Button);
//+400
Print_HeroHeroDEX=Print_Ext(400,3200-200,"Zrêcznoœæ ",PF_Font,RGBA(255,255,255,255),-1);
Print_HeroDEX=Print_Ext(1150,3200-200,IntToString(hero.attribute[ATR_DEXTERITY]),PF_Font,RGBA(255,255,255,255),-1);
/*****Statistics******/
HeroHP_Button =Button_Create(50,3600-200,300,375,"Ico_HeroHP.tga",Button_Null,Button_Null,Button_Null);
Button_Show(HeroHP_Button);
Button_Activate(HeroHP_Button);
//+400
var string HeroHp;
HeroHP=ConcatStrings(IntToString(hero.attribute[ATR_HITPOINTS]),"/");
HeroHP=ConcatStrings(HeroHP,IntToString(hero.attribute[ATR_HITPOINTS_MAX]));

Print_HeroHeroHP=Print_Ext(400,3700-200,"¯ycie",PF_Font,RGBA(255,255,255,255),-1);
Print_HeroHP=Print_Ext(900,3700-200,HeroHP,PF_Font,RGBA(255,255,255,255),-1);
/*****Statistics******/
HeroMP_Button =Button_Create(50,4100-200,300,375,"Ico_HeroMana.tga",Button_Null,Button_Null,Button_Null);
Button_Show(HeroMP_Button);
Button_Activate(HeroMP_Button);
//+400
var string HeroMP;
HeroMP=ConcatStrings(IntToString(hero.attribute[ATR_MANA]),"/");
HeroMP=ConcatStrings(HeroMP,IntToString(hero.attribute[ATR_MANA_MAX]));

Print_HeroHeroMP=Print_Ext(400,4200-200,"Mana",PF_Font,RGBA(255,255,255,255),-1);
Print_HeroMP=Print_Ext(900,4200-200,HeroMP,PF_Font,RGBA(255,255,255,255),-1);
/*****Statistics******/
HeroEDGE_Button =Button_Create(50,4900,300,375,"Ico_HeroEdge.tga",Button_Null,Button_Null,Button_Null);
Button_Show(HeroEDGE_Button);
Button_Activate(HeroEDGE_Button);

Print_HeroEDGE=Print_Ext(550,5000,"Ostrza",PF_Font,RGBA(255,255,255,255),-1);
Print_HeroHeroEDGE=Print_Ext(1000,5000,IntToString(hero.protection[PROT_EDGE]),PF_Font,RGBA(255,255,255,255),-1);
/*****Statistics******/
HeroBLUNT_Button =Button_Create(50,5400,300,375,"Ico_HeroBLUNT.tga",Button_Null,Button_Null,Button_Null);
Button_Show(HeroBLUNT_Button);
Button_Activate(HeroBLUNT_Button);

Print_HeroHeroBLUNT=Print_Ext(550,5500,"Obuchy",PF_Font,RGBA(255,255,255,255),-1);
Print_HeroBLUNT=Print_Ext(1000,5500,IntToString(hero.protection[PROT_BLUNT]),PF_Font,RGBA(255,255,255,255),-1);
/*****Statistics******/
HeroPOINT_Button =Button_Create(50,5900,300,375,"Ico_HeroPOINT.tga",Button_Null,Button_Null,Button_Null);
Button_Show(HeroPOINT_Button);
Button_Activate(HeroPOINT_Button);

Print_HeroHeroPOINT=Print_Ext(550,6000,"Strza³y",PF_Font,RGBA(255,255,255,255),-1);
Print_HeroPOINT=Print_Ext(1000,6000,IntToString(hero.protection[PROT_POINT]),PF_Font,RGBA(255,255,255,255),-1);
/*****Statistics******/
HeroFIRE_Button =Button_Create(50,6400,300,375,"Ico_HeroFIRE.tga",Button_Null,Button_Null,Button_Null);
Button_Show(HeroFIRE_Button);
Button_Activate(HeroFIRE_Button);

Print_HeroHeroFIRE=Print_Ext(550,6500,"Ogieñ",PF_Font,RGBA(255,255,255,255),-1);
Print_HeroFIRE=Print_Ext(1000,6500,IntToString(hero.protection[PROT_FIRE]),PF_Font,RGBA(255,255,255,255),-1);
/*****Statistics******/
HeroMagic_Button =Button_Create(50,6900,300,375,"Ico_HeroMagic.tga",Button_Null,Button_Null,Button_Null);
Button_Show(HeroMagic_Button);
Button_Activate(HeroMagic_Button);

Print_HeroHeroMagic=Print_Ext(550,7000,"Magia",PF_Font,RGBA(255,255,255,255),-1);
Print_HeroMagic=Print_Ext(1000,7000,IntToString(hero.protection[PROT_Magic]),PF_Font,RGBA(255,255,255,255),-1);
/*****Statistics******/
	};
};
/*One Hand Swords */
func void Enter_Sword1()
{
Sword1_Title=Print_Ext(-1,PDoY,"Walka mieczem",TitlesFont,RGBA(255,204,0,255),-1);
Sword1_Description = Print_Ext(-1,PPoY,"Bohater zna podstawy walki broni¹ !",PF_Font,RGBA(255,255,255,255),-1);

};

func void Leave_Sword1()
{
Print_DeleteText(Sword1_Description);
Print_DeleteText(Sword1_Title);
};


func void Enter_Sword2()
{
Sword2_Title=Print_Ext(-1,PDoY,"Lepsza walka mieczem",TitlesFont,RGBA(255,204,0,255),-1);
Sword2_Description = Print_Ext(-1,PPoY,"Bohater zwinniej w³ada mieczem !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_Sword2()
{
Print_DeleteText(Sword2_Description);
Print_DeleteText(Sword2_Title);
};


func void Enter_Sword3()
{
Sword3_Title=Print_Ext(-1,PDoY,"Mistrzowska walka mieczem",TitlesFont,RGBA(255,204,0,255),-1);
Sword3_Description = Print_Ext(-1,PPoY,"Bohater potrafi walczyæ po mistrzowsku jednorêcznym orê¿em !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_Sword3()
{
Print_DeleteText(Sword3_Description);
Print_DeleteText(Sword3_Title);
};
/*One Hand Swords */
	 /*Axes*/
func void Enter_Axe1()
{
Axe1_Title=Print_Ext(-1,PDoY,"Du¿y orê¿ I",TitlesFont,RGBA(255,204,0,255),-1);
Axe1_Description = Print_Ext(-1,PPoY,"Bohater zna podstawy walki broni¹ dwurêczn¹ !",PF_Font,RGBA(255,255,255,255),-1);

};

func void Leave_Axe1()
{
Print_DeleteText(Axe1_Description);
Print_DeleteText(Axe1_Title);

};


func void Enter_Axe2()
{
Axe2_Title=Print_Ext(-1,PDoY,"Du¿y orê¿ II",TitlesFont,RGBA(255,204,0,255),-1);
Axe2_Description = Print_Ext(-1,PPoY,"Bohater potrafi lepiej walczyæ ciê¿kimi broniami !",PF_Font,RGBA(255,255,255,255),-1);

};

func void Leave_Axe2()
{
Print_DeleteText(Axe2_Description);
Print_DeleteText(Axe2_Title);
};


func void Enter_Axe3()
{
Axe3_Title=Print_Ext(-1,PDoY,"Du¿y orê¿ III",TitlesFont,RGBA(255,204,0,255),-1);
Axe3_Description = Print_Ext(-1,PPoY,"Bohater potrafi po mistrzowsku walczyæ ciê¿kim orê¿em !",PF_Font,RGBA(255,255,255,255),-1);

};

func void Leave_Axe3()
{
Print_DeleteText(Axe3_Description);
Print_DeleteText(Axe3_Title);
};
/*Axes*/

/*Bows*/
func void Enter_Bow()
{
Bow_Title=Print_Ext(3900,PDoY,"£uk",TitlesFont,RGBA(255,204,0,255),-1);
Bow_Description = Print_Ext(-1,PPoY,"Bohater potrafi u¿ywaæ ³uków !",PF_Font,RGBA(255,255,255,255),-1);

};

func void Leave_Bow()
{
Print_DeleteText(Bow_Description);
Print_DeleteText(Bow_Title);

};


func void Enter_Bow2()
{
Bow2_Title=Print_Ext(-1,PDoY,"£ucznik",TitlesFont,RGBA(255,204,0,255),-1);
Bow2_Description = Print_Ext(-1,PPoY,"Bohater potrafi lepiej u¿ywaæ ³uków !",PF_Font,RGBA(255,255,255,255),-1);

};

func void Leave_Bow2()
{
Print_DeleteText(Bow2_Description);
Print_DeleteText(Bow2_Title);
};


func void Enter_Bow3()
{
Bow3_Title=Print_Ext(-1,PDoY,"Mistrz ³ucznictwa",TitlesFont,RGBA(255,204,0,255),-1);
Bow3_Description = Print_Ext(-1,PPoY,"Bohater jest mistrzem ³ucznictwa !",PF_Font,RGBA(255,255,255,255),-1);

};

func void Leave_Bow3()
{
Print_DeleteText(Bow3_Description);
Print_DeleteText(Bow3_Title);
};
/*Bows*/

/*CrossBows*/
func void Enter_CrossBow1()
{
CrossBow1_Title=Print_Ext(-1,PDoY,"Kusze bojowe",TitlesFont,RGBA(255,204,0,255),-1);
CrossBow1_Description = Print_Ext(-1,PPoY,"Bohater potrafi u¿ywaæ kuszy !",PF_Font,RGBA(255,255,255,255),-1);

};

func void Leave_CrossBow1()
{
Print_DeleteText(CrossBow1_Description);
Print_DeleteText(CrossBow1_Title);
};


func void Enter_CrossBow2()
{
CrossBow2_Title=Print_Ext(-1,PDoY,"Kusznik",TitlesFont,RGBA(255,204,0,255),-1);
CrossBow2_Description = Print_Ext(-1,PPoY,"Bohater lepiej u¿ywa bojowych kusz !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_CrossBow2()
{
Print_DeleteText(CrossBow2_Description);
Print_DeleteText(CrossBow2_Title);
};


func void Enter_CrossBow3()
{
CrossBow3_Title=Print_Ext(-1,PDoY,"Mistrz strzelectwa",TitlesFont,RGBA(255,204,0,255),-1);
CrossBow3_Description = Print_Ext(-1,PPoY,"Bohater po mistrzowsku u¿ywa kusz bojowych !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_CrossBow3()
{
Print_DeleteText(CrossBow3_Description);
Print_DeleteText(CrossBow3_Title);
};
/*CrossBows*/

/*Shield*/
func void Enter_Shield_Button()
{
Shield_Title=Print_Ext(-1,PDoY,"Walka tarcz¹",TitlesFont,RGBA(255,204,0,255),-1);
Shield_Description = Print_Ext(-1,PPoY,"Bohater potrafi u¿ywaæ w walce tarcz !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_Shield_Button()
{
Print_DeleteText(Shield_Description);
Print_DeleteText(Shield_Title);
};
/*Shield*/

/*Duals*/
func void Enter_Duals_Button()
{
Duals_Title=Print_Ext(-1,PDoY,"Walka dwoma mieczami",TitlesFont,RGBA(255,204,0,255),-1);
Duals_Description = Print_Ext(-1,PPoY,"Bohater potrafi walczyæ dwoma mieczami !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_Duals_Button()
{
Print_DeleteText(Duals_Description);
Print_DeleteText(Duals_Title);

};
/*Duals*/

/*Break*/
func void Enter_Break_Button()
{
Break_Title=Print_Ext(-1,PDoY,"Rozbicie",TitlesFont,RGBA(255,204,0,255),-1);
Break_Description = Print_Ext(-1,PPoY,"Bohater potrafi za pomoc¹ ³uku przebiæ nawet najgrubszy pancerz !",PF_Font,RGBA(255,255,255,255),-1);

};

func void Leave_Break_Button()
{
Print_DeleteText(Break_Description);
Print_DeleteText(Break_Title);

};
/*Break*/

/*PercCrossbow*/
func void Enter_PercCrossbow_Button()
{
PercCrossbow_Title=Print_Ext(-1,PDoY,"Penetracja",TitlesFont,RGBA(255,204,0,255),-1);
PercCrossbow_Description = Print_Ext(-1,PPoY,"Bohater nauczy³ siê wykorzystywaæ si³ê gdy u¿ywa kuszy !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_PercCrossbow_Button()
{
Print_DeleteText(PercCrossbow_Description);
Print_DeleteText(PercCrossbow_Title);
};
/*PercCrossbow*/

/*MagicStaff*/
func void Enter_MagicStaffs()
{
MagicStaffs_Title=Print_Ext(-1,PDoY,"Kostury Magiczne",TitlesFont,RGBA(255,204,0,255),-1);
MagicStaffs_Description = Print_Ext(-1,PPoY,"Bohater potrafi wyzwalaæ moce kosturów !",PF_Font,RGBA(255,255,255,255),-1);
};
/*MagicCircle*/
func void Enter_MagicCircle()
{
MagicCircle_Title=Print_Ext(-1,PDoY,"Magia runiczna",TitlesFont,RGBA(255,204,0,255),-1);
MagicCircle_Description = Print_Ext(-1,PPoY,"Bohater potrafi u¿ywaæ run w walce !",PF_Font,RGBA(255,255,255,255),-1);
MagicCircle_Click	= Print_Ext(-1,PPoY+400,"(Kliknij, aby zobaczyæ jak¹ twój bohater posiada wiedzê.)",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_MagicCircle()
{
Print_DeleteText(MagicCircle_Description);
Print_DeleteText(MagicCircle_Title);
Print_DeleteText(MagicCircle_Click);
};

func void Click_MagicCircle()
{
if(CircleMenuStatus<1)
{
Prints_Ext("Nie znasz nawet podstaw magii runicznej !",RGBA(180,0,0,255));
}
else
{
var string msg;
msg = ConcatStrings ("Znasz ",	IntToString(CircleMenuStatus));//CircleMenuStatus- trza to dodaæ do t_ultra i B_teachMagicCircle
msg = ConcatStrings (msg," kr¹g magii!");
Prints_Ext(msg,RGBA(0,180,0,255));

	};
};
/*MagicCircle*/
func void Leave_MagicStaffs()
{
Print_DeleteText(MagicStaffs_Description);
Print_DeleteText(MagicStaffs_Title);
};
/*MagicStaff*/

/*RuneMaker*/
func void Enter_RuneMake()
{
RuneMake_Title=Print_Ext(-1,PDoY,"Tworzenie run",TitlesFont,RGBA(255,204,0,255),-1);
RuneMake_Description = Print_Ext(-1,PPoY,"Bohater potrafi tworzyæ runy !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_RuneMake()
{
Print_DeleteText(RuneMake_Description);
Print_DeleteText(RuneMake_Title);

};
/*RuneMaker*/

/*PotionHealth*/
func void Enter_Health()
{
Health_Title=Print_Ext(-1,PDoY,"Eliksiry lecznicze",TitlesFont,RGBA(255,204,0,255),-1);
Health_Description = Print_Ext(-1,PPoY,"Bohater potrafi uwa¿yæ eliksiry lecznicze !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_Health()
{
Print_DeleteText(Health_Description);
Print_DeleteText(Health_Title);
};
/*PotionHealth*/

/*PotionPermHealth*/

func void Enter_HealthPerm()
{
HealthPerm_Title=Print_Ext(-1,PDoY,"Trwa³e eliksiry lecznicze",TitlesFont,RGBA(255,204,0,255),-1);
HealthPerm_Description = Print_Ext(-1,PPoY,"Bohater potrafi uwa¿yæ eliksiry lecznicze, które maj¹ trwa³y efekt !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_HealthPerm()
{
Print_DeleteText(HealthPerm_Description);
Print_DeleteText(HealthPerm_Title);
};


/*PotionPermHealth*/

/*PotionMana*/
func void Enter_Mana()
{
Mana_Title=Print_Ext(-1,PDoY,"Eliksiry magiczne",TitlesFont,RGBA(255,204,0,255),-1);
Mana_Description = Print_Ext(-1,PPoY,"Bohater potrafi uwa¿yæ eliksiry magiczne !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_Mana()
{
Print_DeleteText(Mana_Description);
Print_DeleteText(Mana_Title);
};
/*PotionMana*/

/*PotionPermMana*/
func void Enter_ManaPerm()
{
ManaPerm_Title=Print_Ext(-1,PDoY,"Trwa³e eliksiry magiczne",TitlesFont,RGBA(255,204,0,255),-1);
ManaPerm_Description = Print_Ext(-1,PPoY,"Bohater potrafi uwa¿yæ eliksiry magiczne, które maj¹ trwa³y efekt !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_ManaPerm()
{
Print_DeleteText(ManaPerm_Description);
Print_DeleteText(ManaPerm_Title);
};
/*PotionPermMana*/

/*Strenght*/
func void Enter_Str()
{
Str_Title=Print_Ext(-1,PDoY,"Eliksiry si³y",TitlesFont,RGBA(255,204,0,255),-1);
Str_Description = Print_Ext(-1,PPoY,"Bohater potrafi uwa¿yæ eliksiry zwiêkszaj¹ce si³ê !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_Str()
{
Print_DeleteText(Str_Description);
Print_DeleteText(Str_Title);
};
/*Strenght*/

/*Dexterity*/
func void Enter_Dex()
{
Dex_Title=Print_Ext(-1,PDoY,"Eliksiry zrêcznoœci",TitlesFont,RGBA(255,204,0,255),-1);
Dex_Description = Print_Ext(-1,PPoY,"Bohater potrafi uwa¿yæ eliksiry zwiêkszaj¹ce zrêcznoœæ !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_Dex()
{
Print_DeleteText(Dex_Description);
Print_DeleteText(Dex_Title);
};
/*Dexterity*/

/*Minner*/
func void Enter_Minner()
{
Minner_Title=Print_Ext(-1,PDoY,"Górnictwo",TitlesFont,RGBA(255,204,0,255),-1);
Minner_Description = Print_Ext(-1,PPoY,"Bohater zna siê na z³o¿ach naturalnych !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_Minner()
{
Print_DeleteText(Minner_Description);
Print_DeleteText(Minner_Title);
};
/*Minner*/

/*Smith*/
func void Enter_Smith()
{
Smith_Title=Print_Ext(-1,PDoY,"Kowalstwo",TitlesFont,RGBA(255,204,0,255),-1);
Smith_Description = Print_Ext(-1,PPoY,"Bohater potrafi wykuwaæ bronie na kowadle !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_Smith()
{
Print_DeleteText(Smith_Description);
Print_DeleteText(Smith_Title);
};
/*Smith*/

/*Armors*/
func void Enter_Armored()
{
Armored_Title=Print_Ext(-1,PDoY,"P³atnerstwo",TitlesFont,RGBA(255,204,0,255),-1);
Armored_Description = Print_Ext(-1,PPoY,"Bohater potrafi wytrwarzaæ pancerze !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_Armored()
{
Print_DeleteText(Armored_Description);
Print_DeleteText(Armored_Title);
};
/*Armors*/

/*PickLock*/
func void Enter_PickLock()
{
PickLock_Title=Print_Ext(-1,PDoY,"W³amywanie",TitlesFont,RGBA(255,204,0,255),-1);
PickLock_Description = Print_Ext(-1,PPoY,"Bohater potrafi otwieraæ zamkniête skrzynie !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_PickLock()
{
Print_DeleteText(PickLock_Description);
Print_DeleteText(PickLock_Title);
};
/*PickLock*/

/*PickPocket*/
func void Enter_PickPocket()
{
PickPocket_Title=Print_Ext(-1,PDoY,"Kradzie¿ kieszonkowa",TitlesFont,RGBA(255,204,0,255),-1);
PickPocket_Description = Print_Ext(-1,PPoY,"Bohater potrafi dorobiæ siê kosztem innych !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_PickPocket()
{
Print_DeleteText(PickPocket_Description);
Print_DeleteText(PickPocket_Title);
};
/*PickPocket*/

/*Sneak*/
func void Enter_Sneak()
{
Sneak_Title=Print_Ext(-1,PDoY,"Skradanie",TitlesFont,RGBA(255,204,0,255),-1);
Sneak_Description = Print_Ext(-1,PPoY,"Bohater potrafi bezszelestnie siê poruszaæ !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_Sneak()
{
Print_DeleteText(Sneak_Description);
Print_DeleteText(Sneak_Title);
};
/*Sneak*/


/*Teeth*/
func void Enter_Teeth()
{
Teeth_Title=Print_Ext(-1,PDoY,"Pozyskiwanie k³ów",TitlesFont,RGBA(255,204,0,255),-1);
Teeth_Description = Print_Ext(-1,PPoY,"Bohater potrafi pozyskaæ od zwierz¹t ich k³y !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_Teeth()
{
Print_DeleteText(Teeth_Description);
Print_DeleteText(Teeth_Title);
};
/*Teeth*/

/*Claws*/
func void Enter_Claws()
{
Claws_Title=Print_Ext(-1,PDoY,"Pozyskiwanie pazurów",TitlesFont,RGBA(255,204,0,255),-1);
Claws_Description = Print_Ext(-1,PPoY,"Bohater potrafi pozyskaæ od zwierz¹t ich pazury !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_Claws()
{
Print_DeleteText(Claws_Description);
Print_DeleteText(Claws_Title);
};
/*Claws*/

/*ShadowHorn*/
func void Enter_ShadowHorn()
{
ShadowHorn_Title=Print_Ext(-1,PDoY,"Róg cieniostwora",TitlesFont,RGBA(255,204,0,255),-1);
ShadowHorn_Description = Print_Ext(-1,PPoY,"Bohater potrafi pozyskaæ rzadkie rogi cieniostworów !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_ShadowHorn()
{
Print_DeleteText(ShadowHorn_Description);
Print_DeleteText(ShadowHorn_Title);
};
/*ShadowHorn*/

/*Sting*/
func void Enter_Sting()
{
Sting_Title=Print_Ext(-1,PDoY,"¯¹d³o krwiopijcy",TitlesFont,RGBA(255,204,0,255),-1);
Sting_Description = Print_Ext(-1,PPoY,"Bohater potrafi pozyskaæ truj¹ce ¿¹d³a krwiopijcy !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_Sting()
{
Print_DeleteText(Sting_Description);
Print_DeleteText(Sting_Title);
};
/*Sting*/

/*CrawlerPlate*/
func void Enter_CrawlerPlate()
{
CrawlerPlate_Title=Print_Ext(-1,PDoY,"Pancerz pe³zacza",TitlesFont,RGBA(255,204,0,255),-1);
CrawlerPlate_Description = Print_Ext(-1,PPoY,"Bohater potrafi pozyskaæ pancerz z pe³zacza !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_CrawlerPlate()
{
Print_DeleteText(CrawlerPlate_Description);
Print_DeleteText(CrawlerPlate_Title);
};
/*CrawlerPlate*/

/*WolfFur*/
func void Enter_Furs()
{
Furs_Title=Print_Ext(-1,PDoY,"Skórowanie",TitlesFont,RGBA(255,204,0,255),-1);
Furs_Description = Print_Ext(-1,PPoY,"Bohater potrafi pozyskaæ skóry z upolowanej zwierzyny !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_Furs()
{
Print_DeleteText(Furs_Description);
Print_DeleteText(Furs_Title);
};
/*WolfFur*/

/*LurkerSkin*/
func void Enter_LurkerSkins()
{
LurkerSkins_Title=Print_Ext(-1,PDoY,"Skórowanie gadów",TitlesFont,RGBA(255,204,0,255),-1);
LurkerSkins_Description = Print_Ext(-1,PPoY,"Bohater potrafi pozyskaæ skóry z upolowanych gadów !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_LurkerSkins()
{
Print_DeleteText(LurkerSkins_Description);
Print_DeleteText(LurkerSkins_Title);
};
/*LurkerSkin*/

/*CrawlerPlate*/

/*CrawlerPlate*/

/*FireWaranLean*/
func void Enter_FireWaranLean()
{
FireWaranLean_Title=Print_Ext(-1,PDoY,"Jêzyk ognistego jaszczura",TitlesFont,RGBA(255,204,0,255),-1);
FireWaranLean_Description = Print_Ext(-1,PPoY,"Bohater potrafi pozyskaæ jêzyk ognistego jaszczura !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_FireWaranLean()
{
Print_DeleteText(FireWaranLean_Description);
Print_DeleteText(FireWaranLean_Title);
};
/*FireWaranLean*/

/*Herats*/

/*Herats*/

/*FastLearn*/
func void Enter_FastLearn()
{
FastLearn_Title=Print_Ext(-1,PDoY,"Szybka nauka",TitlesFont,RGBA(255,204,0,255),-1);
FastLearn_Description = Print_Ext(-1,PPoY,"Bohater otrzymuje dodatkowe punkty nauki przy awansie !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_FastLearn()
{
Print_DeleteText(FastLearn_Description);
Print_DeleteText(FastLearn_Title);
};
/*FastLearn*/

/*Barter*/
func void Enter_Barter()
{
Barter_Title=Print_Ext(-1,PDoY,"Akrobatyka",TitlesFont,RGBA(255,204,0,255),-1);
Barter_Description = Print_Ext(-1,PPoY,"Bohater skacze znacznie dalej !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_Barter()
{
Print_DeleteText(Barter_Description);
Print_DeleteText(Barter_Title);
};
/*Barter*/

/*OrcWeapons*/
func void Enter_OrcWeapons()
{
OrcWeapons_Title=Print_Ext(-1,PDoY,"Orkowa broñ",TitlesFont,RGBA(255,204,0,255),-1);
OrcWeapons_Description = Print_Ext(-1,PPoY,"Bohater potrafi u¿ywaæ broni orków !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_OrcWeapons()
{
Print_DeleteText(OrcWeapons_Description);
Print_DeleteText(OrcWeapons_Title);
};
/*OrcWeapons*/

/*HealthRegenation*/
func void Enter_HealthRegenation()
{
HealthRegenation_Title=Print_Ext(-1,PDoY,"Regeneracja ¿ycia",TitlesFont,RGBA(255,204,0,255),-1);
HealthRegenation_Description = Print_Ext(-1,PPoY,"Bohater powoli odzyskuje si³y witalne !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_HealthRegenation()
{
Print_DeleteText(HealthRegenation_Description);
Print_DeleteText(HealthRegenation_Title);
};
/*HealthRegenation*/

/*ManaRegenation*/
func void Enter_ManaRegenation()
{
ManaRegenation_Title=Print_Ext(-1,PDoY,"Regeneracja many",TitlesFont,RGBA(255,204,0,255),-1);
ManaRegenation_Description = Print_Ext(-1,PPoY,"Bohater powoli odzyskuje si³y magiczne !",PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_ManaRegenation()
{
Print_DeleteText(ManaRegenation_Description);
Print_DeleteText(ManaRegenation_Title);
};
/*ManaRegenation*/

/*Dodge*/

/*Dodge*/

/**********CloseNewMenu*************************/
func void Close_Menu()
{
Button_Delete(HeroEDGE_Button);
Button_Delete(Level_Button);
Button_Delete(Exp_Button);
Button_Delete(HeroLp_Button);
Button_Delete(HeroSTR_Button);
Button_Delete(HeroDEX_Button);
Button_Delete(HeroHP_Button);
Button_Delete(HeroMP_Button);
Button_Delete(HeroBLUNT_Button);
Button_Delete(HeroPOINT_Button);
Button_Delete(HeroFIRE_Button);
Button_Delete(HeroMagic_Button);
Button_Delete(Sword1_Button);
Button_Delete(Sword2_Button);
Button_Delete(Sword3_Button);
Button_Delete(Axe1_Button);
Button_Delete(Axe2_Button);
Button_Delete(Axe3_Button);
Button_Delete(Bow_Button);
Button_Delete(Bow2_Button);
Button_Delete(Bow3_Button);
Button_Delete(CrossBow1_Button);
Button_Delete(CrossBow2_Button);
Button_Delete(CrossBow3_Button);
Button_Delete(Shield_Button);
Button_Delete(Duals_Button);
Button_Delete(Break_Button);
Button_Delete(PercCrossbow_Button);
Button_Delete(MagicStaffs_Button);
Button_Delete(RuneMake_Button);
Button_Delete(MagicCircle_Button);
Button_Delete(Health_Button);
Button_Delete(HealthPerm_Button);
Button_Delete(Mana_Button);
Button_Delete(ManaPerm_Button);
Button_Delete(Str_Button);
Button_Delete(Dex_Button);
Button_Delete(Minner_Button);
Button_Delete(Smith_Button);
Button_Delete(Armored_Button);
Button_Delete(PickLock_Button);
Button_Delete(Sneak_Button);
Button_Delete(PickPocket_Button);
Button_Delete(Teeth_Button);
Button_Delete(Claws_Button);
Button_Delete(ShadowHorn_Button);
Button_Delete(Sting_Button);
Button_Delete(Furs_Button);
Button_Delete(CrawlerPlate_Button);
Button_Delete(LurkerSkins_Button);
Button_Delete(FireWaranLean_Button);
Button_Delete(FastLearn_Button);
Button_Delete(Barter_Button);
Button_Delete(OrcWeapons_Button);
Button_Delete(HealthRegenation_Button);
Button_Delete(ManaRegenation_Button);


/*;____________________;*/
Print_DeleteText(HitChance1h);
Print_DeleteText(HitChance2h);
Print_DeleteText(HitChanceBow);
Print_DeleteText(HitChanceCrossBow);
Print_DeleteText(Print_HeroHeroEDGE);
Print_DeleteText(Print_HeroEDGE);
Print_DeleteText(Print_HeroLevel);
Print_DeleteText(Print_Level);
Print_DeleteText(Print_HeroExp);
Print_DeleteText(Print_Exp);
Print_DeleteText(Print_HeroHeroLp);
Print_DeleteText(Print_HeroLp);
Print_DeleteText(Print_HeroHeroSTR);
Print_DeleteText(Print_HeroSTR);
Print_DeleteText(Print_HeroDEX);
Print_DeleteText(Print_HeroHeroDEX);
Print_DeleteText(Print_HeroHeroHP);
Print_DeleteText(Print_HeroHP);
Print_DeleteText(Print_HeroHeroMP);
Print_DeleteText(Print_HeroMP);
Print_DeleteText(Print_HeroBLUNT);
Print_DeleteText(Print_HeroHeroBLUNT);
Print_DeleteText(Print_HeroHeroPOINT);
Print_DeleteText(Print_HeroPOINT);
Print_DeleteText(Print_HeroHeroFIRE);
Print_DeleteText(Print_HeroFIRE);
Print_DeleteText(Print_HeroHeroMagic);
Print_DeleteText(Print_HeroMagic);
Print_DeleteText(MagicSkills);
Print_DeleteText(Fightskills);
Print_DeleteText(AlchemySkills);
Print_DeleteText(SmithSkills);
Print_DeleteText(SpecialSkills);
Print_DeleteText(ThiefSkills);
Print_DeleteText(HunterSkills);
Print_DeleteText(HeroPrint);
Print_DeleteText(Attributes_print);
Print_DeleteText(Protection_print);
Print_DeleteText(OtherSkillsPrint);

Leave_Sword1();
Leave_Sword2();
Leave_Sword3();
Leave_ManaRegenation();
Leave_Axe1();
Leave_Axe2();
Leave_Axe3();
Leave_Bow();
Leave_Bow2();
Leave_Bow3();
Leave_CrossBow1();
Leave_CrossBow2();
Leave_CrossBow3();
Leave_Shield_Button();
Leave_Duals_Button();
Leave_Break_Button();
Leave_PercCrossbow_Button();
Leave_MagicStaffs();
Leave_MagicCircle();
Leave_RuneMake();
Leave_Health();
Leave_HealthPerm();
Leave_Mana();
Leave_ManaPerm();
Leave_Str();
Leave_Dex();
Leave_Minner();
Leave_Smith();
Leave_Armored();
Leave_PickLock();
Leave_PickPocket();
Leave_Sneak();
Leave_Teeth();
Leave_Claws();
Leave_ShadowHorn();
Leave_Sting();
Leave_Furs();
Leave_CrawlerPlate();
Leave_LurkerSkins();
Leave_FireWaranLean();
Leave_FastLearn();
Leave_Barter();
Leave_OrcWeapons();
Leave_HealthRegenation();

};

func void CloseNewMenu()
{
if(MEM_Game.pause_screen==0)
{
if(Menu_New_Debbuger)
{
Cursor_Hide();
Close_Menu();
Menu_New_Debbuger=false;
//View_Delete(View_Menu_Icons); wy³¹czenie - brak ³adnej tekstury :I
		};
	};
};