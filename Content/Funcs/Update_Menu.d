/***********************************\
	 Prasować baardzo wcześnie...
	   Wydawane bez recepty!
\***********************************/
func void Update_Menu_Item(var string name, var string val) {
        var int itPtr;
        itPtr = MEM_GetMenuItemByString(name);
        
        if (!itPtr) {
            MEM_Error(ConcatStrings("Update_Menu_Item: Invalid Menu Item: ", name));
            return;
        };
        
        //void __thiscall zCMenuItem::SetText(val = val, line = 0, drawNow = true)
        const int SetText = 5114800;
        
        CALL_IntParam(true);
        CALL_IntParam(0);
        CALL_zStringPtrParam(val);
        CALL__thiscall(itPtr, SetText);
    };
    
    //Call this is INIT_GLOBAL after LeGo_Init.
    func void Install_Character_Menu_Hook() {
        //at oCMenu_Status::SetLearnPoints
        const int done = false;
        if(!done) {
            HookEngineF(4707920, 6, Update_Character_Menu);
            done = true;
        };
    };
func void Update_Character_Menu() {
  //  Update_Menu_Item("MENU_ITEM_TALENT_SHIELD_SKILL", Talent_Shield_Menu);
//	Update_Menu_Item("MENU_ITEM_TALENT_1_SKILL", Talent_OneH_Menu);//1h
//	Update_Menu_Item("MENU_ITEM_TALENT_2_SKILL", Talent_TwoH_Menu);//2h
//	Update_Menu_Item("MENU_ITEM_TALENT_DUAL_SKILL", Talent_Dual_Menu);//Duals
	//Update_Menu_Item("MENU_ITEM_TALENT_Learning_SKILL", Talent_FASTLEARN);//Duals
	//Update_Menu_Item("MENU_ITEM_TALENT_REGENERATEMP_SKILL", Regenerate_HP_Skill_Menu);//Duals
	////Update_Menu_Item("MENU_ITEM_TALENT_REGENERATEHP_SKILL", Regenerate_Mana_Skill_Menu);//Duals
	
	
};



/***********************************\
	 Prasować baardzo wcześnie...
	   Wydawane bez recepty!
\***********************************/
