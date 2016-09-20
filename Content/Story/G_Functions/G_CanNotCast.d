
func void g_cannotcast(var int bisplayer,var int ncircleneeded,var int ncirclepossessed)
{
	var string strmessage;
	var int ndifference;
	var string strdifference;
	ndifference = ncircleneeded - ncirclepossessed;
	strdifference = IntToString(ndifference);
	
	strmessage = ConcatStrings("Brakuje ci ",strdifference);
	strmessage = ConcatStrings(strmessage," krêgów magii aby u¿yæ tej runy");
	if(bisplayer)
	{
		Prints_Ext(strmessage,RGBA(180,0,0,255));
	};
};

