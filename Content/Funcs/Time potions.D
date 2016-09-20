//####################
//########Icons########
//###################
var int STR1_Icon;
var int STR2_Icon;

var int DEX1_Icon;
var int DEX2_Icon;

var int HP1_Icon;
var int HP2_Icon;

var int MP1_Icon;
var int MP2_Icon;

var int EDGE1_Icon;
var int EDGE2_Icon;

var int MAGIC1_Icon;
var int MAGIC2_Icon;

var int STUNBASH_Icon;
/*************************/

const int PotionTime_Large = 180;
const int PotionTime_Small = 120;
const string Efekttrwa = "Efekt jeszcze trwa !"; //Tests change to PutMsg
//*******STR*******\\
var int STR_1;	//debugger 
var int STR_2;  //debugger
var int STR_timer; //timer + sec
var int STR_timer2;	//timer + sec
//*******DEX*******\\
//DODAÆ DODAWANIE SI£Y I ZDEJMOWANIE ;-; ale to nei teraz xD
var int DEX_1;
var int DEX_2;
var int DEX_timer;
var int DEX_timer2;
//*******HP*******\\
var int HP_1;
var int HP_2;
var int HP_timer;
var int HP_timer2;
//*******MP*******\\
var int MP_1;
var int MP_2;
var int MP_timer;
var int MP_timer2;
//*******EDGE*******\\
var int EDGE_1;
var int EDGE_2;
var int EDGE_timer;
var int EDGE_timer2;
//*******MAGIC*******\
var int MAGIC_1;
var int MAGIC_2;
var int MAGIC_timer;
var int MAGIC_timer2;
//*******STUN*******\
var int STUNBASH;
var int STUNBASH_timer;

func void STR_SMALL(){
if (!STR_1){
STR_1=true;
STR_timer = PotionTime_Small;
hero.attribute[ATR_STRENGTH] += 10;
/*******************************************/
STR1_Icon=View_CreateCenter(100,7500,128,160);
View_SetTexture(STR1_Icon,"Ico_Potion_STR_Gray.tga");
View_Open(STR1_Icon);
/*******************************************/
}
else
{
PrintS_Ext(Efekttrwa,RGBA(180,0,0,255));
CreateInvItems(hero, ItPo_Time_STR_1,1);
	};
};

func void STR_MEDIUM(){
if (!STR_2){
STR_2=true;
STR_timer2 = PotionTime_Large;
hero.attribute[ATR_STRENGTH] += 20;
/*******************************************/
STR2_Icon=View_CreateCenter(100,7670,128,160);
View_SetTexture(STR2_Icon,"Ico_STR_01_Gray.tga");
View_Open(STR2_Icon);
/*******************************************/
}else
{
PrintS_Ext(Efekttrwa,RGBA(180,0,0,255));
CreateInvItems(hero, ItPo_Time_STR_2,1);
};
};

func void DEX_SMALL(){
if (!DEX_1)
{
DEX_1 =true;
DEX_timer = PotionTime_Small;
hero.attribute[ATR_DEXTERITY] += 10;
/*******************************************/
DEX1_Icon=View_CreateCenter(230,7500,128,160);
View_SetTexture(DEX1_Icon,"Ico_Potion_Dex_Gray.tga");
View_Open(DEX1_Icon);
/*******************************************/
}else{PrintS_Ext(Efekttrwa,RGBA(180,0,0,255));CreateInvItems(hero, Itpo_TIME_DEX_1,1);};
};

func void DEX_MEDIUM(){
if (!DEX_2){
DEX_2 = true;
DEX_timer2 = PotionTime_Large;
hero.attribute[ATR_DEXTERITY] += 20;
/*******************************************/
DEX2_Icon=View_CreateCenter(230,7670,128,160);
View_SetTexture(DEX2_Icon,"Ico_Potion_Dex_Gray.tga");
View_Open(DEX2_Icon);
/*******************************************/
}else{PrintS_Ext(Efekttrwa,RGBA(180,0,0,255));CreateInvItems(hero, Itpo_TIME_DEX_2,1);};
};

func void HP_SMALL(){
if (!HP_1){
HP_1 = true;
HP_timer = PotionTime_Small;
hero.attribute[ATR_HITPOINTS_MAX] += 20;
hero.attribute[ATR_HITPOINTS] += 20;
/*******************************************/
HP1_Icon=View_CreateCenter(360,7500,128,160);
View_SetTexture(HP1_Icon,"Ico_Potion_Health_Gray.tga");
View_Open(HP1_Icon);
/*******************************************/
}else{PrintS_Ext(Efekttrwa,RGBA(180,0,0,255));CreateInvItems(hero, Itpo_TIME_HP_1,1);};
};

func void HP_MEDIUM(){
if (!HP_2){
HP_2 = true;
HP_timer2 = PotionTime_Large;
hero.attribute[ATR_HITPOINTS_MAX] += 40;
hero.attribute[ATR_HITPOINTS] += 40;
/*******************************************/
HP2_Icon=View_CreateCenter(360,7670,128,160);
View_SetTexture(HP2_Icon,"Ico_Potion_Health_Gray_02.tga");
View_Open(HP2_Icon);
/*******************************************/
}else{PrintS_Ext(Efekttrwa,RGBA(180,0,0,255));CreateInvItems(hero, Itpo_TIME_HP_2,1);};
};

func void MP_SMALL(){
if (!MP_1){
MP_1 = true;
MP_timer = PotionTime_Small;
hero.attribute[ATR_MANA] += 15;
hero.attribute[ATR_MANA_MAX] += 15;
/*******************************************/
MP1_Icon=View_CreateCenter(490,7500,128,160);
View_SetTexture(MP1_Icon,"Ico_Potion_Mana_Gray.tga");
View_Open(MP1_Icon);
/*******************************************/
}else{PrintS_Ext(Efekttrwa,RGBA(180,0,0,255));CreateInvItems(hero, Itpo_TIME_MP_1,1);};
};

func void MP_MEDIUM(){
if (!MP_2){
MP_2 = true;
MP_timer2 = PotionTime_Large;
hero.attribute[ATR_MANA_MAX] += 30;
hero.attribute[ATR_MANA] += 30;
/*******************************************/
MP2_Icon=View_CreateCenter(490,7670,128,160);
View_SetTexture(MP2_Icon,"Ico_Potion_Mana_Gray.tga");
View_Open(MP2_Icon);
/*******************************************/
}else{PrintS_Ext(Efekttrwa,RGBA(180,0,0,255));CreateInvItems(hero, Itpo_TIME_MP_2,1);};
};

func void EDGE_SMALL(){
if (!EDGE_1){
EDGE_1= true;
EDGE_timer = PotionTime_Small;
hero.protection[PROT_EDGE] +=	15 ;
hero.protection[PROT_BLUNT] +=	15;
hero.protection[PROT_POINT] += 	15;
/*******************************************/
EDGE1_Icon=View_CreateCenter(620,7500,128,160);
View_SetTexture(EDGE1_Icon,"Ico_Potion_Protection_Gray.tga");
View_Open(EDGE1_Icon);
/*******************************************/
}else{PrintS_Ext(Efekttrwa,RGBA(180,0,0,255));CreateInvItems(hero, Itpo_TIME_EDGE_1,1);};
};

func void EDGE_MEDIUM(){
if (!EDGE_2){
EDGE_2 = true;
EDGE_timer2 = PotionTime_Large;
hero.protection[PROT_EDGE] +=25;
hero.protection[PROT_BLUNT] +=25;
hero.protection[PROT_POINT] +=25 ;
/*******************************************/
EDGE2_Icon=View_CreateCenter(620,7670,128,160);
View_SetTexture(EDGE2_Icon,"Ico_Potion_Protection_Gray.tga");
View_Open(EDGE2_Icon);
/*******************************************/
}else{PrintS_Ext(Efekttrwa,RGBA(180,0,0,255));CreateInvItems(hero, Itpo_TIME_EDGE_2,1);};
};

func void MAGIC_SMALL(){
if (!MAGIC_1){
MAGIC_1= true;
MAGIC_timer = PotionTime_Small;
hero.protection[PROT_FIRE] +=15;
hero.protection[PROT_MAGIC] +=15 ;
/*******************************************/
MAGIC1_Icon=View_CreateCenter(750,7500,128,160);
View_SetTexture(MAGIC1_Icon,"Ico_Potion_ProtectionMagic_Gray.tga");
View_Open(MAGIC1_Icon);
/*******************************************/
}else{PrintS_Ext(Efekttrwa,RGBA(180,0,0,255));CreateInvItems(hero, Itpo_TIME_Magic_1,1);};
};

func void MAGIC_MEDIUM(){
if (!MAGIC_2){
MAGIC_2 = true;
MAGIC_timer2 = PotionTime_Large;
hero.protection[PROT_FIRE] +=25;
hero.protection[PROT_MAGIC] +=25 ;
/*******************************************/
MAGIC2_Icon=View_CreateCenter(750,7670,128,160);
View_SetTexture(MAGIC2_Icon,"Ico_Potion_ProtectionMagic_Gray.tga");
View_Open(MAGIC2_Icon);
/*******************************************/
}else{PrintS_Ext(Efekttrwa,RGBA(180,0,0,255));CreateInvItems(hero, Itpo_TIME_Magic_2,1);};
};

func void STUN_BASH(){
if (!STUNBASH){
STUNBASH= true;
STUNBASH_timer = 30;
/*******************************************/
STUNBASH_Icon=View_CreateCenter(880,7600,128,160);
View_SetTexture(STUNBASH_Icon,"Ico_Potion_Stun_Gray.tga");
View_Open(STUNBASH_Icon);
/*******************************************/
}else{
PrintS_Ext(Efekttrwa,RGBA(180,0,0,255));
CreateInvItems(hero, Itpo_TIME_StunBash,1);};
};

//	1 -	STR +10
//	2 -	STR +20
//	3 -	DEX +10
//	4 -	DEX +20
//	5 -	HP + 20
//	6 -	HP + 40
//	7 -	MP + 15
//	8 -	MP + 30
//	9 -	EDGE; POINT +15
//	10 - EDGE; POINT +25	
//	11 - MAGIC; FIRE +15, 10
//	12 - MAGIC; FIRE 20, 15	
//	13 -	STUNBASH
func void Temp_potions_Select (){
if (item.range == 1){
STR_SMALL();
}
else if (item.range == 2){
STR_MEDIUM();
}else if (item.range == 3){
DEX_SMALL();
}else if (item.range == 4){
DEX_MEDIUM();
}else if (item.range == 5){
HP_SMALL();
}else if (item.range == 6){
HP_MEDIUM();
}else if (item.range == 7){
MP_SMALL();
}else if (item.range == 8){
MP_MEDIUM();
}else if (item.range == 9){
EDGE_SMALL();
}else if (item.range == 10){
EDGE_MEDIUM();
}else if (item.range == 11){
MAGIC_SMALL();
}else if (item.range == 12){
MAGIC_MEDIUM();
}else if (item.range == 13){
STUN_BASH();
	};
};
//Ok zdejmowanie efektów bonusowych gdy zmienna osi¹gnie 0 :P oraz zdejmowanie zmennych
func void Trigger_Potions (){
if(MEM_GAME.pause_screen==0)
{
if (STR_1){
STR_timer -=1;
};
if (STR_2){
STR_timer2 -=1;
};
if (DEX_1){
DEX_timer -=1;
};
if (DEX_2){
DEX_timer2 -=1;
};
if (HP_1){
HP_timer -=1;
};
if (HP_2){
HP_timer2 -=1;
};
if (MP_1){
MP_timer -=1;
};
if (MP_2){
MP_timer2 -=1;
};
if (EDGE_1){
EDGE_timer -=1;
};
if (EDGE_2){
EDGE_timer2 -=1;
};
if (MAGIC_1){
MAGIC_timer -=1;
};
if (MAGIC_2){
MAGIC_timer2 -=1;
};
if (STUNBASH){
STUNBASH_timer -=1;
};
/***************************************
Zdejowanie efektów :D
****************************************/
if (STR_1 && STR_timer ==0){
View_Delete(STR1_Icon);
STR_timer =0;
STR_1=false;
hero.attribute[ATR_STRENGTH] -= 10;
};
if (STR_2 && STR_timer2 ==0){
View_Delete(STR2_Icon);
STR_timer2 =0;
STR_2=false;
hero.attribute[ATR_STRENGTH] -= 20;
};
if (DEX_1 && DEX_timer ==0){
View_Delete(DEX1_Icon);
DEX_timer =0;
DEX_1=false;
hero.attribute[ATR_DEXTERITY] -= 10;
};
if (DEX_2 && DEX_timer2 ==0){
View_Delete(DEX2_Icon);
DEX_timer2 =0;
DEX_2=false;
hero.attribute[ATR_DEXTERITY] -= 20;
};
if (HP_1 && HP_timer ==0){
View_Delete(HP1_Icon);
HP_timer =0;
HP_1=false;
hero.attribute[ATR_HITPOINTS_MAX] -= 20;
hero.attribute[ATR_HITPOINTS] -= 20;
};
if (HP_2 && HP_timer2 ==0){
View_Delete(HP2_Icon);
HP_timer2 =0;
HP_2=false;
hero.attribute[ATR_HITPOINTS_MAX] -= 40;
hero.attribute[ATR_HITPOINTS] -= 40;
};
if (MP_1 && MP_timer ==0){
View_Delete(MP1_Icon);
MP_timer =0;
MP_1=false;
hero.attribute[ATR_MANA] -= 15;
hero.attribute[ATR_MANA_MAX] -= 15;
};
if (MP_2 && MP_timer2 ==0){
View_Delete(MP2_Icon);
MP_timer2 =0;
MP_2=false;
hero.attribute[ATR_MANA] -= 30;
hero.attribute[ATR_MANA_MAX] -= 30;
};
if (EDGE_1 && EDGE_timer ==0){
View_Delete(EDGE1_Icon);
EDGE_timer =0;
EDGE_1=false;
hero.protection[PROT_EDGE] 	-=	15;
hero.protection[PROT_BLUNT]	-=	15;
hero.protection[PROT_POINT] 	-=	15;
};
if (EDGE_2 && EDGE_timer2 ==0){
View_Delete(EDGE2_Icon);
EDGE_timer2 =0;
EDGE_2=false;
hero.protection[PROT_POINT] -=	 25;
hero.protection[PROT_BLUNT] -=	25;
hero.protection[PROT_EDGE] -= 	25;
};
if (MAGIC_1 && MAGIC_timer ==0){
View_Delete(MAGIC1_Icon);
MAGIC_timer =0;
MAGIC_1=false;
hero.protection[PROT_MAGIC] -= 15;
hero.protection[PROT_FIRE] -= 15;
};
if (MAGIC_2 && MAGIC_timer2 ==0){
View_Delete(MAGIC2_Icon);
MAGIC_timer2 =0;
MAGIC_2=false;
hero.protection[PROT_FIRE] -= 25;
hero.protection[PROT_MAGIC] -= 25;
};
if (STUNBASH&& STUNBASH_timer ==0){
View_Delete(STUNBASH_Icon);
STUNBASH_timer =0;
STUNBASH=false;
};
};
};
/*********************************************/
func void ReTexturePotions()
{
if(MEM_GAME.pause_screen==0)
{
var int STR1_Done;
var int STR2_Done;
/***************/
var int DEX1_Done;
var int DEX2_Done;
/**************/
var int HP1_Done;
var int HP2_Done;
/**************/
var int MP1_Done;
var int MP2_Done;
/**************/
var int EDGE1_Done;
var int EDGE2_Done;
/**************/
var int Magic1_Done;
var int Magic2_Done;
/**************/
var int Stunbash_Done;
/**************/
if(STR_timer<=10 && STR_timer>0)
{
	if(!STR1_Done)
	{
	View_SetTexture(STR1_Icon,"Ico_Potion_STR_RED.tga");
	STR1_Done=true;
	}
	else
	{
	View_SetTexture(STR1_Icon,"Ico_Potion_STR_Gray.tga");
	STR1_Done=false;
	};
};
/************************************************/
if(STR_timer2<=10 && STR_timer2>0)
{
	if(!STR2_Done)
	{
	View_SetTexture(STR2_Icon,"Ico_Potion_STR_Red.tga");
	STR2_Done=true;
	}
	else
	{
	View_SetTexture(STR2_Icon,"Ico_Potion_STR_Gray.tga");
	STR2_Done=false;
	};
};
/************************************************/
if(DEX_timer<=10 && DEX_timer>0)
{
	if(!DEX1_Done)
	{
	View_SetTexture(DEX1_Icon,"Ico_Potion_Dex_Red.tga");
	DEX1_Done=true;
	}
	else
	{
	View_SetTexture(DEX1_Icon,"Ico_Potion_Dex_Gray.tga");
	DEX1_Done=false;
	};
};
/************************************************/
if(DEX_timer2<=10 && DEX_timer2>0)
{
	if(!DEX2_Done)
	{
	View_SetTexture(DEX2_Icon,"Ico_Potion_Dex_Red.tga");
	DEX2_Done=true;
	}
	else
	{
	View_SetTexture(DEX2_Icon,"Ico_Potion_Dex_Gray.tga");
	DEX2_Done=false;
	};
};
/*****************************************************/
if(HP_timer<=10 && HP_timer>0)
{
	if(!HP1_Done)
	{
	View_SetTexture(HP1_Icon,"Ico_Potion_Health_Red.tga");
	HP1_Done=true;
	}
	else
	{
	View_SetTexture(HP1_Icon,"Ico_Potion_Health_Gray.tga");
	HP1_Done=false;
	};
};
/*****************************************************/
if(HP_timer2<=10 && HP_timer2>0)
{
	if(!HP2_Done)
	{
	View_SetTexture(HP2_Icon,"Ico_Potion_Health_Red_02.tga");
	HP2_Done=true;
	}
	else
	{
	View_SetTexture(HP2_Icon,"Ico_Potion_Health_Gray_02.tga");
	HP2_Done=false;
	};
};
/************************************************/
if(MP_timer<=10 && MP_timer>0)
{
	if(!MP1_Done)
	{
	View_SetTexture(MP1_Icon,"Ico_Potion_Mana_Red.tga");
	MP1_Done=true;
	}
	else
	{
	View_SetTexture(MP1_Icon,"Ico_Potion_Mana_Gray.tga");
	MP1_Done=false;
	};
};
/************************************************/
if(MP_timer2<=10 && MP_timer2>0)
{
	if(!MP2_Done)
	{
	View_SetTexture(MP2_Icon,"Ico_Potion_Mana_Red.tga");
	MP2_Done=true;
	}
	else
	{
	View_SetTexture(MP2_Icon,"Ico_Potion_Mana_Gray.tga");
	MP2_Done=false;
	};
};
/************************************************/
if(EDGE_timer<=10 && EDGE_timer>0)
{
	if(!EDGE1_Done)
	{
	View_SetTexture(EDGE1_Icon,"Ico_Potion_Protection_Red.tga");
	EDGE1_Done=true;
	}
	else
	{
	View_SetTexture(EDGE1_Icon,"Ico_Potion_Protection_Gray.tga");
	EDGE1_Done=false;
	};
};
/************************************************/
if(EDGE_timer2<=10 && EDGE_timer2>0)
{
	if(!EDGE2_Done)
	{
	View_SetTexture(EDGE2_Icon,"Ico_Potion_Protection_Red.tga");
	EDGE2_Done=true;
	}
	else
	{
	View_SetTexture(EDGE2_Icon,"Ico_Potion_Protection_Gray.tga");
	EDGE2_Done=false;
	};
};
/************************************************/
if(MAGIC_timer<=10 && MAGIC_timer>0)
{
	if(!Magic1_Done)
	{
	View_SetTexture(MAGIC1_Icon,"Ico_Potion_ProtectionMagic_Red.tga");
	Magic1_Done=true;
	}
	else
	{
	View_SetTexture(MAGIC1_Icon,"Ico_Potion_ProtectionMagic_Gray.tga");
	Magic1_Done=false;
	};
};
/************************************************/
if(MAGIC_timer2<=10 && MAGIC_timer2>0)
{
	if(!Magic2_Done)
	{
	View_SetTexture(MAGIC2_Icon,"Ico_Potion_ProtectionMagic_Red.tga");
	Magic2_Done=true;
	}
	else
	{
	View_SetTexture(MAGIC2_Icon,"Ico_Potion_ProtectionMagic_Gray.tga");
	Magic2_Done=false;
	};
};
/************************************************/
if(STUNBASH_timer<=10 && STUNBASH_timer>0)
{
			if(!Stunbash_Done)
			{
			View_SetTexture(STUNBASH_Icon,"Ico_Potion_Stun_Red.tga");
			Stunbash_Done=true;
			}
			else
			{
			View_SetTexture(STUNBASH_Icon,"Ico_Potion_Stun_Gray.tga");
			Stunbash_Done=false;
			};
		};
	};
};