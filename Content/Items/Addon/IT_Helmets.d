Prototype Helm_Proto (C_ITEM)
{
	name = "He�m";  //Nazwa
	mainflag = ITEM_KAT_ARMOR;   
	flags = 0;
	protection[PROT_EDGE] 		= 1;
	protection[PROT_BLUNT] 	= 1;
	protection[PROT_POINT] 	= 1;
	protection[PROT_FIRE] 		= 1;
	protection[PROT_MAGIC] 	= 1;
	value = 1;
	wear = WEAR_HEAD;
	visual = "Helm.3ds"; 
	visual_skin = 0;
	material = MAT_METAL;   
	description = name;
	text[0] = "Prototyp he�mu"; 
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

INSTANCE ITAR_Helm_MIL (Helm_Proto)
{
	name="He�m stra�nika";

	protection[PROT_EDGE] 		= 10;
	protection[PROT_BLUNT] 	= 10;
	protection[PROT_POINT] 	= 7;
	protection[PROT_FIRE] 		= 3;
	protection[PROT_MAGIC] 	= 1;

	value		=  500;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	30;
	
	visual		="ITAR_HELM_01.3ds";
	
	description			= 	name;
	
	Text[0]		="Stalowy he�m, u�ywany przez wi�kszo�� stra�nik�w.";
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

/**********************************/
INSTANCE ITAR_Helm_SLD(Helm_Proto)
{
	name="He�m najemika";
	
	protection[PROT_EDGE] 		= 10;
	protection[PROT_BLUNT] 	= 10;
	protection[PROT_POINT] 	= 8;
	protection[PROT_FIRE] 		= 2;
	protection[PROT_MAGIC] 	= 1;

	value		=  700;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	40;
	
	visual		="ITAR_HELM_02.3ds";
	
	description			= 	name;
	Text[0]		="He�m u�ywany przez najemnik�w. Wygl�da na wytrzyma�y...";
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

/**********************************/
INSTANCE ITAR_Helm_Demon(Helm_Proto)
{
	name="He�m demona";

	protection[PROT_EDGE] 		= 15;
	protection[PROT_BLUNT] 	= 15;
	protection[PROT_POINT] 	= 10;
	protection[PROT_FIRE] 		= 8;
	protection[PROT_MAGIC] 	= 8;

	value		=  2000;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	100;
	
	visual		="ITAR_Helm_Demon.3ds";

	description			= 	name;	
	Text[0]		="He�m przepe�niony jest mroczn� energi�...";
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

/**********************************/
INSTANCE ITAR_Helm_Pal(Helm_Proto)
{
	name="He�m drugiego paladyna";

	protection[PROT_EDGE] 		= 15;
	protection[PROT_BLUNT] 	= 15;
	protection[PROT_POINT] 	= 10;
	protection[PROT_FIRE] 		= 5;
	protection[PROT_MAGIC] 	= 5;

	value		=  1500;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	90;
	
	visual		="ITAR_HELM_G3_02.3ds";

	description			= 	name;	
	Text[0]		="Legendarny he�m drugiego wojownika Innosa.";
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

/**********************************/
INSTANCE ITAR_Helm_DJG(Helm_Proto)
{
	name="Rogaty he�m";

	protection[PROT_EDGE] 		= 20;
	protection[PROT_BLUNT] 	= 20;
	protection[PROT_POINT] 	= 15;
	protection[PROT_FIRE] 		= 3;
	protection[PROT_MAGIC] 	= 1;

	value		=  1500;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	90;
	
	visual		="ITAR_HELM_G3_04.3ds";

	description			= 	name;	
	Text[0]		="He�m jest bardzo wytrzyma�y, lecz bardzo podatny na magi�.";
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

/**********************************/
INSTANCE ITAR_Helm_Undeads(Helm_Proto)
{
	name="Przekl�ty he�m";
	mainflag = ITEM_KAT_ARMOR	|	ITEM_KAT_NF;   
	protection[PROT_EDGE] 		= 15;
	protection[PROT_BLUNT] 	= 15;
	protection[PROT_POINT] 	= 15;
	protection[PROT_FIRE] 		= 15;
	protection[PROT_MAGIC] 	= 15;

	value		=  500;
	
	visual		="ITAR_HELM_G3_06.3ds";

	description			= 	name;	
	Text[0]		="He�m jest noszony przez przekl�tych.";
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

/**********************************/
INSTANCE ITAR_Helm_INUBIS(Helm_Proto)
{
	name	="He�m pana cieni";

	protection[PROT_EDGE] 		= 30;
	protection[PROT_BLUNT] 	= 30;
	protection[PROT_POINT] 	= 30;
	protection[PROT_FIRE] 		= 15;
	protection[PROT_MAGIC] 	= 15;

	value		=  5000;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	135;
		
	visual		="ITAR_HELM_UNDEADKING.3ds";

	description			= 	name;	
	Text[0]		="Pot�ny he�m, kt�ry nale�a� do pana cieni Inubisa.";
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};


/*********************************************************/
INSTANCE Itar_Helm_paladin_npc(Helm_Proto)
{
mainflag = ITEM_KAT_ARMOR	|	ITEM_KAT_NF;   
visual="greathelm.3ds";
};

/*********************************************************/
INSTANCE ITAR_Helm_SLD_NPC(Helm_Proto)
{
	name="He�m najemika";
	mainflag = ITEM_KAT_ARMOR	|	ITEM_KAT_NF; 
	protection[PROT_EDGE] 		= 10;
	protection[PROT_BLUNT] 	= 10;
	protection[PROT_POINT] 	= 8;
	protection[PROT_FIRE] 		= 2;
	protection[PROT_MAGIC] 	= 1;

	value		=  700;
	
	cond_atr[2]   		= 	ATR_STRENGTH;
	cond_value[2]  		= 	40;
	
	visual		="ITAR_HELM_02.3ds";
	
	description			= 	name;
	Text[0]		="He�m u�ywany przez najemnik�w. Wygl�da na wytrzyma�y...";
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};
/*********************************************************/
INSTANCE Itse_HelmsWorek(C_Item)
{
	name 				=	"Torba pe�na he�m�w";

	mainflag 			=	ITEM_KAT_NONE;
	flags 				=	ITEM_MISSION;

	value 				=	0;

	visual 				=	"ItMi_Pocket.3ds";
	scemename			=	"MAPSEALED";	
	material 			=	MAT_METAL;
	on_state[0]			=   Use_HelmsWorek;
	description			= 	"Worek pe�en he�m�w.";
	TEXT[5]				= 	NAME_Value;	COUNT[5]	= value;
};

FUNC VOID Use_HelmsWorek ()
{
	CreateInvItems (self, ITAR_Helm_MIL,1);
	CreateInvItems (self, ITAR_Helm_SLD,1);
	CreateInvItems (self, ITAR_Helm_Demon,1);
	CreateInvItems (self, Itar_Helm_paladin_npc,1);
	CreateInvItems (self, ITAR_Helm_Pal,1);
	CreateInvItems (self, ITAR_Helm_DJG,1);
	CreateInvItems (self, ITAR_Helm_Undeads,1);
	CreateInvItems (self, ITAR_Helm_INUBIS,1);
};