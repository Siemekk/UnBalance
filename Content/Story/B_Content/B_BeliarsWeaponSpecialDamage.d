var int ravenblitz;

func void b_beliarsweaponspecialdamage(var C_NPC oth,var C_NPC slf)
{
	var int ravenrandy;
	var int damagerandy;
	if(Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(raven))
	{
		Wld_PlayEffect("spellFX_BELIARSRAGE_COLLIDE",slf,slf,0,0,0,FALSE);
		if(RAVENBLITZ <= 0)
		{
			Wld_PlayEffect("spellFX_BELIARSRAGE",oth,oth,0,0,0,FALSE);
			b_magichurtnpc(slf,oth,50);
			RAVENBLITZ += 1;
		}
		else if(RAVENBLITZ >= 3)
		{
			ravenrandy = Hlp_Random(3);
			if(ravenrandy <= 50)
			{
				RAVENBLITZ = 0;
			};
		}
		else
		{
			RAVENBLITZ += 1;
		};
	}
	else if(Hlp_GetInstanceID(oth) == Hlp_GetInstanceID(hero))
	{
		damagerandy = Hlp_Random(100);
		if(c_schasreadiedbeliarsweapon() && (damagerandy <= BELIARDAMAGECHANCE))
		{
			if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_UNDEAD)
			{
				Wld_PlayEffect("spellFX_BELIARSRAGE",oth,oth,0,0,0,FALSE);
				b_magichurtnpc(slf,oth,100);
			}
			else if(slf.flags != NPC_FLAG_IMMORTAL)
			{
				Wld_PlayEffect("spellFX_BELIARSRAGE",slf,slf,0,0,0,FALSE);
				b_magichurtnpc(oth,slf,100);
			};
			Wld_PlayEffect("spellFX_BELIARSRAGE_COLLIDE",hero,hero,0,0,0,FALSE);
		};
		if(c_schasreadiedbeliarsweapon() && (damagerandy <= 50))
		{
			Wld_PlayEffect("spellFX_BELIARSRAGE_COLLIDE",hero,hero,0,0,0,FALSE);
		};
		var C_ITEM Mweapon; 
      var int EffectChance; 
      Mweapon = Npc_GetReadiedWeapon(hero); 
      EffectChance = Hlp_Random (100);

	  if(Staff_Skill){
		if 	((Npc_HasItems(hero, ITMW_DarkStaff) == TRUE && Hlp_IsItem(Mweapon, ITMW_DarkStaff) == TRUE))
		&& (EffectChance <= 4)  
      {     
		//AI_PlayAni			(self, "T_PSI_VICTIM" );
		AI_STARTSTATE(SELF,ZS_STUNED,0,"");
		Wld_PlayEffect("spellFX_Skull", slf, slf, 0, 0, 0, FALSE );
		Wld_PlayEffect("spellFX_INCOVATION_VIOLET", slf, slf, 0, 0, 0, FALSE );
	  // Wld_PlayEffect("spellFX_DestroyUndead",  slf, slf, 0, 0, 0, FALSE );
	  if(hero.attribute[ATR_MANA]<hero.attribute[ATR_MANA_MAX])
	  {
	   self.attribute[ATR_MANA] +=15;
		};
	};
	if 	((Npc_HasItems(hero, ITMW_WatterStaff) == TRUE && Hlp_IsItem(Mweapon, ITMW_WatterStaff) == TRUE))
	 && (EffectChance <= 5)  
      {     
		//AI_PlayAni			(self, "T_PSI_VICTIM" );
		AI_STARTSTATE(SELF,ZS_MAGICFREEZE,0,"");
		Wld_PlayEffect("SPELLFX_ICECUBE", slf, slf, 0, 0, 0, FALSE );
	  };
	 	if 	((Npc_HasItems(hero, ITMW_FireStaff) == TRUE && Hlp_IsItem(Mweapon, ITMW_FireStaff) == TRUE))
		&& (EffectChance <= 5)  
		{     
		//AI_PlayAni			(self, "T_PSI_VICTIM" );
		Npc_PlayAni(self,"S_FIRE_VICTIM");
		Ai_Wait(self,2);
		Npc_PlayAni(self,"S_FIRE_VICTIM");
		Wld_PlayEffect("spellFX_Pyrokinesis", slf, slf, 0, 0, 0, FALSE );
		};
	};
	
	
		if(Npc_HasReadiedMeleeWeapon(hero)&&(STUNBASH))
		&&(EffectChance<=50)
		{
			if(C_Npcishuman(slf))||(slf.guild==GIL_SKELETON)
			{
			
			AI_PlayAni			(slf, "T_FALLB_2_FALLENB" );
			AI_PlayAni			(slf, "S_FALLENB" );
			AI_PlayAni			(slf, "T_FALLENB_2_STAND" );	
			};
			Wld_PlayEffect("TempPotionFX_StunBash_2", slf, slf, 1, 0, DAM_MAGIC, FALSE);
			Wld_PlayEffect("TempPotionFX_StunBash_3", slf, slf, 1, 0, DAM_MAGIC, FALSE);
			Wld_PlayEffect("TempPotionFX_StunBash_4", slf, slf, 1, 0, DAM_MAGIC, FALSE);
			B_MagicHurtNpc(oth,slf,30);
		};
	};	 

		if (((Npc_HasItems(hero, ITMW_2H_BLESSED_01) == TRUE && Hlp_IsItem(Mweapon, ITMW_2H_BLESSED_01) == TRUE)||Npc_HasItems(hero, ITMW_1H_BLESSED_01) == TRUE && Hlp_IsItem(Mweapon, ITMW_1H_BLESSED_01) == TRUE)||((Npc_HasItems(hero, ITMW_2H_BLESSED_02) == TRUE && Hlp_IsItem(Mweapon, ITMW_2H_BLESSED_02) == TRUE)||Npc_HasItems(hero, ITMW_1H_BLESSED_02) == TRUE && Hlp_IsItem(Mweapon, ITMW_1H_BLESSED_02) == TRUE)||((Npc_HasItems(hero, ITMW_2H_BLESSED_03) == TRUE && Hlp_IsItem(Mweapon, ITMW_2H_BLESSED_03) == TRUE)||Npc_HasItems(hero, ITMW_1H_BLESSED_03) == TRUE && Hlp_IsItem(Mweapon, ITMW_1H_BLESSED_03) == TRUE))    
		&& (C_NpcIsUndead(slf))
		&& (EffectChance <= 50)  
		{     
		Wld_PlayEffect("spellFX_Destroyundead_COLLIDE", slf, slf, 0, 0, 0, FALSE );
		B_MagicHurtNpc (oth, slf, slf.attribute[ATR_HITPOINTS]/2);
		};
	
		
};

