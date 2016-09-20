
func void b_playerfinditem(var int itm,var int amount)
{
	var string concattext;
	var string itemname;
	if(Npc_IsPlayer(self))
	{
		CreateInvItems(self,itm,amount);
		itemname = item.name;
		if(itm == itmi_gold)
		{
			concattext = ConcatStrings(IntToString(amount),PRINT_GOLDERHALTEN);
			Print(concattext);
			Snd_Play("Geldbeutel");
		}
		else if(amount == 1)
		{
			concattext = ConcatStrings(itemname,PRINT_ADDON_ERHALTEN);
			Print(concattext);
		}
		else
		{
			concattext = ConcatStrings(IntToString(amount),PRINT_ITEMSERHALTEN);
			concattext = ConcatStrings(concattext," (");
			concattext = ConcatStrings(concattext,itemname);
			concattext = ConcatStrings(concattext,")");
			Print(concattext);
		};
	};
};


func void Found_Random_Gold(var int type)
{
var int randy;
var string msg;
if(type==0)//od 15 do 25
{
randy=r_MinMax(15,25);
}
else if (type==1)//od 40 do 65
{
randy=r_MinMax(40,65);
}
else if (type==2)//od 75 do 120
{
randy=r_MinMax(75,120);
}
else
{
Prints("B³¹d z³y parametr");
};
Snd_Play("Geldbeutel");
CreateInvItems(self,itmi_gold,randy);
msg=ConcatStrings("Znalaz³em ",IntToString(Randy));
msg=ConcatStrings(msg, " szt. z³ota !");
Prints_Ext(msg,RGBA(0,180,0,255));
};