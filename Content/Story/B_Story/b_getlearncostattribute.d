
func int b_getlearncostattribute(var C_NPC oth,var int attribut)
{
	var int kosten;
	kosten = 0;
	if(attribut == ATR_STRENGTH)
	{
		if(oth.aivar[REAL_STRENGTH] >= 200)
		{
			kosten = 5;
		}
		else if(oth.aivar[REAL_STRENGTH] >= 150)
		{
			kosten = 4;
		}
		else if(oth.aivar[REAL_STRENGTH] >= 100)
		{
			kosten = 3;
		}
		else if(oth.aivar[REAL_STRENGTH] >= 50)
		{
			kosten = 2;
		}
		else
		{
			kosten = 1;
		};
	};
	if(attribut == ATR_DEXTERITY)
	{
		if(oth.aivar[REAL_DEXTERITY] >= 200)
		{
			kosten = 5;
		}
		else if(oth.aivar[REAL_DEXTERITY] >= 150)
		{
			kosten = 4;
		}
		else if(oth.aivar[REAL_DEXTERITY] >= 100)
		{
			kosten = 3;
		}
		else if(oth.aivar[REAL_DEXTERITY] >= 50)
		{
			kosten = 2;
		}
		else
		{
			kosten = 1;
		};
	};
	if(attribut == ATR_MANA_MAX)
	{
		if(oth.aivar[REAL_MANA_MAX] >= 350)
		{
			kosten = 5;
		}
		else if(oth.aivar[REAL_MANA_MAX] >= 340)
		{
			kosten = 4;
		}
		else if(oth.aivar[REAL_MANA_MAX] >= 330)
		{
			kosten = 3;
		}
		else if(oth.aivar[REAL_MANA_MAX] >= 60)
		{
			kosten = 2;
		}
		else
		{
			kosten = 1;
		};
	};

	return kosten;
};

