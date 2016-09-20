
func int b_dementorspecialdamage(var C_NPC oth,var C_NPC slf)
{

	if(slf.guild == GIL_DMT)
	{
		if(slf.attribute[ATR_HITPOINTS]<300)&&(slf.aivar[AIV_IGNORE_SHEEPKILLER]==FALSE)
		{
		Wld_SpawnNpcRange(slf,SKELETON,1,400);
		slf.aivar[AIV_IGNORE_SHEEPKILLER]=TRUE;
		slf.attribute[ATR_HITPOINTS] = slf.attribute[ATR_HITPOINTS_MAX];
		Wld_PlayEffect("SPELLFX_INCOVATION_VIOLET",slf,slf,0,0,0,FALSE);
		AI_PlayAni			(oth, "T_PSI_VICTIM");
		AI_PlayAni			(slf, "T_PRACTICEMAGIC5");
		};
		return FALSE;
	};
};
func int b_ghostspecialdamage(var C_NPC oth,var C_NPC slf)
{
	var C_NPC quarho;
	var C_NPC rhadem;
	var C_NPC her;
	quarho = Hlp_GetNpc(none_addon_111_quarhodron);
	rhadem = Hlp_GetNpc(none_addon_112_rhademes);
	her = Hlp_GetNpc(pc_hero);
	if((Hlp_GetInstanceID(self) == Hlp_GetInstanceID(quarho)) || (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(rhadem)))
	{
		Wld_PlayEffect("spellFX_BELIARSRAGE",oth,oth,0,0,0,FALSE);
		if(oth.flags != NPC_FLAG_IMMORTAL)
		{
			if(Hlp_GetInstanceID(oth) != Hlp_GetInstanceID(her))
			{
				Npc_ChangeAttribute(oth,ATR_HITPOINTS,-oth.attribute[ATR_HITPOINTS_MAX]);
			}
			else
			{
				GHOSTATTACKWARN = GHOSTATTACKWARN + 1;
				if(GHOSTATTACKWARN < 3)
				{
					oth.attribute[ATR_HITPOINTS] = oth.attribute[ATR_HITPOINTS] / 2;
				}
				else if(Hlp_GetInstanceID(oth) == Hlp_GetInstanceID(her))
				{
					oth.attribute[ATR_HITPOINTS] = 0;
					AI_PlayAni(oth,"T_DEAD");
				};
			};
		};
		return FALSE;
	};
};

