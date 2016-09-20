PROTOTYPE ItPo_Time(C_Item)
{
	name 			=	"Eliksir czasowy";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	300;	

	visual 			=	"ItPo_Perm_STR.3ds";
	material 		=	MAT_GLAS;
	on_state[0]	=	Temp_potions_Select;
	scemeName	=	"POTIONFAST";

	wear				= 	WEAR_EFFECT;
	effect				=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	name;
	range = 1;
	//TEXT[2]			=   "ZASTANÓW siê przed jej u¿yciem!!";
	
	//TEXT[3]			= 	"Mo¿e uszkodziæ umys³,";	
	//TEXT[4]			= 	"a nawet zabiæ tego, kto jej u¿yje.";
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	Value_ManaEssenz;
};
/***************************************************/
INSTANCE ItPo_Time_STR_1(ItPo_Time)
{
	name 			=	"Eliksir";
	description		= 	"Gniew golema";
	range=1;
	value=105;
	TEXT[0]			=   	"Bonus do si³y: "; 								COUNT[0]=10;
	TEXT[4]			= 		"Czas trwania (min.):";							COUNT[4]=2;
	TEXT[5]			= 		NAME_Value;										COUNT[5]=item.value;
	visual 			=		"ITPO_PERM_STR.3ds";
};
//2
INSTANCE ItPo_Time_STR_2(ItPo_Time)
{
	name 			=	"Eliksir";
	description		= 	"Krew trolla";
	value=220;
	TEXT[0]			=   	"Bonus do si³y: "; 								COUNT[0]=20;
	TEXT[4]			= 		"Czas trwania (min.):";							COUNT[4]=3;
	TEXT[5]			= 		NAME_Value;										COUNT[5]=item.value;
	visual 			=		"Time_Potion_STR_02.3ds";
	range=2;
};
//3
INSTANCE Itpo_TIME_DEX_1(ItPo_Time)
{
	name 			=	"Eliksir";
	description		= 	"Z³odziejski eliksir";

	value=55;
	TEXT[0]			=   	"Bonus do zrêcznoœci: "; 								COUNT[0]=10;
	TEXT[4]			= 		"Czas trwania (min.):";							COUNT[4]=2;
	TEXT[5]			= 		NAME_Value;										COUNT[5]=item.value;
	visual 			=	"ITPO_PERM_DEX.3ds";
	range=3;
};
//4
INSTANCE Itpo_TIME_DEX_2(ItPo_Time)
{
	name 			=	"Eliksir";
	description		= 	"Napój myœliwego";

	value=155;
	TEXT[0]			=   	"Bonus do zrêcznoœci: "; 								COUNT[0]=20;
	TEXT[4]			= 		"Czas trwania (min.):";							COUNT[4]=3;
	TEXT[5]			= 		NAME_Value;										COUNT[5]=item.value;
	visual 			=	"Time_Potion_DEX_02.3ds";
	range=4;
};
//5
INSTANCE Itpo_TIME_HP_1(ItPo_Time)
{
	name 			=	"Eliksir";
	description		= 	"Dar ¿ycia";

	value=50;
	TEXT[0]			=   	"Bonus do punktów trafieñ: "; 				COUNT[0]=20;
	TEXT[4]			= 		"Czas trwania (min.):";							COUNT[4]=2;
	TEXT[5]			= 		NAME_Value;										COUNT[5]=item.value;
	visual 			=		"ITPO_HEALTH_03.3ds";
	range=5;
};
//6
INSTANCE Itpo_TIME_HP_2(ItPo_Time)
{
	name 			=	"Eliksir";
	description		= 	"Czara ¿ycia";

	value=150;
	TEXT[0]			=   	"Bonus do punktów trafieñ: "; 				COUNT[0]=40;
	TEXT[4]			= 		"Czas trwania (min.):";							COUNT[4]=3;
	TEXT[5]			= 		NAME_Value;										COUNT[5]=item.value;
	visual 			=		"ITPO_PERM_HEALTH.3ds";
	range=6;
};

INSTANCE Itpo_TIME_MP_1(ItPo_Time)
{
	
	name 			=	"Eliksir";
	description		= 	"Eliksir Mocy";

	value=50;
	
	TEXT[0]			=   	"Bonus do many: "; 							COUNT[0]=20;
	TEXT[4]			= 		"Czas trwania (min.):";							COUNT[4]=2;
	TEXT[5]			= 		NAME_Value;										COUNT[5]=item.value;
	visual 			=		"ITPO_MANA_03.3ds";
	range=7;
};
//2
INSTANCE Itpo_TIME_MP_2(ItPo_Time)
{

	name="Eliksir";
	description		= 	"Œwiat³o Innosa";

	value=150;
	
	TEXT[0]			=   	"Bonus do many: "; 							COUNT[0]=40;
	TEXT[4]			= 		"Czas trwania (min.):";							COUNT[4]=3;
	TEXT[5]			= 		NAME_Value;										COUNT[5]=item.value;
	visual 			=		"ITPO_PERM_MANA.3ds";
	range=8;
};

INSTANCE Itpo_TIME_EDGE_1(ItPo_Time)
{

	name				="Eliksir";
	description		= 	"Dêbowy wyci¹g";

	value=	80;
	
	TEXT[0]			=   	NAME_Prot_Edge; 							COUNT[0]=15;
	TEXT[1]			=   	"Ochrona przed obuchami:"; 				COUNT[1]=15;
	TEXT[2]			=   	NAME_Prot_Point; 							COUNT[2]=15;
	TEXT[4]			= 		"Czas trwania (min.):";						COUNT[4]=2;
	TEXT[5]			= 		NAME_Value;									COUNT[5]=item.value;
	visual 			=		"Time_Potion_EDGE_01.3ds";
	range=9;
};
INSTANCE Itpo_TIME_EDGE_2(ItPo_Time)
{

	name				="Eliksir";
	description		= 	"Górska woda";

	value=240;
	
	TEXT[0]			=   	NAME_Prot_Edge; 							COUNT[0]=25;
	TEXT[1]			=   	"Ochrona przed obuchami:"; 				COUNT[1]=25;
	TEXT[2]			=   	NAME_Prot_Point; 							COUNT[2]=25;
	TEXT[4]			= 		"Czas trwania (min.):";						COUNT[4]=3;
	TEXT[5]			= 		NAME_Value;									COUNT[5]=item.value;
	visual 			=		"Time_Potion_EDGE_02.3ds";
	range=10;
};
INSTANCE Itpo_TIME_Magic_1(ItPo_Time)
{

	name				="Eliksir";
	description		= 	"Smoczy oddech";

	value=80;
	
	TEXT[0]			=   	NAME_Prot_Fire; 							COUNT[0]=15;
	TEXT[1]			=   	NAME_Prot_Magic; 							COUNT[1]=15;
	TEXT[4]			= 		"Czas trwania (min.):";						COUNT[4]=2;
	TEXT[5]			= 		NAME_Value;									COUNT[5]=item.value;
	visual 			=		"Time_Potion_ProtMagic_01.3ds";
	range=11;
};
INSTANCE Itpo_TIME_Magic_2(ItPo_Time)
{

	name				="Eliksir";
	description		= 	"Smocza krew";

	value				=	240;
	
	TEXT[0]			=   	NAME_Prot_Fire; 							COUNT[0]=25;
	TEXT[1]			=   	NAME_Prot_Magic; 							COUNT[1]=25;
	TEXT[4]			= 		"Czas trwania (min.):";						COUNT[4]=3;
	TEXT[5]			= 		NAME_Value;									COUNT[5]=item.value;
	visual 			=		"Time_Potion_ProtMagic_02.3ds";
	range=12;
};

INSTANCE Itpo_TIME_StunBash(ItPo_Time)
{

	name				="Eliksir";
	description		= 	"Uderzenie golema";

	value				=	350;
	
	TEXT[0]			=   	"Daje szanse na og³uszenie przeciwników"; 							
	TEXT[1]			=   	"w czasie walki wrêcz"; 							
	TEXT[4]			= 		"Czas trwania (sek.):";						COUNT[4]=30;
	TEXT[5]			= 		NAME_Value;									COUNT[5]=item.value;
	
	range=13;
};

INSTANCE Itse_PotionsWorek(C_Item)
{
	name 					=	"Torba pe³na eliksirów";

	mainflag 				=	ITEM_KAT_NONE;
	flags 						=	ITEM_MISSION;

	value 					=	0;

	visual 					=	"ItMi_Pocket.3ds";
	scemename			=	"MAPSEALED";	
	material 				=	MAT_METAL;
	on_state[0]			=   Use_PotionsWorek;
	description				= 	name;
	TEXT[5]					= 	NAME_Value;	COUNT[5]	= value;
};

FUNC VOID Use_PotionsWorek ()
{
	CreateInvItems (self, ItPo_Time_STR_1,5);
	CreateInvItems (self, ItPo_Time_STR_2,5);
	CreateInvItems (self, Itpo_TIME_DEX_1,5);
	CreateInvItems (self, Itpo_TIME_DEX_2,5);
	CreateInvItems (self, Itpo_TIME_HP_1,5);
	CreateInvItems (self, Itpo_TIME_HP_2,5);
	CreateInvItems (self, Itpo_TIME_MP_1,5);
	CreateInvItems (self, Itpo_TIME_MP_2,5);
	CreateInvItems (self, Itpo_TIME_EDGE_1,5);
	CreateInvItems (self, Itpo_TIME_EDGE_2,5);
	CreateInvItems (self, Itpo_TIME_Magic_1,5);
	CreateInvItems (self, Itpo_TIME_Magic_2,5);
	CreateInvItems (self, Itpo_TIME_StunBash,5);
};

