/***********************************\
             FOCUSNAMES
\***********************************/

func int Focusnames_Color_Friendly() {
    return RGBA(0,   180, 0,   255); // Grün
};

func int Focusnames_Color_Neutral() {
    return RGBA(255, 255, 255, 255); // Weiß
};

func int Focusnames_Color_Angry() {
    return RGBA(255, 180, 0,   255); // Orange
};

func int Focusnames_Color_Hostile() {
    return RGBA(175, 0,   0,   255); // Rot
};


//========================================
// [intern] Färben der Namen
//========================================
func void _Focusnames() {
    var int col; col = -1; // Stupid pseudo-locals
    var oCNpc her; her = Hlp_GetNpc(hero);
	if(Hlp_Is_oCItem(her.focus_vob)) {
    var c_item itm; itm = MEM_PtrToInst(her.focus_vob);

    // Setze col = RGBA(.., .., .., ..); um die Farbe einzustellen

}//od t¹d skrzynki
else if (Hlp_Is_oCMobContainer(her.focus_vob)) { //jeœli patrzysz na skrzyniê
    var oCMobContainer Chest; Chest = MEM_PtrToInst(her.focus_vob);
    if (Chest._oCMobLockable_bitfield == false) //jeœli skrzynia jest otwarta
    {
        if (Chest.containList_next > 0) // jeœli skrzynia ma jakieœ przedmioty
        {
        col = Focusnames_Color_Angry(); // jej nazwa ma kolor pomarañczowy :D
        }
        else
        {
		col = Focusnames_Color_Friendly(); // jeœli jest pusta, kolor jest zielony xD
        };
    }
    else
    {
	col = Focusnames_Color_Hostile(); // jeœli jest zamkniêta, jej nazwa jest na Czerwona
    };
	}	
    else if(Hlp_Is_oCMobDoor(her.focus_vob)) { // jeœli patrzysz na drzwi
    var oCMobDoor Door; Door = MEM_PtrToInst(her.focus_vob);
    if (Door._oCMobLockable_bitfield == false)
    {
    col = Focusnames_Color_Neutral(); // jeœli drzwi s¹ otwarte, ich nazwa jest na bia³o
    }
    else
    {
    col = Focusnames_Color_Neutral(); // jeœli zamkniête, ich nazwa jest na pomarañczowo
		};    
} 
else 
{
    col = Focusnames_Color_Neutral();
};

    var int ptr; ptr = MEM_Alloc(4);
    MEM_WriteInt(ptr, col);
    CALL_IntParam(ptr);
    CALL__thiscall(MEM_ReadInt(screen_offset), zCView__SetFontColor);
    MEM_Free(ptr);
	//te no skrzynki xd
	
}; 

	
