
func void b_givedeathinv(var C_NPC slf)
{
	if(slf.aivar[AIV_DEATHINVGIVEN] == TRUE)
	{
		return;
	};
	/***************************************/
	if(PLAYER_TALENT_TAKEANIMALTROPHY[0] == TRUE)
	{
	B_CreateDeathInvTeeth(slf);
	};
	//next
	if(PLAYER_TALENT_TAKEANIMALTROPHY[1] == TRUE)
	{
	B_CreateDeathInvMeat(slf);
	};	 
	//next
	if(PLAYER_TALENT_TAKEANIMALTROPHY[2] == TRUE)
	{
	B_CreateDeathInvClaws(slf);
	};
	//next
	if(PLAYER_TALENT_TAKEANIMALTROPHY[3] == TRUE)
	{
	B_CreateDeathInvFurs(slf);
	};	
	//next
	if(PLAYER_TALENT_TAKEANIMALTROPHY[4] == TRUE)
	{
	B_CreateDeathInvHearth(slf);
	};	
	//next
	if(PLAYER_TALENT_TAKEANIMALTROPHY[5] == TRUE)
	{
	B_CreateDeathInvShadowHorns(slf);
	};	
	//next
	if(PLAYER_TALENT_TAKEANIMALTROPHY[6] == TRUE)
	{
	B_CreateDeathInvTongue(slf);
	};
	//next
	if(PLAYER_TALENT_TAKEANIMALTROPHY[7] == TRUE)
	{
	B_CreateDeathInvWings(slf);
	};	
	//next
	if(PLAYER_TALENT_TAKEANIMALTROPHY[8] == TRUE)
	{
	B_CreateDeathInvSting(slf);
	};	
	//next
	if(PLAYER_TALENT_TAKEANIMALTROPHY[9] == TRUE)
	{
	B_CreateDeathInvCrawlerMandible(slf);
	};	
	//next
	if(PLAYER_TALENT_TAKEANIMALTROPHY[10] == TRUE)
	{
	B_CreateDeathInvCrawlerPlate(slf);
	};	
	//next
	if(PLAYER_TALENT_TAKEANIMALTROPHY[11] == TRUE)
	{
	B_CreateDeathInvDragonSnapperHorn(slf);
	};	
	//next
	if(PLAYER_TALENT_TAKEANIMALTROPHY[12] == TRUE)
	{
	B_CreateDeathInvDragonScale(slf);
	};		
	//next
	if(PLAYER_TALENT_TAKEANIMALTROPHY[13] == TRUE)
	{
	B_CreateDeathInvDragonBlood(slf);
	};		
	//next
	if(PLAYER_TALENT_TAKEANIMALTROPHY[14] == TRUE)
	{
	B_CreateDeathInvHide(slf);
	};	
	//next
	if(PLAYER_TALENT_TAKEANIMALTROPHY[15] == TRUE)
	{
	B_CreateDeathInvLiver(slf);
	};	
	//next
	if(PLAYER_TALENT_TAKEANIMALTROPHY[16] == TRUE)
	{
	B_CreateDeathInvFeather(slf);
	B_CreateDeathModHelper(slf);
	};	
	//next
	if(PLAYER_TALENT_TAKEANIMALTROPHY[17] == TRUE)
	{
	B_CreateDeathInvWTF(slf);
	};	
	//next
	if(PLAYER_TALENT_TAKEANIMALTROPHY[18] == TRUE)
	{
	B_CreateDeathInvWool(slf);
	};	
	//next
	if(PLAYER_TALENT_TAKEANIMALTROPHY[19] == TRUE)
	{
	B_CreateDeathInvThread(slf);
	};	
	/**************************************/
	if(slf.aivar[AIV_MM_REAL_ID] == ID_MEATBUG)
	{
		CreateInvItems(slf,itat_meatbugflesh,1);
	}
	else if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_UNDEAD)
	{
		CreateInvItems(slf,itat_undeaddragonsoulstone,1);
	}
	else if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_FIRE)
	{
		CreateInvItems(slf,itat_firedragonheart,1);
	}
	else if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ICE)
	{
		CreateInvItems(slf,itat_icedragonheart,1);
	}
	else if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ROCK)
	{
		CreateInvItems(slf,itat_rockdragonheart,1);
	}
	else if(slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_SWAMP)
	{
		CreateInvItems(slf,itat_swampdragonheart,1);
	}
	else if(slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_SKELETON)
	{
		CreateInvItems(slf,itat_goblinbone,1);
	}
	else if(slf.aivar[AIV_MM_REAL_ID] == ID_SKELETON)
	{
		CreateInvItems(slf,itat_skeletonbone,1);
	}
	else if(self.aivar[AIV_MM_REAL_ID] == ID_BLATTCRAWLER)
	{
		CreateInvItems(slf,itat_addon_bckopf,1);
	};
	GOBLINGREEN_RANDOMIZER = Hlp_Random(100);
	if((slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_GREEN) && (GOBLINGREEN_RANDOMIZER == 0))
	{
		CreateInvItems(slf,itmi_silverring,1);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_GREEN) && (GOBLINGREEN_RANDOMIZER <= 5))
	{
		CreateInvItems(slf,itpl_mushroom_01,1);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_GREEN) && (GOBLINGREEN_RANDOMIZER <= 15))
	{
		CreateInvItems(slf,itmi_gold,5);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_GREEN) && (GOBLINGREEN_RANDOMIZER <= 30))
	{
		CreateInvItems(slf,itfo_fish,1);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_GREEN) && (GOBLINGREEN_RANDOMIZER <= 50))
	{
		CreateInvItems(slf,itmi_gold,2);
	};
	GOBLINBLACK_RANDOMIZER = Hlp_Random(100);
	if((slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_BLACK) && (GOBLINBLACK_RANDOMIZER == 0))
	{
		CreateInvItems(slf,itmi_goldring,1);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_BLACK) && (GOBLINBLACK_RANDOMIZER <= 5))
	{
		CreateInvItems(slf,itfo_fish,1);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_BLACK) && (GOBLINBLACK_RANDOMIZER <= 15))
	{
		CreateInvItems(slf,itmi_gold,10);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_BLACK) && (GOBLINBLACK_RANDOMIZER <= 30))
	{
		CreateInvItems(slf,itpl_mushroom_02,1);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_BLACK) && (GOBLINBLACK_RANDOMIZER <= 50))
	{
		CreateInvItems(slf,itmi_gold,5);
	};
	ORC_RANDOMIZER = Hlp_Random(10);
	if((slf.aivar[AIV_MM_REAL_ID] == ID_ORCWARRIOR) && (ORC_RANDOMIZER == 0))
	{
		CreateInvItems(slf,itmi_gold,4);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_ORCWARRIOR) && (ORC_RANDOMIZER == 1))
	{
		CreateInvItems(slf,itpl_mushroom_02,1);
		CreateInvItems(slf,itmi_gold,2);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_ORCWARRIOR) && (ORC_RANDOMIZER == 2))
	{
		CreateInvItems(slf,itmi_gold,7);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_ORCWARRIOR) && (ORC_RANDOMIZER == 3))
	{
		CreateInvItems(slf,itmi_gold,3);
		CreateInvItems(slf,itmi_silverring,1);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_ORCWARRIOR) && (ORC_RANDOMIZER == 4))
	{
		CreateInvItems(slf,itmi_gold,11);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_ORCWARRIOR) && (ORC_RANDOMIZER <= 7))
	{
		CreateInvItems(slf,itmi_gold,1);
	};
	if((slf.aivar[AIV_MM_REAL_ID] == ID_ORCSHAMAN) && (ORC_RANDOMIZER == 0))
	{
		CreateInvItems(slf,itpo_mana_03,1);
		CreateInvItems(slf,itmi_gold,5);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_ORCSHAMAN) && (ORC_RANDOMIZER == 1))
	{
		CreateInvItems(slf,itpo_mana_02,1);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_ORCSHAMAN) && (ORC_RANDOMIZER == 2))
	{
		CreateInvItems(slf,itpo_mana_02,1);
		CreateInvItems(slf,itmi_coal,1);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_ORCSHAMAN) && (ORC_RANDOMIZER == 3))
	{
		CreateInvItems(slf,itpo_mana_01,2);
		CreateInvItems(slf,itmi_gold,12);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_ORCSHAMAN) && (ORC_RANDOMIZER == 4))
	{
		CreateInvItems(slf,itpo_mana_01,1);
		CreateInvItems(slf,itmi_sulfur,1);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_ORCSHAMAN) && (ORC_RANDOMIZER <= 8))
	{
		CreateInvItems(slf,itpl_mana_herb_02,2);
		CreateInvItems(slf,itmi_gold,8);
	};
	if((slf.aivar[AIV_MM_REAL_ID] == ID_ORCELITE) && (ORC_RANDOMIZER == 0))
	{
		CreateInvItems(slf,itat_wolffur,1);
		CreateInvItems(slf,itmi_gold,13);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_ORCELITE) && (ORC_RANDOMIZER == 1))
	{
		CreateInvItems(slf,itmi_goldring,1);
		CreateInvItems(slf,itmi_gold,17);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_ORCELITE) && (ORC_RANDOMIZER == 2))
	{
		CreateInvItems(slf,itlstorch,1);
		CreateInvItems(slf,itmi_gold,8);
		CreateInvItems(slf,itat_teeth,1);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_ORCELITE) && (ORC_RANDOMIZER <= 5))
	{
		CreateInvItems(slf,itmi_gold,11);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_ORCELITE) && (ORC_RANDOMIZER == 6))
	{
		CreateInvItems(slf,itat_wargfur,1);
		CreateInvItems(slf,itmi_gold,15);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_ORCELITE) && (ORC_RANDOMIZER <= 9))
	{
		CreateInvItems(slf,itmi_gold,22);
	};
	if((slf.aivar[AIV_MM_REAL_ID] == ID_DEMON) && (ORC_RANDOMIZER == 0))
	{
		CreateInvItems(slf,itpo_mana_03,2);
		CreateInvItems(slf,itmi_goldring,1);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_DEMON) && (ORC_RANDOMIZER <= 2))
	{
		CreateInvItems(slf,itpo_mana_03,1);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_DEMON) && (ORC_RANDOMIZER <= 6))
	{
		CreateInvItems(slf,itpo_mana_02,2);
		CreateInvItems(slf,itmi_pitch,1);
	}
	else if(slf.aivar[AIV_MM_REAL_ID] == ID_DEMON)
	{
		CreateInvItems(slf,itpo_mana_02,1);
	};
	if((slf.aivar[AIV_MM_REAL_ID] == ID_DEMON_LORD) && (ORC_RANDOMIZER <= 1))
	{
		CreateInvItems(slf,itpo_mana_03,2);
		CreateInvItems(slf,itpo_health_03,1);
		CreateInvItems(slf,itsc_sumdemon,1);
	}
	else if((slf.aivar[AIV_MM_REAL_ID] == ID_DEMON_LORD) && (ORC_RANDOMIZER <= 5))
	{
		CreateInvItems(slf,itpo_mana_03,2);
		CreateInvItems(slf,itpo_health_03,1);
	}
	else if(slf.aivar[AIV_MM_REAL_ID] == ID_DEMON_LORD)
	{
		CreateInvItems(slf,itpo_mana_03,1);	
	};
	
	slf.aivar[AIV_DEATHINVGIVEN] = TRUE;
	
};

func void Give_RandomItems(var C_NPC slf){
if(slf.aivar[AIV_MM_REAL_ID]=ID_GOBBO_BERSERK){
	var int Randy; Randy=Hlp_Random(5);
	if (Randy==1)
	{
	CreateInvItems(slf,ITPL_BEET,3);
	CreateInvItems(slf,Itmi_Gold,5);
	}
	else if (Randy==2)
	{
	CreateInvItems(slf,ITPL_SPEED_HERB_01,2);
	CreateInvItems(slf,Itmi_Gold,11);
	}
	else if (Randy==3)
	{
	CreateInvItems(slf,ITPL_MUSHROOM_01,4);
	CreateInvItems(slf,Itmi_Gold,24);
	}
	else if (Randy==4)
	{
	CreateInvItems(slf,ITPL_STRENGTH_HERB_01,1);
	CreateInvItems(slf,Itmi_Gold,13);
	}
	else if (Randy==5)
	{
	CreateInvItems(slf,itpo_health_01,3);
	CreateInvItems(slf,Itmi_Gold,13);
		};
	}else if (slf.aivar[AIV_MM_REAL_ID]=ID_GOBBO_MAGE){
	var int Randy1; Randy1=Hlp_Random(5);
	if (Randy1==1)
	{
	CreateInvItems(slf,ITPL_WEED,3);
	CreateInvItems(slf,Itmi_Gold,5);
	}
	else if (Randy1==2)
	{
	CreateInvItems(slf,ITPL_SPEED_HERB_01,1);
	CreateInvItems(slf,Itmi_Gold,11);
	}
	else if (Randy1==3)
	{
	CreateInvItems(slf,ITPL_MUSHROOM_01,2);
	CreateInvItems(slf,Itmi_Gold,14);
	}
	else if (Randy1==4)
	{
	CreateInvItems(slf,ITPL_MANA_HERB_03,1);
	CreateInvItems(slf,Itmi_Gold,13);
	}
	else if (Randy1==5)
	{
	CreateInvItems(slf,itpo_mana_01,2);
	CreateInvItems(slf,Itmi_Gold,13);
		};
	};

};
