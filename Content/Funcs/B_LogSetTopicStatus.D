func void B_LogSetTopicStatus(var string topic, var int status)
{
LOG_SETTOPICSTATUS(TOPIC,STATUS);
var string msg; msg=ConcatStrings("(",topic);
msg=ConcatStrings(msg,")");
if(status==LOG_RUNNING)
{
Prints("Rozpoczęto zadanie:");
Prints(msg);
}
else if (status==LOG_SUCCESS)
{
Prints_Ext("Wykonano zadanie:",RGBA(100,255,100,255));
Prints_Ext(msg,RGBA(100,255,100,255));
}
else if (status==LOG_FAILED)
{
Prints_Ext("Popsuto zadanie:",RGBA(255,100,100,255));
Prints_Ext(msg,RGBA(255,100,100,255));
}
else if (status==LOG_OBSOLETE)
{
Prints_Ext("Anulowano zadanie:",RGBA(255,100,100,255));
Prints_Ext(msg,RGBA(255,100,0,255));
};


};