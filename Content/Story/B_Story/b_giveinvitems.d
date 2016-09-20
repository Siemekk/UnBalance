
func int b_giveinvitems(var C_NPC giver,var C_NPC taker,var int iteminstance,var int amount)
{
	var string concattext;
	var string itemname;
	if(Npc_IsPlayer(giver))
	{
		if(amount > Npc_HasItems(giver,iteminstance))
		{
			return FALSE;
		};
	};
	if(amount == 0)
	{
		return TRUE;
	};
	Npc_RemoveInvItems(giver,iteminstance,amount);
	CreateInvItems(taker,iteminstance,amount);
	itemname = item.name;
	if(Npc_IsPlayer(giver))
	{
		if(iteminstance == itmi_gold)
		{
			concattext = ConcatStrings(IntToString(amount),PRINT_GOLDGEGEBEN);
			Prints_ext(concattext,RGBA(255,0,0,255));
		}
		else if(amount == 1)
		{
			concattext = ConcatStrings(itemname,PRINT_ADDON_GEGEBEN);
			Prints_ext(concattext,RGBA(255,0,0,255));
		}
		else
		{
			concattext = ConcatStrings(IntToString(amount),PRINT_ITEMSGEGEBEN);
			concattext = ConcatStrings(concattext," (");
			concattext = ConcatStrings(concattext,itemname);
			concattext = ConcatStrings(concattext,")");
			Prints_ext(concattext,RGBA(255,0,0,255));
		};
	}
	else if(Npc_IsPlayer(taker))
	{
		if(iteminstance == itmi_gold)
		{
			concattext = ConcatStrings(IntToString(amount),PRINT_GOLDERHALTEN);
			Prints(concattext);
		}
		else if(amount == 1)
		{
			concattext = ConcatStrings(itemname,PRINT_ADDON_ERHALTEN);
			Prints_ext(concattext,RGBA(0,255,0,255));
		}
		else
		{
			concattext = ConcatStrings(IntToString(amount),PRINT_ITEMSERHALTEN);
			concattext = ConcatStrings(concattext," (");
			concattext = ConcatStrings(concattext,itemname);
			concattext = ConcatStrings(concattext,")");
			Prints_ext(concattext,RGBA(0,255,0,255));
		};
	};
	return TRUE;
};

