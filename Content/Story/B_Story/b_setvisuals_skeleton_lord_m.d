
prototype MST_SKELETON_LORD_M(C_NPC)
{
	name[0] = "Szkielet-Mag";
	guild = GIL_SKELETON;
	aivar[AIV_MM_REAL_ID] = ID_MAG_LORD;
	level = 50;
	attribute[ATR_STRENGTH] = 155;
	attribute[ATR_DEXTERITY] = 155;
	attribute[ATR_HITPOINTS_MAX] = 500;
	attribute[ATR_HITPOINTS] = 500;
	attribute[ATR_MANA_MAX] = 200;
	attribute[ATR_MANA] = 200;
	protection[PROT_BLUNT] = 70;
	protection[PROT_EDGE] = 70;
	protection[PROT_POINT] = 140;
	protection[PROT_FIRE] = 80;
	protection[PROT_FLY] = 40;
	protection[PROT_MAGIC] = 40;
	damagetype = DAM_MAGIC;
	fight_tactic = FAI_HUMAN_MASTER;
	EquipItem(self,itmw_1h_nov_mace);
	senses = SENSE_HEAR | SENSE_SEE | SENSE_SMELL;
	senses_range = PERC_DIST_ORC_ACTIVE_MAX;
	aivar[AIV_MM_FOLLOWTIME] = 5;
	aivar[AIV_MM_FOLLOWINWATER] = FALSE;
	aivar[AIV_MM_PACKHUNTER] = TRUE;
	start_aistate = zs_mm_allscheduler;
	aivar[AIV_MM_RESTSTART] = ONLYROUTINE;
};

func void b_setvisuals_skeleton_lord_m()
{
	Mdl_SetVisual(self,"HumanS.mds");
	Mdl_ApplyOverlayMds(self,"humans_1hST1.mds");
	Mdl_ApplyOverlayMds(self,"humans_2hST2.mds");
	Mdl_ApplyOverlayMds(self,"humans_BowT1.mds");
	Mdl_ApplyOverlayMds(self,"humans_CBowT1.mds");
	b_setnpcvisual(self,MALE,"Ske_Head",0,0,itar_kdf_skel);
};


instance SKELETON_LORD_M(MST_SKELETON_LORD_M)
{
	b_setvisuals_skeleton_lord_m();
};

