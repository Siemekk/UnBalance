
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
		B_LogEntry                     (TOPIC_Teleports_Stones,"Interesuj¹ce... Obok wie¿y Xardasa zauwa¿y³em dziwny kamieñ. Mo¿e Xardas bêdzie móg³‚ mi powiedzieæ o nim coœ wiêcej...");
		onelogentry=true;
	};
};

func void PRZEJSCIE_ZAWALONE()
{
	var int once;
	if(!once)
	{
	PrintScreen("Cholera przejœcie siê zawali³o...",-1,30,FONT_SCREEN,4);
	
	PrintScreen("Có¿. Muszê siê przebiæ do tej przeklêtej doliny!",-1,40,FONT_SCREEN,4);
	Wld_PlayEffect("FX_EarthQuake",hero,hero,0,0,0,FALSE);
			
	once=1;
	};

};