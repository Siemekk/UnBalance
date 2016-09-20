func int B_TeachNewSkills(var C_NPC slf, var C_NPC oth, var int skill,var int kosten, var int NeedItem, var int Skill_Level)
{
	if (skill > 7 || skill < 0)
	{
		Print("*** B³¹d: Z³y parametr ***");
		return FALSE;
	};
	
	
	if(oth.lp < kosten)
	{
		Prints2(PRINT_NOTENOUGHLEARNPOINTS);
		b_say(slf,oth,"$NOLEARNNOPOINTS");
		return FALSE;
	};
if(Npc_HasItems(oth,Itmi_Gold)<NeedItem)
{
b_say(slf,oth,"$SHITNOGOLD");
var int GoldMiss; GoldMiss=  NeedItem-Npc_HasItems(oth,Itmi_Gold);
var string msg; msg= concatstrings("Brakuje mi ",Inttostring(GoldMiss));
msg=concatstrings(msg," szt. z³ota ");
Prints_Ext(msg,RGBA(180,0,0,255));
return FALSE;
};
/***************************/
	if(skill==Skill_Staffs)
	{
	Staff_Skill=Skill_Level;
	Ico_MagicStaffs="Ico_MagicStaffsYes";
	Prints2("Wyuczono: Kostury magiczne !");
	
	};
/***************************/
	if(skill==Skill_Shield)
	{
	Talent_Shield_Fight=Skill_Level;
	Ico_Shields="Ico_Shieldyes.tga";
	if (Skill_Level==1)
	{
	Prints2("Wyuczono: Walka tarcz¹ 1-szy poziom !");
	}
	else if(Skill_Level==2)
	{
	Prints2("Wyuczono: Walka tarcz¹ 2-gi poziom !");
	}
	else if(Skill_Level==3)
	{
	Prints2("Wyuczono: Walka tarcz¹ 3-ci poziom !");
	}
	else if(Skill_Level==4)
	{
	Prints2("Wyuczono: Walka tarcz¹ 4-ty poziom !");
	};
	AI_UnequipWeapons(oth);
	AI_EquipBestMeleeWeapon(oth);
	AI_EquipBestRangedWeapon(oth);
};
/***************************/
	if(skill==Skill_Duals)
	{
	Talent_Dual_Fight=Skill_Level;
	Ico_Duals="Ico_2x2yes.tga";
	Prints2("Wyuczono: Walka dwoma mieczami !");
	
	};
/***************************/
	if(skill==Skill_Break)
	{
	BreakSkill=Skill_Level;
	IMMUNE=50;
	Ico_Break="Ico_BreakYes.tga";
	Prints2("Wyuczono: Rozbicie !");
	
	};
/***************************/
	if(skill==Skill_Penetration)
	{
	PenetrationSkill=Skill_Level;
	Ico_Penetration="Ico_PenetYes.tga";
	Prints2("Wyuczono: Penetracja !");
	
	};
/***************************/
	if(skill==Skill_RegenerateHP)
	{
	Regenerate_HP_Skill=Skill_Level;
	Ico_HealthRegenation="Ico_Health_RegenYes.tga";
	Prints2("Wyuczono: Regeneracja ¿ycia !");
	
	};
/***************************/
	if(skill==Skill_RegenerateMP)
	{
	Regenerate_Mana_Skill=Skill_Level;
	Ico_ManaRegenation="Ico_MANA_RegenYes.tga";
	Prints2("Wyuczono: Regeneracja many !");
	
	};
/***************************/
	if(skill==Skill_FastLearn)
	{
	FastLearnSkill=Skill_Level;
	Ico_FastLearn="Ico_FastLearnYes.tga";
	Prints2("Wyuczono: Szybka nauka !");
	};
 /***************************/
	oth.lp = oth.lp - kosten;
	b_giveinvitems(oth,slf,itmi_gold,NeedItem);
	Npc_RemoveInvItems(slf,itmi_gold,NeedItem);
	return TRUE;
};

var int Time_Potions_Talents[15];

func int Teach_TimePotions(var c_npc slf, var c_npc oth,var int hjgjhg,var int lp)
{
	
	if(Npc_HasItems(oth,Itmi_Gold)<100)
	{
		b_say(slf,oth,"$SHITNOGOLD");
		var int GoldMiss; GoldMiss=  100-Npc_HasItems(oth,Itmi_Gold);
		var string msg; msg= concatstrings("Brakuje mi ",Inttostring(GoldMiss));
		msg=concatstrings(msg," szt. z³ota ");
		Prints_Ext(msg,RGBA(180,0,0,255));
		return FALSE;
	};	
	
	if(oth.lp < lp)
	{
		Prints2(PRINT_NOTENOUGHLEARNPOINTS);
		b_say(slf,oth,"$NOLEARNNOPOINTS");
		return FALSE;
	};


	if(hjgjhg==0)
	{
	Time_Potions_Talents[0]=TRUE;
	}
	else 	if(hjgjhg==1)
	{
	Time_Potions_Talents[1]=TRUE;
	}
	else if(hjgjhg==2)
	{
	Time_Potions_Talents[2]=TRUE;
	}
	else 	if(hjgjhg==3)
	{
	Time_Potions_Talents[3]=TRUE;
	}
	else if(hjgjhg==4)
	{
	Time_Potions_Talents[4]=TRUE;
	}
	else 	if(hjgjhg==5)
	{
	Time_Potions_Talents[5]=TRUE;
	}
	else if(hjgjhg==6)
	{
	Time_Potions_Talents[6]=TRUE;
	}
	else 	if(hjgjhg==7)
	{
	Time_Potions_Talents[7]=TRUE;
	}
	else if(hjgjhg==8)
	{
	Time_Potions_Talents[8]=TRUE;
	}
	else 	if(hjgjhg==9)
	{
	Time_Potions_Talents[9]=TRUE;
	}
	else if(hjgjhg==10)
	{
	Time_Potions_Talents[10]=TRUE;
	}
	else 	if(hjgjhg==11)
	{
	Time_Potions_Talents[11]=TRUE;
	}
	else if(hjgjhg==12)
	{
	Time_Potions_Talents[12]=TRUE;
	}
	else 	if(hjgjhg==13)
	{
	Time_Potions_Talents[13]=TRUE;
	};
	Npc_RemoveInvItems(oth,itmi_gold,100);
	hero.lp -=lp;
	Prints_Ext("Odda³eœ 100szt. z³ota",RGBA(180,0,0,255));
	
};
