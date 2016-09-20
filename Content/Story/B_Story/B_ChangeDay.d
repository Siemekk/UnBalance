func void B_SetDay()
{

	DAY = DAY + 1;

	if(DAY > 6)
	{
		WEEKDAY = WEEKDAY + 1;
	};
	if(DAY == 6)
	{
		WEEK = 1;
		WEEKDAY = PON;
		WEEKTYPE = Hlp_Random(3);
	};
	if(WEEKDAY == ND)
	{
		WEEKTYPE = Hlp_Random(3);
	};

	if(CURRENTLEVEL == NEWWORLD_ZEN)
	{
		LastDayIn_NEWWORLD_ZEN = DAY;
	}	
	else if(CURRENTLEVEL == OLDWORLD_ZEN)
	{
		LastDayIn_OLDWORLD_ZEN= DAY;
	}	
	else if(CURRENTLEVEL == DRAGONISLAND_ZEN)
	{
		LastDayIn_DRAGONISLAND_ZEN = DAY;
	}	
	else if(CURRENTLEVEL == ADDONWORLD_ZEN)
	{
		LastDayIn_ADDONWORLD_ZEN = DAY;
	};
};


func void B_StoryChangeDay()
{
PrintDebug_S("HELLO NEW DAY!");
b_setday();
CheckRespawns();
CheckRespawn_Plantss();


};

func void DayShift(var int nday)
{
	if(nDay>LAST_DAY)
	{
      DAY=nDay;
      b_storychangeday();
	};
	LAST_DAY = nDay;	
};

