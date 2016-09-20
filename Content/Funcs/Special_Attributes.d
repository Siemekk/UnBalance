func void Print_Huger(var int x, var int y){
var string msg;
msg = ConcatStrings ("G³ód: ",IntToString(hunger));
msg = ConcatStrings (msg,"%");
Print_Ext(x,y,msg,PF_FONT,RGBA(255,255,255,255),550);
};


func void Print_desire(var int x, var int y){
var string msg;
msg = ConcatStrings ("Pragnienie: ",IntToString(desire));
msg = ConcatStrings(msg,"%");
Print_Ext(x,y,msg,PF_FONT,RGBA(255,255,255,255),550);
};


func void Print_Fatigue(var int x, var int y){
				var string msg;
msg = ConcatStrings ("Zmêczenie: ",IntToString(Fatigue));
msg = ConcatStrings (msg,"%");
Print_Ext(x,y,msg,PF_FONT,RGBA(255,255,255,255),550);
};
var int MoreInfosInScreen;

func void Print_Infos_Trigger()
{
	if(!InfoManager_HasFinished())||
	(MEM_GAME.pause_screen)
	{
	return; //Break
	};

	if(MoreInfosInScreen)
	{
	Print_Huger(100,340);
	Print_desire(100,510);
	Print_Fatigue(100,680);	
	} 
	else if(!MoreInfosInScreen)
	{
		if(hunger>60)
		{
		Print_Huger(100,340);
		};
		
		if(desire>60)
		{
		Print_desire(100,510);
		};
		
		if(Fatigue>60)
		{
		Print_Fatigue(100,680);	
		};	
	};

};

func void  Add_Attributes_Varriables() //Called by 0.125 FF
{
var int H_V;//hunger
var int D_V;//desire
var int F_V;//Fatigue
	if(MEM_GAME.pause_screen)||(!NewAttributes){return; };//Break
	
	if(Hunger<100)
	{
	H_V += 1;
	};
	
	if(desire<100)
	{
	D_V += 1;
	};
	
	if(Fatigue<100)
	{
	F_V += 1;
	};
	
	if(H_V>=7680)&&(Hunger<100)
	{	
	hunger+=20;
	H_V = 0;
	};
	
	if(D_V>=5760)&&(desire<100)
	{
	Desire+=15;
	F_V	= 0;
	};
	
	if(F_V>=1920)&&(Fatigue<100)
	{
	Fatigue +=5;
	F_V	=	0;
	};
	
	if(Hunger>100)
	{
	Hunger = 100;
	};
	
	if(desire>100)
	{
	desire = 100;
	};
	
	if(Fatigue>100)
	{
	Fatigue = 100;
	};
	

	if(Hunger<100)
	{
	Hunger = 0;
	};
	
	if(desire<100)
	{
	desire = 0;
	};
	
	if(Fatigue<100)
	{
	Fatigue = 0;
	};
	
};


func void ChangeAttribute_Trigger()
{
	if(MEM_GAME.pause_screen)||(!NewAttributes){return; };//Break
	
	if(Hunger==100)
	{
	hero.attribute[ATR_HITPOINTS]-=1;
	};
	
	if(desire==100)
	{
	hero.attribute[ATR_HITPOINTS]-=1;
	};
	
	if(Fatigue==100)
	{
		var int Once;
		if(!once)
		{
		AI_StartState(other,zs_magicsleep,0,"");
		SleepFX_HeroSleep(Wld_GetHour()+12);
		};
		
	};

	if(Fatigue <100)&&(Once)
	{
	Once = 0; //debug this D:
	};
};


Func Void HP_PROC (var int procenty){

	if (Npc_IsPlayer(self)){

		var int HP_PROC; HP_PROC = ((hero.attribute[ATR_HITPOINTS_MAX]*procenty)/100);

		if (HP_PROC > 1){

			hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS] + HP_PROC;

		}else{

			hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS] + 1;

		};

		if (hero.attribute[ATR_HITPOINTS] > hero.attribute[ATR_HITPOINTS_MAX]){
			hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
		};

	}else{

			Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	procenty);

	};

};

Func Void MP_PROC (var int procenty){

	if (Npc_IsPlayer(self)){

		var int MP_PROC; MP_PROC = ((hero.attribute[ATR_MANA_MAX]*procenty)/100);

		if (MP_PROC > 1){

			hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA] + MP_PROC;

		}else{

			hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA] + 1;

		};

		if (hero.attribute[ATR_MANA] > hero.attribute[ATR_MANA_MAX]){
			hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
		};

	}else{

			Npc_ChangeAttribute	(self,	ATR_MANA,	procenty);

	};

};

func void Rechange_Attribute(){
if(item.range>0){
HP_PROC	(item.range);
if(Npc_IsPlayer(self)){
var string msg;
msg = ConcatStrings("Punkty trafieñ + ",inttostring(item.range));
msg = ConcatStrings(msg," = ");
msg = ConcatStrings(msg,inttostring(hero.attribute[ATR_HITPOINTS]));
msg = ConcatStrings(msg,"/");
msg = ConcatStrings(msg,inttostring(hero.attribute[ATR_HITPOINTS_MAX]));	
Prints_Ext(msg, RGBA(255,100,100,255) );		
};
if(Npc_IsPlayer(self)){//Stamina xD kurwa czemu chcia³em zmêczenie potionem liczyæ E:
if(item.cond_atr[0]>0){
Stamina += item.cond_atr[0];
var string cmsg;
cmsg = ConcatStrings("Wytrzyma³oœæ + ",inttostring(item.cond_atr[0]));
Prints_Ext(cmsg, RGBA(255,165,0,255) );
		};
	};
	
if(Npc_IsPlayer(self)){//G³ód
if(item.cond_atr[1]>0){
hunger -= item.cond_atr[1];
var string MSGG;
MSGG=ConcatStrings("G³ód + ",inttostring(item.cond_atr[1]));
Prints_Ext(MSGG, RGBA(255,255,255,255));
item.Text[2]="Zmniejsza g³ód o :";
item.count[2]=item.cond_atr[1];
		};
	};
};

if(Npc_IsPlayer(self)){ //Pragnienie
if(item.cond_atr[2]>0){
desire -=item.cond_atr[2];
var string MSGGG;
MSGGG =ConcatStrings("Pragnienie + ",inttostring(item.cond_atr[2]));
Prints_Ext(MSGGG, RGBA(0,160,255,255));
item.Text[3]="Zmniejsza pragnienie o :";
item.count[3]=item.cond_atr[2];
		};
	};

if(item.change_value[1]>0){
MP_PROC	(item.change_value[1]);
if(Npc_IsPlayer(self)){
var string comsg;
comsg = ConcatStrings("Punkty many + ",inttostring(item.change_value[1]));
comsg = ConcatStrings(comsg," = ");
comsg = ConcatStrings(comsg,inttostring(hero.attribute[ATR_HITPOINTS]));
comsg = ConcatStrings(comsg,"/");
comsg = ConcatStrings(comsg,inttostring(hero.attribute[ATR_HITPOINTS_MAX]));	
Prints_Ext(comsg,RGBA(100,100,255,255));		
};
};


};


