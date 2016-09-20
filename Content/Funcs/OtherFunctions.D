func void SetGhost(var int newGhost, var int transparency) {
	//var oCNpc slf; slf = _^(MEM_InstGetOffset(newGhost)); // get ghost instance
        var oCNpc slf; slf = Hlp_GetNpc(newGhost); // version suggested by Avallach
		slf.bloodEnabled = false; // disable blood emitter
		slf._zCVob_bitfield[0] = slf._zCVob_bitfield[0] | zCVob_bitfield0_visualAlphaEnabled; // enable visual alpha
		slf._zCVob_visualAlpha = divf(mkf(100-transparency), mkf(100)); // set transparency, if transparency = 100, then player is fully invisible!
		slf._zCVob_bitfield[0] = slf._zCVob_bitfield[0] & ~zCVob_bitfield0_castDynShadow; // destroy casting shadows
	
	Wld_PlayEffect("MagicShieldFXHead", slf, slf, 1, 0, DAM_MAGIC, FALSE);		
	Wld_PlayEffect("MagicShieldFXRUpperArm", slf, slf, 1, 0, DAM_MAGIC, FALSE);		
	Wld_PlayEffect("MagicShieldFXLUpperArm", slf, slf, 1, 0, DAM_MAGIC, FALSE);		
	Wld_PlayEffect("MagicShieldFXLForeArm", slf, slf, 1, 0, DAM_MAGIC, FALSE);		
	Wld_PlayEffect("MagicShieldFXRForeArm", slf, slf, 1, 0, DAM_MAGIC, FALSE);		
	Wld_PlayEffect("MagicShieldFXLCalf", slf, slf, 1, 0, DAM_MAGIC, FALSE);		
	Wld_PlayEffect("MagicShieldFXRCalf", slf, slf, 1, 0, DAM_MAGIC, FALSE);		
	Wld_PlayEffect("MagicShieldFXRThigh", slf, slf, 1, 0, DAM_MAGIC, FALSE);		
	Wld_PlayEffect("MagicShieldFXLThigh", slf, slf, 1, 0, DAM_MAGIC, FALSE);			
	Wld_PlayEffect("MagicShieldFXSpine2", slf, slf, 1, 0, DAM_MAGIC, FALSE);
	Wld_PlayEffect("MagicShieldFXBip01", slf, slf, 1, 0, DAM_MAGIC, FALSE);
};

/***************************************************************/


func void Hero_RemoveInvItems(var int item, var int amount)
{
Npc_RemoveInvItems(hero,item,amount);
};

func void UnequipWeapon_Hero(var int npc)
{
var C_NPC h; h=Hlp_GetNpc(npc);
AI_UnequipWeapons(h);
};

func void Equip_Item_Hero(var int npc)
{
var C_NPC h; h=Hlp_GetNpc(npc);
AI_EquipBestMeleeWeapon(h);
};


 