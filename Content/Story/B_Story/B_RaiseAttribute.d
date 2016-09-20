
func void b_raiserealattributelearncounter(var C_NPC oth,var int attrib,var int points)
{
	if(attrib == ATR_STRENGTH)
	{
		oth.aivar[REAL_STRENGTH] = oth.aivar[REAL_STRENGTH] + points;
	}
	else if(attrib == ATR_DEXTERITY)
	{
		oth.aivar[REAL_DEXTERITY] = oth.aivar[REAL_DEXTERITY] + points;
	}
	else if(attrib == ATR_MANA_MAX)
	{
		oth.aivar[REAL_MANA_MAX] = oth.aivar[REAL_MANA_MAX] + points;
	};
};

func void b_raiseattribute(var C_NPC oth,var int attrib,var int points)
{
	var string msg;
	if(attrib == ATR_STRENGTH)
	{
		oth.attribute[ATR_STRENGTH] = oth.attribute[ATR_STRENGTH] + points;
	msg=ConcatStrings("Siła + ",IntToString(points));
	msg=ConcatStrings(msg, " = ");
	msg=ConcatStrings(msg, IntToString(oth.attribute[ATR_STRENGTH]));
	Prints_Ext(msg,RGBA(255,255,100,255));
	};
	if(attrib == ATR_DEXTERITY)
	{
		oth.attribute[ATR_DEXTERITY] = oth.attribute[ATR_DEXTERITY] + points;

	msg=ConcatStrings("Zręczność + ",IntToString(points));
	msg=ConcatStrings(msg, " = ");
	msg=ConcatStrings(msg, IntToString(oth.attribute[ATR_DEXTERITY]));
	Prints_Ext(msg,RGBA(100,255,100,255));
	};
	if(attrib == ATR_MANA_MAX)
	{
		oth.attribute[ATR_MANA_MAX] = oth.attribute[ATR_MANA_MAX] + points;
 
		msg=ConcatStrings("Maks. Mana + ",IntToString(points));
		msg=ConcatStrings(msg, " = ");
		msg=ConcatStrings(msg, IntToString(oth.attribute[ATR_MANA_MAX]));
		Prints_Ext(msg,RGBA(100,100,255,255));
	};
	if(attrib == ATR_HITPOINTS_MAX)
	{
		oth.attribute[ATR_HITPOINTS_MAX] = oth.attribute[ATR_HITPOINTS_MAX] + points;
		msg=ConcatStrings("Punkty trafień + ",IntToString(points));
		msg=ConcatStrings(msg, " = ");
		msg=ConcatStrings(msg, IntToString(oth.attribute[ATR_HITPOINTS_MAX]));
		Prints_Ext(msg,RGBA(100,100,255,255));
	};
	b_raiserealattributelearncounter(oth,attrib,points);
};

