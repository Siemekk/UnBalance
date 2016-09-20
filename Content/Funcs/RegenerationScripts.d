func void RegenerateFunction()
{
var c_npc her; her = Hlp_GetNpc(pc_hero);

if(Regenerate_Mana_Skill)
{
if(MEM_Game.pause_screen == 0){
if(hero.attribute[ATR_MANA]<hero.attribute[ATR_MANA_MAX]){
if(Npc_IsInFightMode(her, FMODE_NONE))
{
hero.Attribute[ATR_MANA] += 2;
}
else
{
		hero.Attribute[ATR_MANA] += 1;
				};
			};
			if(hero.attribute[ATR_MANA]>=hero.attribute[ATR_MANA_MAX])
			{
			hero.attribute[ATR_MANA]=hero.attribute[ATR_MANA_MAX];
			};
		};
	};
};

func void RegenerateFunctionHP()
{
var c_npc her; her = Hlp_GetNpc(pc_hero);
if(Regenerate_HP_Skill)
{
	if(hero.attribute[ATR_HITPOINTS]<hero.attribute[ATR_HITPOINTS_MAX])
	{
		if(MEM_Game.pause_screen == 0)
		{
			if(Npc_IsInFightMode(her, FMODE_NONE))
			{
			hero.Attribute[ATR_HITPOINTS] += 3;
			}
			else
			{
		hero.Attribute[ATR_HITPOINTS] += 1;
			};
		};
	};
};
				if(hero.attribute[ATR_HITPOINTS]>=hero.attribute[ATR_HITPOINTS_MAX])
				{
				hero.attribute[ATR_HITPOINTS]=hero.attribute[ATR_HITPOINTS_MAX];
				};
};
