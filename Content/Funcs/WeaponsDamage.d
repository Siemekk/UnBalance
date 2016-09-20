
var int Hero_Minimal_Dmg;
func int DMG_OnDmg(var int victimPtr, var int attackerPtr, var int dmg) 
{ 
	var c_npc slf; slf = _^(attackerptr); // atakuj¹cy
	var c_npc oth; oth = _^(victimPtr); // ofiara
	var C_Item EQWeapon; EQWeapon = Npc_GetReadiedWeapon(slf); // broñ wyci¹gniêta
	var int CritChances;	CritChances = r_Max(100);
	//Ten no 1h 
	if(EQWeapon.flags & ITEM_SWD)
	||(EQWeapon.flags & ITEM_AXE)
	||(EQWeapon.flags & ITEM_2HD_SWD)
	||(EQWeapon.flags & ITEM_2HD_AXE)
	{
		if(EQWeapon.flags & ITEM_2HD_AXE)
		||(EQWeapon.flags & ITEM_2HD_SWD)
		{
			if(CritChances<=slf.hitchance[2])
			{
				dmg = (EQWeapon.damage + slf.attribute[ATR_STRENGTH]) - oth.protection[PROT_EDGE];
				if(r_Max(20)<5)&&(C_Npcishuman(oth))&&(Npc_IsPlayer(slf))&&((EQWeapon.flags & ITEM_2HD_AXE)||(EQWeapon.flags & ITEM_AXE))
				{
				AI_PlayAni			(oth, "T_FALLB_2_FALLENB" );
				AI_PlayAni			(oth, "S_FALLENB" );
				AI_PlayAni			(oth, "T_FALLENB_2_STAND" );	
				};
				
			}
			else
			{
				dmg = ((EQWeapon.damage + slf.attribute[ATR_STRENGTH]) - oth.protection[PROT_EDGE])/10;
			};
			
		}
		else if(EQWeapon.flags & ITEM_AXE)
		||(EQWeapon.flags & ITEM_SWD)
		{
		if(CritChances<=slf.hitchance[1])
			{
				dmg = (EQWeapon.damage + slf.attribute[ATR_STRENGTH]) - oth.protection[PROT_EDGE];
			}
			else
			{
				dmg = ((EQWeapon.damage + slf.attribute[ATR_STRENGTH]) - oth.protection[PROT_EDGE])/10;
			};
		};
	
		if(dmg<=NPC_MINIMAL_DAMAGE)
		{
			if(!Npc_IsPlayer(slf))
			{
			dmg = NPC_MINIMAL_DAMAGE;
			}
			else
			{
			dmg = Hero_Minimal_Dmg;
			};		
		};
	};

	
	if(EQWeapon.flags&ITEM_CROSSBOW)
	{
		if(PenetrationSkill)
		{
		dmg=(EQWeapon.damage+slf.ATTRIBUTE[ATR_STRENGTH])-oth.protection[PROT_POINT];
		}
		else
		{
		dmg=(EQWeapon.damage+slf.ATTRIBUTE[ATR_DEXTERITY])-oth.protection[PROT_POINT];
		};
	};
	
	if(DmgInformations)
	{
		if(Npc_IsPlayer(slf))
		{
		Prints_Ext(IntToString(dmg),RGBA(0,180,0,255));
		}
		else if(Npc_IsPlayer(oth))
		{
		Prints_Ext(IntToString(dmg),RGBA(180,0,0,255));
		};
	};
	
	
	return dmg;
};
	
	
func void _DMG_OnDmg() {
	EDI = DMG_OnDmg(EBP, MEM_ReadInt(MEM_ReadInt(ESP+644)+8), EDI);
};
func void InitDamage() {
	const int dmg = 0;
	if (dmg) { return; };
	HookEngineF(6736583/*0x66CAC7*/, 5, _DMG_OnDmg);
	dmg = 1;
};
