func void FF_ApplyOnceS(var func function)
{
	if(!FF_Active(function))
	{
	FF_Apply(function);
	};
};
func void PerFrameFunctions()
{
PrintDebug_S("TRIGGER7>>DayShift"); 
DayShift(Wld_GetDay());
};

func void PerFrame_Init()
{
PrintDebug_S("PerFrame>> Sprint_Init"); 
FF_ApplyOnceS(Sprint_Init);

PrintDebug_S("PerFrame>>Hide Bars ");  
FF_ApplyOnceS(Bar_Hided);

FF_ApplyOnceS(PerFrameFunctions);

PrintDebug_S("PerFrame>> Render Bars"); 
FF_ApplyOnceS(Bars_PerFrameHandle);

PrintDebug_S("PerFrame>>  FadeScreen_Function"); 
FF_ApplyOnceS(FadeScreen_Function);

PrintDebug_S("PerFrame>> Close Menu");
FF_ApplyOnceS(CloseNewMenu);


FF_ApplyOnceS(CinemaScope);

FF_ApplyOnceS(Menu_PerFrame);
FF_ApplyOnceS(Quivers_PerFrame_Handle);


/**************No PerFrame*************/
 
PrintDebug_S("Potions_Minus>>Debugs");
FF_ApplyOnceExt(Trigger_Potions,1000,-1);

PrintDebug_S("Potions_Texture>>Debugs");
FF_ApplyOnceExt(ReTexturePotions,500,-1);

PrintDebug_S("Regenerate_Sprint>>Debugs");
FF_ApplyOnceExt(Sprint_Regenerate,100,-1);

PrintDebug_S("Regenerate>>Debugs");
FF_ApplyOnceExt(RegenerateFunction,2000,-1);

PrintDebug_S("Regenerate_HP>>Debugs");
FF_ApplyOnceExt(RegenerateFunctionHP,2000,-1);


FF_ApplyOnceExt(ChangeAttribute_Trigger,1250,-1);

PrintDebug_S("Print_Infos_Trigger>>Debugs");
FF_ApplyOnceExt(Print_Infos_Trigger,520,-1);


};