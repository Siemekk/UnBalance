func void Add_Poison(var int value) // 1s = 4hp na sekundę !
{
	if(hero.aivar[AIV_POISON]){return;};
	
	if(hero.aivar[AIV_POISON]==FALSE)
	{
	hero.aivar[AIV_POISON]=value+1;
	FF_ApplyOnceExt(Poison_Timer,250,-1);	
	};

};

func void Poison_Timer()
{
	if(MEM_GAME.pause_Screen){return;};
		if(hero.aivar[AIV_POISON])
		{
		hero.aivar[AIV_POISON] -= 1;
		Npc_ChangeAttribute(hero,ATR_HITPOINTS,-1);
		};
		
		if(hero.aivar[AIV_POISON]==1)
		{
		Bar_SetTexture(Health_Bar,"Bar_Back.tga","Bar_Health.tga");
		hero.aivar[AIV_POISON] = 0;
		FF_Remove(Poison_Timer);
		};
};
