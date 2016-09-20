
var int hero_2h_max_bonus;

func void equip_2h_01()
{
	if(Npc_IsPlayer(self))
	{
		if((self.hitchance[NPC_TALENT_2H] + WAFFENBONUS_01) > 100)
		{
			HERO_2H_MAX_BONUS = 100 - self.hitchance[NPC_TALENT_2H];
			b_addfightskill(self,NPC_TALENT_2H,HERO_2H_MAX_BONUS);
			b_meleeweaponchange(0,HERO_2H_MAX_BONUS,0);
		}
		else
		{
			HERO_2H_MAX_BONUS = -1;
			b_addfightskill(self,NPC_TALENT_2H,WAFFENBONUS_01);
			b_meleeweaponchange(0,WAFFENBONUS_01,0);
		};
	};
};

func void unequip_2h_01()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		if(HERO_2H_MAX_BONUS < 0)
		{
			b_addfightskill(self,NPC_TALENT_2H,-WAFFENBONUS_01);
			b_meleeweaponundochange();
		}
		else
		{
			b_addfightskill(self,NPC_TALENT_2H,-HERO_2H_MAX_BONUS);
			b_meleeweaponundochange();
		};
	};
};

func void equip_2h_02()
{
	if(Npc_IsPlayer(self))
	{
		if((self.hitchance[NPC_TALENT_2H] + WAFFENBONUS_02) > 100)
		{
			HERO_2H_MAX_BONUS = 100 - self.hitchance[NPC_TALENT_2H];
			b_addfightskill(self,NPC_TALENT_2H,HERO_2H_MAX_BONUS);
			b_meleeweaponchange(0,HERO_2H_MAX_BONUS,0);
		}
		else
		{
			HERO_2H_MAX_BONUS = -1;
			b_addfightskill(self,NPC_TALENT_2H,WAFFENBONUS_02);
			b_meleeweaponchange(0,WAFFENBONUS_02,0);
		};
	};
};

func void unequip_2h_02()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		if(HERO_2H_MAX_BONUS < 0)
		{
			b_addfightskill(self,NPC_TALENT_2H,-WAFFENBONUS_02);
			b_meleeweaponundochange();
		}
		else
		{
			b_addfightskill(self,NPC_TALENT_2H,-HERO_2H_MAX_BONUS);
			b_meleeweaponundochange();
		};
	};
};

func void equip_2h_03()
{
	if(Npc_IsPlayer(self))
	{
		if((self.hitchance[NPC_TALENT_2H] + WAFFENBONUS_03) > 100)
		{
			HERO_2H_MAX_BONUS = 100 - self.hitchance[NPC_TALENT_2H];
			b_addfightskill(self,NPC_TALENT_2H,HERO_2H_MAX_BONUS);
			b_meleeweaponchange(0,HERO_2H_MAX_BONUS,0);
		}
		else
		{
			HERO_2H_MAX_BONUS = -1;
			b_addfightskill(self,NPC_TALENT_2H,WAFFENBONUS_03);
			b_meleeweaponchange(0,WAFFENBONUS_03,0);
		};
	};
};

func void unequip_2h_03()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		if(HERO_2H_MAX_BONUS < 0)
		{
			b_addfightskill(self,NPC_TALENT_2H,-WAFFENBONUS_03);
			b_meleeweaponundochange();
		}
		else
		{
			b_addfightskill(self,NPC_TALENT_2H,-HERO_2H_MAX_BONUS);
			b_meleeweaponundochange();
		};
	};
};

func void equip_2h_04()
{
	if(Npc_IsPlayer(self))
	{
		if((self.hitchance[NPC_TALENT_2H] + WAFFENBONUS_04) > 100)
		{
			HERO_2H_MAX_BONUS = 100 - self.hitchance[NPC_TALENT_2H];
			b_addfightskill(self,NPC_TALENT_2H,HERO_2H_MAX_BONUS);
			b_meleeweaponchange(0,HERO_2H_MAX_BONUS,0);
		}
		else
		{
			HERO_2H_MAX_BONUS = -1;
			b_addfightskill(self,NPC_TALENT_2H,WAFFENBONUS_04);
			b_meleeweaponchange(0,WAFFENBONUS_04,0);
		};
	};
};

func void unequip_2h_04()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		if(HERO_2H_MAX_BONUS < 0)
		{
			b_addfightskill(self,NPC_TALENT_2H,-WAFFENBONUS_04);
			b_meleeweaponundochange();
		}
		else
		{
			b_addfightskill(self,NPC_TALENT_2H,-HERO_2H_MAX_BONUS);
			b_meleeweaponundochange();
		};
	};
};

func void equip_2h_05()
{
	if(Npc_IsPlayer(self))
	{
		if((self.hitchance[NPC_TALENT_2H] + WAFFENBONUS_05) > 100)
		{
			HERO_2H_MAX_BONUS = 100 - self.hitchance[NPC_TALENT_2H];
			b_addfightskill(self,NPC_TALENT_2H,HERO_2H_MAX_BONUS);
			b_meleeweaponchange(0,HERO_2H_MAX_BONUS,0);
		}
		else
		{
			HERO_2H_MAX_BONUS = -1;
			b_addfightskill(self,NPC_TALENT_2H,WAFFENBONUS_05);
			b_meleeweaponchange(0,WAFFENBONUS_05,0);
		};
	};
};

func void unequip_2h_05()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		if(HERO_2H_MAX_BONUS < 0)
		{
			b_addfightskill(self,NPC_TALENT_2H,-WAFFENBONUS_05);
			b_meleeweaponundochange();
		}
		else
		{
			b_addfightskill(self,NPC_TALENT_2H,-HERO_2H_MAX_BONUS);
			b_meleeweaponundochange();
		};
	};
};

func void equip_2h_06()
{
	if(Npc_IsPlayer(self))
	{
		if((self.hitchance[NPC_TALENT_2H] + WAFFENBONUS_06) > 100)
		{
			HERO_2H_MAX_BONUS = 100 - self.hitchance[NPC_TALENT_2H];
			b_addfightskill(self,NPC_TALENT_2H,HERO_2H_MAX_BONUS);
			b_meleeweaponchange(0,HERO_2H_MAX_BONUS,0);
		}
		else
		{
			HERO_2H_MAX_BONUS = -1;
			b_addfightskill(self,NPC_TALENT_2H,WAFFENBONUS_06);
			b_meleeweaponchange(0,WAFFENBONUS_06,0);
		};
	};
};

func void unequip_2h_06()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		if(HERO_2H_MAX_BONUS < 0)
		{
			b_addfightskill(self,NPC_TALENT_2H,-WAFFENBONUS_06);
			b_meleeweaponundochange();
		}
		else
		{
			b_addfightskill(self,NPC_TALENT_2H,-HERO_2H_MAX_BONUS);
			b_meleeweaponundochange();
		};
	};
};

func void equip_2h_07()
{
	if(Npc_IsPlayer(self))
	{
		if((self.hitchance[NPC_TALENT_2H] + WAFFENBONUS_07) > 100)
		{
			HERO_2H_MAX_BONUS = 100 - self.hitchance[NPC_TALENT_2H];
			b_addfightskill(self,NPC_TALENT_2H,HERO_2H_MAX_BONUS);
			b_meleeweaponchange(0,HERO_2H_MAX_BONUS,0);
		}
		else
		{
			HERO_2H_MAX_BONUS = -1;
			b_addfightskill(self,NPC_TALENT_2H,WAFFENBONUS_07);
			b_meleeweaponchange(0,WAFFENBONUS_07,0);
		};
	};
};

func void unequip_2h_07()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		if(HERO_2H_MAX_BONUS < 0)
		{
			b_addfightskill(self,NPC_TALENT_2H,-WAFFENBONUS_07);
			b_meleeweaponundochange();
		}
		else
		{
			b_addfightskill(self,NPC_TALENT_2H,-HERO_2H_MAX_BONUS);
			b_meleeweaponundochange();
		};
	};
};

func void equip_2h_08()
{
	if(Npc_IsPlayer(self))
	{
		if((self.hitchance[NPC_TALENT_2H] + WAFFENBONUS_08) > 100)
		{
			HERO_2H_MAX_BONUS = 100 - self.hitchance[NPC_TALENT_2H];
			b_addfightskill(self,NPC_TALENT_2H,HERO_2H_MAX_BONUS);
			b_meleeweaponchange(0,HERO_2H_MAX_BONUS,0);
		}
		else
		{
			HERO_2H_MAX_BONUS = -1;
			b_addfightskill(self,NPC_TALENT_2H,WAFFENBONUS_08);
			b_meleeweaponchange(0,WAFFENBONUS_08,0);
		};
	};
};

func void unequip_2h_08()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		if(HERO_2H_MAX_BONUS < 0)
		{
			b_addfightskill(self,NPC_TALENT_2H,-WAFFENBONUS_08);
			b_meleeweaponundochange();
		}
		else
		{
			b_addfightskill(self,NPC_TALENT_2H,-HERO_2H_MAX_BONUS);
			b_meleeweaponundochange();
		};
	};
};

func void equip_2h_09()
{
	if(Npc_IsPlayer(self))
	{
		if((self.hitchance[NPC_TALENT_2H] + WAFFENBONUS_09) > 100)
		{
			HERO_2H_MAX_BONUS = 100 - self.hitchance[NPC_TALENT_2H];
			b_addfightskill(self,NPC_TALENT_2H,HERO_2H_MAX_BONUS);
			b_meleeweaponchange(0,HERO_2H_MAX_BONUS,0);
		}
		else
		{
			HERO_2H_MAX_BONUS = -1;
			b_addfightskill(self,NPC_TALENT_2H,WAFFENBONUS_09);
			b_meleeweaponchange(0,WAFFENBONUS_09,0);
		};
	};
};

func void unequip_2h_09()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		if(HERO_2H_MAX_BONUS < 0)
		{
			b_addfightskill(self,NPC_TALENT_2H,-WAFFENBONUS_09);
			b_meleeweaponundochange();
		}
		else
		{
			b_addfightskill(self,NPC_TALENT_2H,-HERO_2H_MAX_BONUS);
			b_meleeweaponundochange();
		};
	};
};

func void equip_2h_10()
{
	if(Npc_IsPlayer(self))
	{
		if((self.hitchance[NPC_TALENT_2H] + WAFFENBONUS_10) > 100)
		{
			HERO_2H_MAX_BONUS = 100 - self.hitchance[NPC_TALENT_2H];
			b_addfightskill(self,NPC_TALENT_2H,HERO_2H_MAX_BONUS);
			b_meleeweaponchange(0,HERO_2H_MAX_BONUS,0);
		}
		else
		{
			HERO_2H_MAX_BONUS = -1;
			b_addfightskill(self,NPC_TALENT_2H,WAFFENBONUS_10);
			b_meleeweaponchange(0,WAFFENBONUS_10,0);
		};
	};
};

func void unequip_2h_10()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		if(HERO_2H_MAX_BONUS < 0)
		{
			b_addfightskill(self,NPC_TALENT_2H,-WAFFENBONUS_10);
			b_meleeweaponundochange();
		}
		else
		{
			b_addfightskill(self,NPC_TALENT_2H,-HERO_2H_MAX_BONUS);
			b_meleeweaponundochange();
		};
	};
};

func void equip_2h_15()
{
	if(Npc_IsPlayer(self))
	{
		if((self.hitchance[NPC_TALENT_2H] + WAFFENBONUS_15) > 100)
		{
			HERO_2H_MAX_BONUS = 100 - self.hitchance[NPC_TALENT_2H];
			b_addfightskill(self,NPC_TALENT_2H,HERO_2H_MAX_BONUS);
			b_meleeweaponchange(0,HERO_2H_MAX_BONUS,0);
		}
		else
		{
			HERO_2H_MAX_BONUS = -1;
			b_addfightskill(self,NPC_TALENT_2H,WAFFENBONUS_15);
			b_meleeweaponchange(0,WAFFENBONUS_15,0);
		};
	};
};

func void unequip_2h_15()
{
	if(Npc_IsPlayer(self) && (MELEEWEAPONCHANGEDHERO || (SCRIPTPATCHWEAPONCHANGE == FALSE)))
	{
		if(HERO_2H_MAX_BONUS < 0)
		{
			b_addfightskill(self,NPC_TALENT_2H,-WAFFENBONUS_15);
			b_meleeweaponundochange();
		}
		else
		{
			b_addfightskill(self,NPC_TALENT_2H,-HERO_2H_MAX_BONUS);
			b_meleeweaponundochange();
		};
	};
};

