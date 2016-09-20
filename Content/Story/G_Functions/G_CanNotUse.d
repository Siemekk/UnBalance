
func void g_cannotuse(var int bisplayer,var int nattribute,var int nvalue)
{
	var string strmessage;
	var string strattributemissing;
	var int nattributevalue;
	var int ndifference;
	var string strdifference;
	if((nattribute == ATR_MANA_MAX) && (nvalue == 666666))
	{
		strmessage = PRINT_ADDON_BELIARSCOURSE_MISSING;
		b_blitzinarsch();
		SC_FAILEDTOEQUIPBELIARSWEAPON = TRUE;
	}
	else
	{
		if(nattribute == ATR_HITPOINTS)
		{
			strattributemissing = " pkt. trafieñ aby za³o¿yæ ten przedmiot";
			nattributevalue = self.attribute[ATR_HITPOINTS];
		}
		else if(nattribute == ATR_HITPOINTS_MAX)
		{
			strattributemissing = " maks. pkt. ¿ycia aby za³o¿yæ ten przedmiot";
			nattributevalue = self.attribute[ATR_HITPOINTS_MAX];
		}
		else if(nattribute == ATR_MANA)
		{
			strattributemissing = " pkt. many aby za³o¿yæ ten przedmiot";
			nattributevalue = self.attribute[ATR_MANA];
		}
		else if(nattribute == ATR_MANA_MAX)
		{
			strattributemissing = " maks. pkt. many aby za³o¿yæ ten przedmiot";
			nattributevalue = self.attribute[ATR_MANA_MAX];
		}
		else if(nattribute == ATR_STRENGTH)
		{
			strattributemissing = " pkt. si³y aby za³o¿yæ ten przedmiot";
			nattributevalue = self.attribute[ATR_STRENGTH];
		}
		else if(nattribute == ATR_DEXTERITY)
		{
			strattributemissing = " pkt. zrêcznoœci aby za³o¿yæ ten przedmiot";
			nattributevalue = self.attribute[ATR_DEXTERITY];
		}
		else
		{
			strattributemissing = "";
			nattributevalue = 0;
		};
		ndifference = nvalue - nattributevalue;
		strdifference = IntToString(ndifference);
		strmessage = ConcatStrings("Brakuje ci ",strdifference);
		strmessage = ConcatStrings(strmessage,strattributemissing);
	};
	if(bisplayer)
	{
		Prints_Ext(strmessage,RGBA(180,0,0,255));
	};
};

