
func void b_raiserealfighttalentpercent(var C_NPC oth,var int talent,var int percent)
{
	if(talent == NPC_TALENT_1H)
	{
		oth.aivar[REAL_TALENT_1H] = oth.aivar[REAL_TALENT_1H] + percent;
		if(oth.aivar[REAL_TALENT_1H] > 100)
		{
			oth.aivar[REAL_TALENT_1H] = 100;
		};
	}
	else if(talent == NPC_TALENT_2H)
	{
		oth.aivar[REAL_TALENT_2H] = oth.aivar[REAL_TALENT_2H] + percent;
		if(oth.aivar[REAL_TALENT_2H] > 100)
		{
			oth.aivar[REAL_TALENT_2H] = 100;
		};
	}
	else if(talent == NPC_TALENT_BOW)
	{
		oth.aivar[REAL_TALENT_BOW] = oth.aivar[REAL_TALENT_BOW] + percent;
		if(oth.aivar[REAL_TALENT_BOW] > 100)
		{
			oth.aivar[REAL_TALENT_BOW] = 100;
		};
	}
	else if(talent == NPC_TALENT_CROSSBOW)
	{
		oth.aivar[REAL_TALENT_CROSSBOW] = oth.aivar[REAL_TALENT_CROSSBOW] + percent;
		if(oth.aivar[REAL_TALENT_CROSSBOW] > 100)
		{
			oth.aivar[REAL_TALENT_CROSSBOW] = 100;
		};
	};
};

func void b_raisefighttalent(var C_NPC oth,var int talent,var int percent)
{
	b_raiserealfighttalentpercent(oth,talent,percent);
	b_addfightskill(oth,talent,percent);
};

