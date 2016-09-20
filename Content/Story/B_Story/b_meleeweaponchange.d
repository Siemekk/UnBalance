
var int playeristransformed;
var int hitchancebackuponeh;
var int hitchancebackuptwoh;
var int manamaxbackup;
var int meleeweaponchangedhero;
var int changedmanahero;
var int changedonehhero;
var int changedtwohhero;
var int scriptpatchweaponchange;

func void b_meleeweaponchange(var int oneh,var int twoh,var int manamax)
{
	MELEEWEAPONCHANGEDHERO = TRUE;
	CHANGEDMANAHERO = manamax;
	CHANGEDONEHHERO = oneh;
	CHANGEDTWOHHERO = twoh;
	SCRIPTPATCHWEAPONCHANGE = TRUE;
};

func void b_meleeweaponundochange()
{
	MELEEWEAPONCHANGEDHERO = FALSE;
	CHANGEDMANAHERO = 0;
	CHANGEDONEHHERO = 0;
	CHANGEDTWOHHERO = 0;
	SCRIPTPATCHWEAPONCHANGE = TRUE;
};

func void b_startmagictransform()
{
	if(!PLAYERISTRANSFORMED)
	{
		PLAYERISTRANSFORMED = TRUE;
		HITCHANCEBACKUPONEH = hero.hitchance[NPC_TALENT_1H] - CHANGEDONEHHERO;
		HITCHANCEBACKUPTWOH = hero.hitchance[NPC_TALENT_2H] - CHANGEDTWOHHERO;
		MANAMAXBACKUP = hero.attribute[ATR_MANA_MAX] - CHANGEDMANAHERO;
		b_meleeweaponundochange();
	};
};

func void b_stopmagictransform()
{
	if(PLAYERISTRANSFORMED)
	{
		if(HITCHANCEBACKUPONEH != hero.hitchance[NPC_TALENT_1H])
		{
			b_addfightskill(hero,NPC_TALENT_1H,(HITCHANCEBACKUPONEH - hero.hitchance[NPC_TALENT_1H]) + CHANGEDONEHHERO);
		};
		if(HITCHANCEBACKUPTWOH != hero.hitchance[NPC_TALENT_2H])
		{
			b_addfightskill(hero,NPC_TALENT_2H,(HITCHANCEBACKUPTWOH - hero.hitchance[NPC_TALENT_2H]) + CHANGEDTWOHHERO);
		};
		if(MANAMAXBACKUP != hero.attribute[ATR_MANA_MAX])
		{
			hero.attribute[ATR_MANA_MAX] = MANAMAXBACKUP + CHANGEDMANAHERO;
		};
		AI_UnequipWeapons(hero);
		PLAYERISTRANSFORMED = FALSE;
	};
};

