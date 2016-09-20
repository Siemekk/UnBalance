/*******\
var int Talent_Shield_Fight;
const int Shield_Unskilled = 1;
const int Shield_Warrior = 2;
const int Shield_Master = 3;
const int Shield_SMaster = 4;
\*******/
var int shield_equip;
FUNC VOID Equip_shield()
{
if(Npc_IsPlayer(self)){
if(Talent_Shield_Fight){
if(Talent_Shield_Fight==Shield_Unskilled){
shield_equip=1;
Mdl_ApplyOverlayMds(hero,"SHIELD_UNSKILLED.mds");
}
else if	(Talent_Shield_Fight==Shield_Warrior){
shield_equip=2;
Mdl_ApplyOverlayMds(hero,"HUM_SHIELD_ST1.mds");
}
else if	(Talent_Shield_Fight==Shield_Master){
shield_equip=3;
Mdl_ApplyOverlayMds(hero,"SHIELD_ST4.mds");
}
else if	(Talent_Shield_Fight==Shield_SMaster){
shield_equip=4;
Mdl_ApplyOverlayMds(hero,"HUM_Shield2.mds");
};
}
else
{
//(hero,5);
AI_UnequipWeapons(hero);
Print("Nie potrafisz w³adaæ tym typem uzbrojenia!");
		};
	};
};

FUNC VOID UnEquip_shield()
{
if(Npc_IsPlayer(self)){
Mdl_RemoveOverlayMds(hero,"SHIELD_UNSKILLED.mds");
Mdl_RemoveOverlayMds(hero,"HUM_SHIELD_ST1.mds");
Mdl_RemoveOverlayMds(hero,"SHIELD_ST4.mds");
Mdl_RemoveOverlayMds(hero,"HUM_Shield2.mds");
shield_equip=0;
if(Know1hUberMaster)
	{
	Mdl_RemoveOverlayMds(hero,"HUMANS_1hst3.mds");
	Mdl_ApplyOverlayMds(hero,"HUMANS_1hst3.mds");
	};
	};
};
INSTANCE ItSH_Wooden (C_Item) 
{	
	name 				=	"Lekka drewniana tarcza";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_Shield;	
	material 			=	MAT_METAL;
on_equip			=	Equip_shield;
on_unequip			=	UnEquip_shield;
	protection [PROT_EDGE]	=	10;
	protection [PROT_BLUNT] = 	10;
	protection [PROT_POINT] = 	10;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;
	
	value 				=	100;


	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	35;
	 
	visual 				=	"Wooden.3DS";
	
	description			= name;
	TEXT[0] 				="Wymagana si³a:";	COUNT=cond_value[2];
	
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
INSTANCE ItSH_Gladiator (C_Item) 
{	
	name 				=	"Wzmocniona Drewniana Tarcza (x1)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_Shield;	
	material 			=	MAT_METAL;
on_equip			=	Equip_shield;
on_unequip			=	UnEquip_shield;
	protection [PROT_EDGE]	=	15;
	protection [PROT_BLUNT] = 	10;
	protection [PROT_POINT] = 	10;
	protection [PROT_FIRE] 	= 	2;
	protection [PROT_MAGIC] = 	2;
	
	value 				=	500;


	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	50;
	 
	visual 				=	"Wolfshield.3DS";
	
	description			= name;
	TEXT[0] 				="Wymagana si³a:";	COUNT=cond_value[2];
	
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};

INSTANCE ItSH_MIL_H (C_Item) 
{	
	name 				=	"Tarcza stra¿nika";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_Shield;	
	material 			=	MAT_METAL;
on_equip			=	Equip_shield;
on_unequip			=	UnEquip_shield;
	protection [PROT_EDGE]	=	15;
	protection [PROT_BLUNT] = 	10;
	protection [PROT_POINT] = 	10;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;
	
	value 				=	500;


	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	50;
	 
	visual 				=	"Mil_shield_new.3DS";
	
	description			= name;
TEXT[0] 				="Wymagana si³a:";	COUNT=cond_value[2];
	
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
INSTANCE ItSH_WoodenHeavy (C_Item) 
{	
	name 				=	"Wzmocniona drewniana tarcza (x2)";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_Shield;	
	material 			=	MAT_METAL;

	protection [PROT_EDGE]	=	20;
	protection [PROT_BLUNT] = 	13;
	protection [PROT_POINT] = 	13;
	protection [PROT_FIRE] 	= 	8;
	protection [PROT_MAGIC] = 	5;
	on_equip			=	Equip_shield;
on_unequip			=	UnEquip_shield;
	value 				=	750;


	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	70;
	 
	visual 				=	"WoodenHeavy.3DS";
	
	description			= name;
	TEXT[0] 				="Wymagana si³a:";	COUNT=cond_value[2];
	
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};

INSTANCE ItSH_Knight (C_Item) 
{	
	name 				=	"Tarcza rycerza";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_Shield;	
	material 			=	MAT_METAL;

	protection [PROT_EDGE]	=	25;
	protection [PROT_BLUNT] = 	20;
	protection [PROT_POINT] = 	20;
	protection [PROT_FIRE] 	= 	5;
	protection [PROT_MAGIC] = 	5;
	
	value 				=	1250;
on_equip			=	Equip_shield;
on_unequip			=	UnEquip_shield;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	90;
	 
	visual 				=	"Rycerza.3DS";
	
	description			= name;
	
TEXT[0] 				="Wymagana si³a:";	COUNT=cond_value[2];
	
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};

INSTANCE ItSH_BanditHeavy(C_Item) 
{	
	name 				=	"Runiczna Tarcza";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_Shield;	
	material 			=	MAT_METAL;

	protection [PROT_EDGE]	=	30;
	protection [PROT_BLUNT] = 	25;
	protection [PROT_POINT] = 	25;
	protection [PROT_FIRE] 	= 	7;
	protection [PROT_MAGIC] = 	7;
	on_equip			=	Equip_shield;
on_unequip			=	UnEquip_shield;
	value 				=	2000;


	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	110;
	 
	visual 				=	"Banditheavyshield.3DS";
	
	description			= name;
TEXT[0] 				="Wymagana si³a:";	COUNT=cond_value[2];
	
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
INSTANCE ItSH_Standard (C_Item) 
{	
	name 				=	"Tarcza";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_Shield;	
	material 			=	MAT_METAL;
on_equip			=	Equip_shield;
on_unequip			=	UnEquip_shield;
	protection [PROT_EDGE]	=	2;
	protection [PROT_BLUNT] = 	2;
	protection [PROT_POINT] = 	2;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;
	
	value 				=	100;


	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	10;
	 
	visual 				=	"ITSH_STANDARD.3DS";
	
	description			= name;
	TEXT[0] 				="Wymagana si³a:";	COUNT=cond_value[2];
	
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
INSTANCE ItSH_PALADIN (C_Item) 
{	
	name 				=	"Tarcza Paladyna";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_Shield;	
	material 			=	MAT_METAL;

	protection [PROT_EDGE]	=	30;
	protection [PROT_BLUNT] = 	30;
	protection [PROT_POINT] = 	30;
	protection [PROT_FIRE] 	= 	15;
	protection [PROT_MAGIC] = 	10;
	
	value 				=	5000;
on_equip			=	Equip_shield;
on_unequip			=	UnEquip_shield;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	120;
 
	visual 				=	"Paladinshield.3DS";
	
	description			= name;
	
	TEXT[0] 				="Wymagana si³a:";	COUNT=cond_value[2];
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};

INSTANCE ItSH_SLD (C_Item) 
{	
	name 				=	"Tarcza najemnika";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_Shield;	
	material 			=	MAT_METAL;

	protection [PROT_EDGE]	=	10;
	protection [PROT_BLUNT] = 	8;
	protection [PROT_POINT] = 	7;
	protection [PROT_FIRE] 	= 	2;
	protection [PROT_MAGIC] = 	0;
	
	value 				=	300;
on_equip			=	Equip_shield;
on_unequip			=	UnEquip_shield;

	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	40;
 
	visual 				=	"ITSH_SHIELD_G3_SKULL.3DS";
	
	description			= name;
	
	TEXT[0] 				="Wymagana si³a:";	COUNT=cond_value[2];
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};

INSTANCE ItSH_Stalahrim (C_Item) 
{	
	name 				=	"Tarcza Stalahrima";

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_Shield;	
	material 			=	MAT_METAL;

	protection [PROT_EDGE]	=	30;
	protection [PROT_BLUNT] = 	35;
	protection [PROT_POINT] = 	35;
	protection [PROT_FIRE] 	= 	20;
	protection [PROT_MAGIC] = 	25;
	on_equip				=	Equip_shield;
	on_unequip			=	UnEquip_shield;
	value 					=	750;


	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	120;
	 
	visual 				=	"Stalahrim_Shield.3DS";
	
	description			= name;
	TEXT[0] 				="Wymagana si³a:";	COUNT=cond_value[2];
	
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};






INSTANCE Itse_shieldworek(C_Item)
{
	name 				=	"Torba pe³na tarcz";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Pocket.3ds";
	scemename			=	"MAPSEALED";	
	material 			=	MAT_METAL;
	on_state[0]			=   Use_Shieldworek;
	description			= 	"Worek pe³en tarcz.";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

FUNC VOID Use_Shieldworek ()
{
	CreateInvItems (self, ItSH_Gladiator,1);
	CreateInvItems (self, ItSH_Wooden,1);
	 Talent_Shield_Fight=	Shield_SMaster;
	CreateInvItems (self, ItSH_BanditHeavy,1);
	CreateInvItems (self, ItSH_Knight,1);
	CreateInvItems (self, ItSH_MIL_H,1);
	CreateInvItems (self, ItSH_PALADIN,1);
	CreateInvItems (self, ItSH_WoodenHeavy,1);
};
 
 /********************************\
*************Duals****************
\********************************/
instance ITMW_1H_MOONBLADE_RIGHT(C_Item)
{
	name 				=	"Ksiê¿ycowe Ostrze";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_DAG;	
	material 			=	MAT_METAL;

	value 				=	3000;

	damageTotal  		= 	75;
	damagetype 			=	DAM_EDGE;
	range    			=  	130;		
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	75;
	visual 				=	"ITMW_KATANA_01.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= "Miecz Praworêczny";
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
instance ITMW_1H_MOONBLADE_LEFT(C_Item)
{
	name 				=	"Ksiê¿ycowe Ostrze";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_THROW;	
	material 			=	MAT_METAL;

	value 				=	3000;

	damageTotal  		= 	75;
	damagetype 			=	DAM_EDGE;
	range    			=  	130;		
	on_equip			=	Equip_Duals;
	on_unequip			=	UnEquip_Duals;
	cond_atr[2]   		=	ATR_DEXTERITY;
	cond_value[2]  		=	75;
	visual 				=	"ITMW_KATANA_02.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= "Miecz Leworêczny";
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};


instance ITMW_1H_ASSBLADE_RIGHT(C_Item)
{
	name 				=	"Miecz asasyna";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_DAG;	
	material 			=	MAT_METAL;

	value 				=	1000;

	damageTotal  		= 	50;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;		
 
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	75;
	visual 				=	"ARABIC_SWORD_R.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= "Miecz Praworêczny";
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
instance ITMW_1H_ASSBLADE_LEFT(C_Item)
{
	name 				=	"Miecz asasyna";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_THROW;	
	material 			=	MAT_METAL;

	value 				=	1000;

	damageTotal  		= 	50;
	damagetype 			=	DAM_EDGE;
	range    			=  	100;		
	on_equip			=	Equip_Duals;
	on_unequip			=	UnEquip_Duals;
	cond_atr[2]   		=	ATR_DEXTERITY;
	cond_value[2]  		=	35;
	visual 				=	"ARABIC_SWORD_L.3DS";

	description			= name;
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4] 			= "Miecz Leworêczny";
	TEXT[5]				= NAME_Value;					COUNT[5]	= value;
};
var int DualUser;
var int DamageSet;
func void Equip_Duals()
{
if(Npc_IsPlayer(self))
{
if(Talent_Dual_Fight){
var C_Item EquipedMeleeWeapon;
EquipedMeleeWeapon = Npc_GetEquippedMeleeWeapon(hero);
Mdl_ApplyOverlayMds(hero,"HUMANS_2x2St3.mds");
DualUser = true;
EquipedMeleeWeapon.DamageTotal += item.DamageTotal;
DamageSet=true;
}
else
{
Print("Nie potrafisz walczyæ dwoma mieczami!");
AI_UnequipWeapons(hero);
};
}
else
{
Mdl_ApplyOverlayMds(self,"HUMANS_2x2St3.mds");

};
};

func void UnEquip_Duals(){
var C_Item EquipedMeleeWeapon;
EquipedMeleeWeapon = Npc_GetEquippedMeleeWeapon(hero);
if(DamageSet){
DamageSet=false;
EquipedMeleeWeapon.DamageTotal -= item.DamageTotal;
};
DualUser=false;
Mdl_RemoveOverlayMds(hero,"HUMANS_2x2St3.mds");
if(Know2hUberMaster)
	{
	Mdl_RemoveOverlayMds(hero,"HUMANS_2hst3.mds");
	Mdl_ApplyOverlayMds(hero,"HUMANS_2hst3.mds");
	};
};

var int Speer_Equip;
FUNC VOID Equip_Speer()
{
if(Npc_IsPlayer(self)){
if(hero.hitchance[2]>=70)
{
Speer_Equip=true;
Mdl_ApplyOverlayMds(hero,"Humans_spst2.mds");
};
}
else
{
//(hero,5);
AI_UnequipWeapons(hero);
Print("Nie jesteœ na to gotowy!");
	};
};


FUNC VOID UnEquip_Speer()
{
if(Npc_IsPlayer(self)){
Mdl_RemoveOverlayMds(hero,"Humans_spst2.mds");
Speer_Equip=false;
if(Know2hUberMaster)
	{
	Mdl_RemoveOverlayMds(hero,"HUMANS_2hst3.mds");
	Mdl_ApplyOverlayMds(hero,"HUMANS_2hst3.mds");
	};
	};
};

instance ITMW_SPEER_01(C_Item)
{
	name 				=	"W³ócznia";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	1000;

	damageTotal  		= 	70;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Zweihaender2;		
 	on_equip			=	Equip_Speer;
	on_unequip			=	UnEquip_Speer;
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	60;
	visual 				=	"ITMW_SPEER_03.3DS";

	description			= name;
	TEXT[1]				= "Ten rodzaj broni by³ u¿ywaniy przez ludzi od pokoleñ.";
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

instance ITMW_SPEER_02(C_Item)
{
	name 				=	"¯elazna w³ócznia";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	1500;

	damageTotal  		= 	105;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Zweihaender2;		
 	on_equip			=	Equip_Speer;
	on_unequip			=	UnEquip_Speer;
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	80;
	visual 				=	"ITMW_SPEER_04.3DS";

	description			= name;
	TEXT[1]				= "W³ócznia z ¿elaznym ostrzem.";
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};
instance ITMW_SPEER_03(C_Item)
{
	name 				=	"W³ócznia chaosu";  //NUR PALADIN 

	mainflag 			=	ITEM_KAT_NF;
	flags 				=	ITEM_2HD_SWD;	
	material 			=	MAT_METAL;

	value 				=	5000;

	damageTotal  		= 	170;
	damagetype 			=	DAM_EDGE;
	range    			=  	Range_Zweihaender2;		
 	on_equip			=	Equip_Speer;
	on_unequip			=	UnEquip_Speer;
	cond_atr[2]   		=	ATR_STRENGTH;
	cond_value[2]  		=	120;
	visual 				=	"ITMW_SPEER_05.3DS";

	description			= name;
	TEXT[1]				= "W³ócznia stworzona ze smoczej krwi!";
	TEXT[2]				= NAME_Damage;					COUNT[2]	= damageTotal;
	TEXT[3] 			= NAME_Str_needed;				COUNT[3]	= cond_value[2];
	TEXT[4]				= NAME_Value;					COUNT[4]	= value;
};

