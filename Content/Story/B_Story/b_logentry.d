
func void b_logentry(var string topic,var string entry)
{
 
	var string msg;
	Prints("Nowy wpis w dzienniku");
	msg=ConcatStrings("(",topic);
	msg = ConcatStrings(msg,")");
	
	Log_AddEntry(topic,entry);
	Prints(msg);
	Snd_Play("LogEntry");
};

