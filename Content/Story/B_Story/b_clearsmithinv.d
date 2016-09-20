
func void b_clearsmithinv(var C_NPC slf)
{
	var C_NPC her;
	her = Hlp_GetNpc(pc_hero);
	if(Hlp_GetInstanceID(slf) != Hlp_GetInstanceID(her))
	{
		Npc_RemoveInvItems(slf,itmiswordraw,Npc_HasItems(slf,itmiswordraw));
		Npc_RemoveInvItems(slf,itmiswordrawhot,Npc_HasItems(slf,itmiswordrawhot));
		Npc_RemoveInvItems(slf,itmiswordbladehot,Npc_HasItems(slf,itmiswordbladehot));
		Npc_RemoveInvItems(slf,itmiswordblade,Npc_HasItems(slf,itmiswordblade));
	};
};

func void b_clearsmithinv_addon(var C_NPC slf)
{
	Npc_RemoveInvItems(self,itmiswordraw,5);
	Npc_RemoveInvItems(self,itmiswordrawhot,5);
	Npc_RemoveInvItems(self,itmiswordbladehot,5);
	Npc_RemoveInvItems(self,itmiswordblade,5);
	Npc_RemoveInvItems(self,itmi_pliers_armr,5);
	Npc_RemoveInvItems(self,itmi_pliers_smlt,5);
	Npc_RemoveInvItems(self,itmi_pliers_smlt_2,5);
};

func void b_clearalchemyinv(var C_NPC slf)
{
	var C_NPC her;
	her = Hlp_GetNpc(pc_hero);
	if(Hlp_GetInstanceID(slf) != Hlp_GetInstanceID(her))
	{
		Npc_RemoveInvItems(slf,itmi_flask,Npc_HasItems(slf,itmi_flask));
	};
};

func void b_clearbonusfoodinv(var C_NPC slf)
{
	var C_NPC her;
	her = Hlp_GetNpc(pc_hero);
	if(Hlp_GetInstanceID(slf) != Hlp_GetInstanceID(her))
	{
		if(slf.aivar[89] == TRUE)
		{
			Npc_RemoveInvItems(slf,itfo_apple,Npc_HasItems(slf,itfo_apple));
		}
		else
		{
			slf.aivar[89] = TRUE;
		};
		if(slf.guild == GIL_PAL)
		{
			Npc_RemoveInvItems(slf,itpl_dex_herb_01,Npc_HasItems(slf,itpl_dex_herb_01));
		};
	};
};

