
func void ReInit_Menu()
{

if(hero.hitchance[1]>=30)
{
Ico_1hst2="Ico_1h2Yes.tga";
}
else
{
Ico_1hst2="Ico_1h2No.tga";
};
/**************************************/
if(hero.hitchance[1]>=60)
{
Ico_1hst3="Ico_1h3Yes.tga";
}
else
{
Ico_1hst3="Ico_1h3No.tga";
};
/**************************************/
if(hero.hitchance[2]>=30)
{
Ico_2hst2="Ico_Axe.tga";
}
else
{
Ico_2hst2="Ico_AxeSt2No.tga";
};
/**************************************/
if(hero.hitchance[2]>=60)
{
Ico_2hst3="AxeSt3yes.tga";
}
else
{
Ico_2hst3="Ico_AxeSt3No.tga";
};
/**************************************/
if(hero.hitchance[3]>=30)
{
Ico_Bowst2="Ico_Bowst2yes.tga";
}
else
{
Ico_Bowst2="Ico_Bowst2No.tga";
};
/**************************************/
if(hero.hitchance[3]>=60)
{
Ico_Bowst3="Ico_Bowst3yes.tga";
}
else
{
Ico_Bowst3="Ico_Bowst3No.tga";
};
/**************************************/
if(hero.hitchance[4]>=30)
{
Ico_CrossBowSt2="Ico_CBst2Yes.tga";
}
else
{
Ico_CrossBowSt2="Ico_CBst2No.tga";
};
/**************************************/
if(hero.hitchance[4]>=60)
{
Ico_CrossBowSt3="Ico_CBst3YEs.tga";
}
else
{
Ico_CrossBowSt3="Ico_CBst3No.tga";
};
/**************************************/
if(Talent_Shield_Fight)
{
Ico_Shields="Ico_Shieldyes.tga";
}
else
{
Ico_Shields="Ico_ShieldNo.tga";
};
/**************************************/
if(Talent_Dual_Fight)
{
Ico_Duals="Ico_2x2yes.tga";
}
else
{
Ico_Duals="Ico_2x2NO.tga";
};
/**************************************/
if(Staff_Skill)
{
Ico_MagicStaffs="Ico_MagicStaffsYes";
}else{
Ico_MagicStaffs="Ico_MagicStaffsNo";
};
/**************************************/
if(!BreakSkill)
{
IMMUNE=-1;
Ico_Break="Ico_BreakNO.tga";
}
else
{
IMMUNE=50;
Ico_Break="Ico_BreakYes.tga";
};
/**************************************/
if(!PenetrationSkill)
{
Ico_Penetration="Ico_PenetNo.tga";
}
else
{
Ico_Penetration="Ico_PenetYes.tga";
};
/**************************************/
if(!HeroKnowOrcsWeapons)
{
Ico_OrcWeapons="Ico_OrcWeaponsNo.tga";
}
else
{
Ico_OrcWeapons="Ico_OrcWeaponsYes.tga";
};
/**************************************/
if(Npc_GetTalentSkill(hero, NPC_TALENT_SNEAK) >=1)
{
Ico_Sneak="Ico_Sneak_Yes.tga";
}
else
{
Ico_Sneak="Ico_Sneak_No.tga";
};
/**************************************/
if(Npc_GetTalentSkill(hero, NPC_TALENT_ACROBAT) >=1)
{
Ico_Barter="Ico_AcrobaticYes.tga";
}
else
{
Ico_Barter="Ico_AcrobaticNo.tga";
};
/**************************************/
if(Npc_GetTalentSkill(hero, NPC_TALENT_PICKLOCK) >=1)
{
Ico_PickLock="Ico_LockPick_Yes.tga";
}
else
{
Ico_PickLock="Ico_LockPick_No.tga";
};
/**************************************/
if(Npc_GetTalentSkill(hero, NPC_TALENT_PICKPOCKET) >=1)
{
Ico_PickPocket="Ico_PickPocket_Yes.tga";
}
else
{
Ico_PickPocket="Ico_PickPocket_No.tga";
};
/**************************************
if(Npc_GetTalentSkill(hero, NPC_TALENT_ACROBAT) >=1)
{
Ico_Shields="Ico_Shieldyes.tga";
}
else
{
Ico_Shields="Ico_ShieldNo.tga";
};
/**************************************/
if(Npc_GetTalentSkill(hero, NPC_TALENT_SMITH) >=1)
{
Ico_Smith="Ico_Smith_Yes.tga";
}
else
{
Ico_Smith="Ico_Smith_NO.tga";
};
/**************************************/
if(Npc_GetTalentSkill(hero, NPC_TALENT_ARMOR) >=1)
{
Ico_ArmorMaking="Ico_Armor_Yes.tga";
}
else
{
Ico_ArmorMaking="Ico_Armor_No.tga";
};
/**************************************/
if(Npc_GetTalentSkill(hero, PLAYER_TALENT_OREMASTER) >=1)
{
Ico_Minner="Ico_Minner_Yes.tga";
}
else
{
Ico_Minner="Ico_Minner_No.tga";
};
/**************************************/
if(Npc_GetTalentSkill(hero, NPC_TALENT_MAGE) >=1)
{
Ico_MagicCircle="Ico_MagicCirclesYes.tga";
}
else
{
Ico_MagicCircle="Ico_MagicCirclesNo.tga";
};
/**************************************/
if(Npc_GetTalentSkill(hero, NPC_TALENT_RUNES) >=1)
{
Ico_RuneMaker="Ico_RuneMakeYes.tga";
}
else
{
Ico_RuneMaker="Ico_RuneMakeNo.tga";
};
/************************************** Kosturki xD
if(Npc_GetTalentSkill(hero, NPC_TALENT_RUNES) >=1)
{
Ico_Shields="Ico_RuneMakeYes.tga";
}
else
{
Ico_Shields="Ico_RuneMakeNo.tga";
};
/**************************************/
if(PLAYER_TALENT_ALCHEMY[POTION_HEALTH_01] == TRUE)
{
Ico_Health="Ico_Health_Yes.tga";
}
else
{
Ico_Health="Ico_Health_No.tga";
};
/**************************************/
if(PLAYER_TALENT_ALCHEMY[POTION_PERM_HEALTH] == TRUE)
{
Ico_HealthPerm="Ico_PermHealth_Yes.tga";
}
else
{
Ico_HealthPerm="Ico_PermHealth_No.tga";
};
/**************************************/
if(PLAYER_TALENT_ALCHEMY[POTION_MANA_01] == TRUE)
{
Ico_Mana="Ico_Health_Yes.tga";
}
else
{
Ico_Mana="Ico_Health_No.tga";
};
/**************************************/
if(PLAYER_TALENT_ALCHEMY[POTION_PERM_MANA] == TRUE)
{
Ico_ManaPerm="Ico_PermMana_yes.tga";
}
else
{
Ico_ManaPerm="Ico_PermMana_no.tga";
};
/**************************************/
if(PLAYER_TALENT_ALCHEMY[POTION_PERM_DEX] == TRUE)
{
Ico_PermDex="Ico_DEX_Yes.tga";
}
else
{
Ico_PermDex="Ico_DEX_No.tga";
};
/**************************************/
if(PLAYER_TALENT_ALCHEMY[POTION_PERM_STR] == TRUE)
{
Ico_PermSTR="Ico_Str_Yes.tga";
}
else
{
Ico_PermSTR="Ico_Str_no.tga";
};
/**************************************/
/***********HuntingSkills**************/
if(player_talent_takeanimaltrophy[TROPHY_TEETH] == TRUE)
{
Ico_Teeth="Ico_TeethYes.tga";
}
else
{
Ico_Teeth="Ico_TeethNo.tga";
};
/**************************************/
if(player_talent_takeanimaltrophy[TROPHY_CLAWS] == TRUE)
{
Ico_Claws="Ico_ClawsYes.tga";
}
else
{
Ico_Claws="Ico_ClawsNo.tga";
};
/**************************************/
if(player_talent_takeanimaltrophy[TROPHY_FUR] == TRUE)
{
Ico_Furs="Ico_FursYes.tga";
}
else
{
Ico_Furs="Ico_FursNo.tga";
};
/**************************************/
if(player_talent_takeanimaltrophy[TROPHY_REPTILESKIN] == TRUE)
{
Ico_LurkerSkin="Ico_LurkerYes.tga";
}
else
{
Ico_LurkerSkin="Ico_LurkerNo.tga";
};
/**************************************/
if(player_talent_takeanimaltrophy[TROPHY_SHADOWHORN] == TRUE)
{
Ico_ShadowHorn="Ico_ShadowHornYes.tga";
}
else
{
Ico_ShadowHorn="Ico_ShadowHornNo.tga";
};
/**************************************/
if(player_talent_takeanimaltrophy[TROPHY_FIRETONGUE] == TRUE)
{
Ico_FireLan="Ico_FireWaranYes.tga";
}
else
{
Ico_FireLan="Ico_FireWaranNo.tga";
};
/**************************************/
if(player_talent_takeanimaltrophy[TROPHY_BFSTING] == TRUE)
{
Ico_BloodFlySting="Ico_BloodFlyStingYes.tga";
}
else
{
Ico_BloodFlySting="Ico_BloodFlyStingNo.tga";
};
/**************************************/
if(FastLearnSkill)
{
Ico_FastLearn="Ico_FastLearnYes.tga";
}
else
{
Ico_FastLearn="Ico_FastLearnNo.tga";
};
/**************************************/
if(!Regenerate_HP_Skill)
{
Ico_HealthRegenation="Ico_Health_RegenNO.tga";
}
else
{
Ico_HealthRegenation="Ico_Health_RegenYes.tga";
};
/**************************************/
if(!Regenerate_Mana_Skill)
{
Ico_ManaRegenation="Ico_MANA_RegenNo.tga";
}
else
{
Ico_ManaRegenation="Ico_MANA_RegenYes.tga";
};
/**************************************/
if(player_talent_takeanimaltrophy[TROPHY_CRAWLERPLATE]==TRUE)
{
Ico_CrawlerPlate="Ico_ClawerPlateYes.tga";
}
else
{
Ico_CrawlerPlate="Ico_ClawerPlateNo.tga";
	};
};
	var int Humans_NoTakeAnimAppiled;

func void Save_Anims(){
	var c_npc her; her = Hlp_GetNpc(pc_hero);
	if(Npc_IsInFightMode(her,FMODE_MELEE))
	{
	if(shield_equip==1){
	Mdl_RemoveOverlayMds(hero,"Humans_1hst2.mds");
	Mdl_RemoveOverlayMds(hero,"Humans_1hst1.mds");
	Mdl_RemoveOverlayMds(hero,"SHIELD_UNSKILLED.mds");
	Mdl_ApplyOverlayMds(hero,"SHIELD_UNSKILLED.mds");
	}else if (shield_equip==2){
	Mdl_RemoveOverlayMds(hero,"Humans_1hst1.mds");
	Mdl_RemoveOverlayMds(hero,"Humans_1hst2.mds");
	Mdl_RemoveOverlayMds(hero,"HUM_SHIELD_ST1.mds");
	Mdl_ApplyOverlayMds(hero,"HUM_SHIELD_ST1.mds");
	}else if (shield_equip==3){
	Mdl_RemoveOverlayMds(hero,"Humans_1hst1.mds");
	Mdl_RemoveOverlayMds(hero,"Humans_1hst2.mds");
	Mdl_RemoveOverlayMds(hero,"SHIELD_ST4.mds");
	Mdl_ApplyOverlayMds(hero,"SHIELD_ST4.mds");
	}else if (shield_equip==4){
	Mdl_RemoveOverlayMds(hero,"Humans_1hst1.mds");
	Mdl_RemoveOverlayMds(hero,"Humans_1hst2.mds");
	Mdl_RemoveOverlayMds(hero,"HUM_SHIELD2.mds");
	Mdl_ApplyOverlayMds(hero,"HUM_SHIELD2.mds");
	};
	if(DualUser)
	{
	Mdl_RemoveOverlayMds(hero,"Humans_2hst1.mds");
	Mdl_RemoveOverlayMds(hero,"Humans_2hst2.mds");
	Mdl_RemoveOverlayMds(hero,"HUMANS_2x2st3.mds");
	Mdl_ApplyOverlayMds(hero,"HUMANS_2x2st3.mds");
	};
	if(Know2hUberMaster)&&(!DualUser)&&(!StaffEquiped)&&(!Speer_Equip)&&(!OrcWeaponEquipped)
	{
	Mdl_RemoveOverlayMds(hero,"Humans_2hst1.mds");
	Mdl_RemoveOverlayMds(hero,"Humans_2hst2.mds");
	Mdl_RemoveOverlayMds(hero,"HUMANS_2hst3.mds");
	Mdl_ApplyOverlayMds(hero,"HUMANS_2hst3.mds");
	};
	if(StaffEquiped)
	{
	Mdl_RemoveOverlayMds(hero,"Humans_2hst1.mds");
	Mdl_RemoveOverlayMds(hero,"Humans_2hst2.mds");
	Mdl_RemoveOverlayMds(hero,"HUM_STAFF_ST1.mds");
	Mdl_ApplyOverlayMds(hero,"HUM_STAFF_ST1.mds");
	};
	if(Speer_Equip)
	{
	Mdl_RemoveOverlayMds(hero,"Humans_2hst1.mds");
	Mdl_RemoveOverlayMds(hero,"Humans_2hst2.mds");
	Mdl_RemoveOverlayMds(hero,"Humans_spst2.mds");
	Mdl_ApplyOverlayMds(hero,"Humans_spst2.mds");
	};
	
	if(OrcWeaponEquipped==1)
	{
	Mdl_RemoveOverlayMds(hero,"Humans_2hst1.mds");
	Mdl_RemoveOverlayMds(hero,"Humans_2hst2.mds");
	Mdl_RemoveOverlayMds(hero,"HUMANS_O2h.mds");
	Mdl_ApplyOverlayMds(hero,"HUMANS_O2H.mds");
	};
	if (OrcWeaponEquipped==2)
	{
	Mdl_RemoveOverlayMds(hero,"Humans_2hst1.mds");
	Mdl_RemoveOverlayMds(hero,"Humans_2hst2.mds");
	Mdl_RemoveOverlayMds(hero,"HUMANS_O2HL2.mds");
	Mdl_ApplyOverlayMds(hero,"HUMANS_O2HL2.mds");
	};
	if(Know1hUberMaster)&&(!shield_equip)
	{
	Mdl_RemoveOverlayMds(hero,"Humans_1hst2.mds");
	Mdl_RemoveOverlayMds(hero,"HUMANS_1hst3.mds");
	Mdl_ApplyOverlayMds(hero,"HUMANS_1hst3.mds");
		};
	};
	
	if(Humans_NoTakeAnimAppiled)
	{
	Mdl_ApplyOverlayMds(hero,"Humans_NoTakeAnim.mds");
	};
	
};