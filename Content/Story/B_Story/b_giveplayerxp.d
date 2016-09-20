func void AddStaminaPerLevel()
{
if(Stamina_max<300)
	{
		Stamina_max+=10;
		stamina=Stamina_max;
	};
};
func void b_giveplayerxp(var int add_xp)
{
	var string msg;
	if(hero.level == 0)
	{
		hero.exp_next = 500;
	};
	hero.exp = hero.exp + add_xp;
	msg = PRINT_XPGAINED;
	msg = ConcatStrings(msg,IntToString(add_xp));
	Prints_Ext(msg,RGBA(52,200,24,255));
	if(hero.exp >= hero.exp_next)
	{
var int NextMaxExp;
hero.level = hero.level + 1;
NextMaxExp = hero.exp_next + ((hero.level + 1) * 500);
NextMaxExp = NextMaxExp - hero.exp_next;
hero.exp  	= hero.exp - hero.exp_next; 
hero.exp_next = NextMaxExp-250;
   
	
/********************************************************************/	
		var string hpmsg;
		
		hero.attribute[ATR_HITPOINTS_MAX] += HP_Per_Level;
		hero.attribute[ATR_HITPOINTS] = hero.attribute[ATR_HITPOINTS_MAX];
		
		hpmsg = "Punkty trafieñ + ";
		hpmsg=ConcatStrings(hpmsg,IntToString(HP_Per_Level));
		hpmsg=ConcatStrings(hpmsg," = ");
		hpmsg=ConcatStrings(hpmsg,IntToString(hero.attribute[ATR_HITPOINTS]));
		hpmsg=ConcatStrings(hpmsg,"/");
		hpmsg=ConcatStrings(hpmsg,IntToString(hero.attribute[ATR_HITPOINTS_MAX]));
		
		Prints_Ext(hpmsg,RGBA(255,100,100,255));
/********************************************************************/	
		var string mpmsg;
		
		hero.attribute[ATR_MANA_MAX] += 2;
		hero.attribute[ATR_MANA] = hero.attribute[ATR_MANA_MAX];
		
		mpmsg = "Max. mana + ";
		mpmsg=ConcatStrings(mpmsg,IntToString(2));
		mpmsg=ConcatStrings(mpmsg," = ");
		mpmsg=ConcatStrings(mpmsg,IntToString(hero.attribute[ATR_MANA]));
		mpmsg=ConcatStrings(mpmsg,"/");
		mpmsg=ConcatStrings(mpmsg,IntToString(hero.attribute[ATR_MANA_MAX]));
		
		Prints_Ext(mpmsg,RGBA(100,100,255,255));
/********************************************************************/	
		var string lpmsg;
		
		hero.lp += LP_PER_LEVEL;
		
		lpmsg=ConcatStrings("Punkty nauki + ",IntToString(LP_PER_LEVEL));
		lpmsg=ConcatStrings(lpmsg," = ");
		lpmsg=ConcatStrings(lpmsg,IntToString(hero.LP));
		Prints_Ext(lpmsg,RGBA(255,180,100,255));
/********************************************************************/	

		
		AddStaminaPerLevel();
		PrintS_LevelUP(PRINT_LEVELUP,RGBA(100,255,100,255));
		
		Snd_Play("LevelUp");
	};
	b_checklog();
};

