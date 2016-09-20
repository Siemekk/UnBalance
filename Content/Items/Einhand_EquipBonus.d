
INSTANCE TICK(C_Item)
{
	name 				=	"";//zeby nie było widać nazwy
	flags 				=	-1;//zeby nie móc podnieść
	visual 				=	"PER_FRAMETICK.ZEN";//nazwa naszego zen`a w którym zapisany jest tylko tick_tock
};
var int hero_1h_max_bonus;

func void equip_1h_01()
{
	if(Npc_IsPlayer(self))
	{
		if((self.hitchance[NPC_TALENT_1H] + WAFFENBONUS_01) > 100)
		{
			HERO_1H_MAX_BONUS = 100 - self.hitchance[NPC_TALENT_1H];
			b_addfightskill(self,NPC_TALENT_1H,HERO_1H_MAX_BONUS);
			b_meleeweaponchange(HERO_1H_MAX_BONUS,0,0);
		}
		else
		{
			HERO_1H_MAX_BONUS = -1;
			b_addfightskill(self,NPC_TALENT_1H,WAFFENBONUS_01);
			b_meleeweaponchange(WAFFENBONUS_01,0,0);
		};
	};
};

func void unequip_1h_01()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		if(HERO_1H_MAX_BONUS < 0)
		{
			b_addfightskill(self,NPC_TALENT_1H,-WAFFENBONUS_01);
			b_meleeweaponundochange();
		}
		else
		{
			b_addfightskill(self,NPC_TALENT_1H,-HERO_1H_MAX_BONUS);
			b_meleeweaponundochange();
		};
	};
};

func void equip_1h_02()
{
	if(Npc_IsPlayer(self))
	{
		if((self.hitchance[NPC_TALENT_1H] + WAFFENBONUS_02) > 100)
		{
			HERO_1H_MAX_BONUS = 100 - self.hitchance[NPC_TALENT_1H];
			b_addfightskill(self,NPC_TALENT_1H,HERO_1H_MAX_BONUS);
			b_meleeweaponchange(HERO_1H_MAX_BONUS,0,0);
		}
		else
		{
			HERO_1H_MAX_BONUS = -1;
			b_addfightskill(self,NPC_TALENT_1H,WAFFENBONUS_02);
			b_meleeweaponchange(WAFFENBONUS_02,0,0);
		};
	};
};

func void unequip_1h_02()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		if(HERO_1H_MAX_BONUS < 0)
		{
			b_addfightskill(self,NPC_TALENT_1H,-WAFFENBONUS_02);
			b_meleeweaponundochange();
		}
		else
		{
			b_addfightskill(self,NPC_TALENT_1H,-HERO_1H_MAX_BONUS);
			b_meleeweaponundochange();
		};
	};
};

func void equip_1h_03()
{
	if(Npc_IsPlayer(self))
	{
		if((self.hitchance[NPC_TALENT_1H] + WAFFENBONUS_03) > 100)
		{
			HERO_1H_MAX_BONUS = 100 - self.hitchance[NPC_TALENT_1H];
			b_addfightskill(self,NPC_TALENT_1H,HERO_1H_MAX_BONUS);
			b_meleeweaponchange(HERO_1H_MAX_BONUS,0,0);
		}
		else
		{
			HERO_1H_MAX_BONUS = -1;
			b_addfightskill(self,NPC_TALENT_1H,WAFFENBONUS_03);
			b_meleeweaponchange(WAFFENBONUS_03,0,0);
		};
	};
};

func void unequip_1h_03()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		if(HERO_1H_MAX_BONUS < 0)
		{
			b_addfightskill(self,NPC_TALENT_1H,-WAFFENBONUS_03);
			b_meleeweaponundochange();
		}
		else
		{
			b_addfightskill(self,NPC_TALENT_1H,-HERO_1H_MAX_BONUS);
			b_meleeweaponundochange();
		};
	};
};

func void equip_1h_04()
{
	if(Npc_IsPlayer(self))
	{
		if((self.hitchance[NPC_TALENT_1H] + WAFFENBONUS_04) > 100)
		{
			HERO_1H_MAX_BONUS = 100 - self.hitchance[NPC_TALENT_1H];
			b_addfightskill(self,NPC_TALENT_1H,HERO_1H_MAX_BONUS);
			b_meleeweaponchange(HERO_1H_MAX_BONUS,0,0);
		}
		else
		{
			HERO_1H_MAX_BONUS = -1;
			b_addfightskill(self,NPC_TALENT_1H,WAFFENBONUS_04);
			b_meleeweaponchange(WAFFENBONUS_04,0,0);
		};
	};
};

func void unequip_1h_04()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		if(HERO_1H_MAX_BONUS < 0)
		{
			b_addfightskill(self,NPC_TALENT_1H,-WAFFENBONUS_04);
			b_meleeweaponundochange();
		}
		else
		{
			b_addfightskill(self,NPC_TALENT_1H,-HERO_1H_MAX_BONUS);
			b_meleeweaponundochange();
		};
	};
};

func void equip_1h_05()
{
	if(Npc_IsPlayer(self))
	{
		if((self.hitchance[NPC_TALENT_1H] + WAFFENBONUS_05) > 100)
		{
			HERO_1H_MAX_BONUS = 100 - self.hitchance[NPC_TALENT_1H];
			b_addfightskill(self,NPC_TALENT_1H,HERO_1H_MAX_BONUS);
			b_meleeweaponchange(HERO_1H_MAX_BONUS,0,0);
		}
		else
		{
			HERO_1H_MAX_BONUS = -1;
			b_addfightskill(self,NPC_TALENT_1H,WAFFENBONUS_05);
			b_meleeweaponchange(WAFFENBONUS_05,0,0);
		};
	};
};

func void unequip_1h_05()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		if(HERO_1H_MAX_BONUS < 0)
		{
			b_addfightskill(self,NPC_TALENT_1H,-WAFFENBONUS_05);
			b_meleeweaponundochange();
		}
		else
		{
			b_addfightskill(self,NPC_TALENT_1H,-HERO_1H_MAX_BONUS);
			b_meleeweaponundochange();
		};
	};
};

func void equip_1h_06()
{
	if(Npc_IsPlayer(self))
	{
		if((self.hitchance[NPC_TALENT_1H] + WAFFENBONUS_06) > 100)
		{
			HERO_1H_MAX_BONUS = 100 - self.hitchance[NPC_TALENT_1H];
			b_addfightskill(self,NPC_TALENT_1H,HERO_1H_MAX_BONUS);
			b_meleeweaponchange(HERO_1H_MAX_BONUS,0,0);
		}
		else
		{
			HERO_1H_MAX_BONUS = -1;
			b_addfightskill(self,NPC_TALENT_1H,WAFFENBONUS_06);
			b_meleeweaponchange(WAFFENBONUS_06,0,0);
		};
	};
};

func void unequip_1h_06()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		if(HERO_1H_MAX_BONUS < 0)
		{
			b_addfightskill(self,NPC_TALENT_1H,-WAFFENBONUS_06);
			b_meleeweaponundochange();
		}
		else
		{
			b_addfightskill(self,NPC_TALENT_1H,-HERO_1H_MAX_BONUS);
			b_meleeweaponundochange();
		};
	};
};

func void equip_1h_07()
{
	if(Npc_IsPlayer(self))
	{
		if((self.hitchance[NPC_TALENT_1H] + WAFFENBONUS_07) > 100)
		{
			HERO_1H_MAX_BONUS = 100 - self.hitchance[NPC_TALENT_1H];
			b_addfightskill(self,NPC_TALENT_1H,HERO_1H_MAX_BONUS);
			b_meleeweaponchange(HERO_1H_MAX_BONUS,0,0);
		}
		else
		{
			HERO_1H_MAX_BONUS = -1;
			b_addfightskill(self,NPC_TALENT_1H,WAFFENBONUS_07);
			b_meleeweaponchange(WAFFENBONUS_07,0,0);
		};
	};
};

func void unequip_1h_07()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		if(HERO_1H_MAX_BONUS < 0)
		{
			b_addfightskill(self,NPC_TALENT_1H,-WAFFENBONUS_07);
			b_meleeweaponundochange();
		}
		else
		{
			b_addfightskill(self,NPC_TALENT_1H,-HERO_1H_MAX_BONUS);
			b_meleeweaponundochange();
		};
	};
};

func void equip_1h_08()
{
	if(Npc_IsPlayer(self))
	{
		if((self.hitchance[NPC_TALENT_1H] + WAFFENBONUS_08) > 100)
		{
			HERO_1H_MAX_BONUS = 100 - self.hitchance[NPC_TALENT_1H];
			b_addfightskill(self,NPC_TALENT_1H,HERO_1H_MAX_BONUS);
			b_meleeweaponchange(HERO_1H_MAX_BONUS,0,0);
		}
		else
		{
			HERO_1H_MAX_BONUS = -1;
			b_addfightskill(self,NPC_TALENT_1H,WAFFENBONUS_08);
			b_meleeweaponchange(WAFFENBONUS_08,0,0);
		};
	};
};

func void unequip_1h_08()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		if(HERO_1H_MAX_BONUS < 0)
		{
			b_addfightskill(self,NPC_TALENT_1H,-WAFFENBONUS_08);
			b_meleeweaponundochange();
		}
		else
		{
			b_addfightskill(self,NPC_TALENT_1H,-HERO_1H_MAX_BONUS);
			b_meleeweaponundochange();
		};
	};
};

func void equip_1h_09()
{
	if(Npc_IsPlayer(self))
	{
		if((self.hitchance[NPC_TALENT_1H] + WAFFENBONUS_09) > 100)
		{
			HERO_1H_MAX_BONUS = 100 - self.hitchance[NPC_TALENT_1H];
			b_addfightskill(self,NPC_TALENT_1H,HERO_1H_MAX_BONUS);
			b_meleeweaponchange(HERO_1H_MAX_BONUS,0,0);
		}
		else
		{
			HERO_1H_MAX_BONUS = -1;
			b_addfightskill(self,NPC_TALENT_1H,WAFFENBONUS_09);
			b_meleeweaponchange(WAFFENBONUS_09,0,0);
		};
	};
};

func void unequip_1h_09()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		if(HERO_1H_MAX_BONUS < 0)
		{
			b_addfightskill(self,NPC_TALENT_1H,-WAFFENBONUS_09);
			b_meleeweaponundochange();
		}
		else
		{
			b_addfightskill(self,NPC_TALENT_1H,-HERO_1H_MAX_BONUS);
			b_meleeweaponundochange();
		};
	};
};

func void equip_1h_10()
{
	if(Npc_IsPlayer(self))
	{
		if((self.hitchance[NPC_TALENT_1H] + WAFFENBONUS_10) > 100)
		{
			HERO_1H_MAX_BONUS = 100 - self.hitchance[NPC_TALENT_1H];
			b_addfightskill(self,NPC_TALENT_1H,HERO_1H_MAX_BONUS);
			b_meleeweaponchange(HERO_1H_MAX_BONUS,0,0);
		}
		else
		{
			HERO_1H_MAX_BONUS = -1;
			b_addfightskill(self,NPC_TALENT_1H,WAFFENBONUS_10);
			b_meleeweaponchange(WAFFENBONUS_10,0,0);
		};
	};
};

func void unequip_1h_10()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		if(HERO_1H_MAX_BONUS < 0)
		{
			b_addfightskill(self,NPC_TALENT_1H,-WAFFENBONUS_10);
			b_meleeweaponundochange();
		}
		else
		{
			b_addfightskill(self,NPC_TALENT_1H,-HERO_1H_MAX_BONUS);
			b_meleeweaponundochange();
		};
	};
};

