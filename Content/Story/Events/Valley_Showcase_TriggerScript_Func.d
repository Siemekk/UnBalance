
var int valley_showcase_triggerscript_func_onetime;

func void valley_showcase_triggerscript_func()
{
	if(valley_showcase_triggerscript_func_onetime == FALSE)
	{
		b_giveplayerxp(XP_ADDON_WACKELBAUM);
		valley_showcase_triggerscript_func_onetime = TRUE;
	};
};
var int onelogentry;
func void TELEPORTS_QUEST(){
	if(!onelogentry)
	{
		MIS_Teleports_Stones = LOG_RUNNING;
		Log_CreateTopic            (TOPIC_Teleports_Stones, LOG_MISSION);
		Log_SetTopicStatus       (TOPIC_Teleports_Stones, LOG_RUNNING);
		B_LogEntry                     (TOPIC_Teleports_Stones,"Interesuj�ce... Obok wie�y Xardasa zauwa�y�em dziwny kamie�. Mo�e Xardas b�dzie m�g�� mi powiedzie� o nim co� wi�cej...");
		onelogentry=true;
	};
};

func void PRZEJSCIE_ZAWALONE()
{
	var int once;
	if(!once)
	{
	PrintScreen("Cholera przej�cie si� zawali�o...",-1,30,FONT_SCREEN,4);
	
	PrintScreen("C�. Musz� si� przebi� do tej przekl�tej doliny!",-1,40,FONT_SCREEN,4);
	Wld_PlayEffect("FX_EarthQuake",hero,hero,0,0,0,FALSE);
			
	once=1;
	};

};