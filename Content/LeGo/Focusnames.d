/***********************************\
             FOCUSNAMES
\***********************************/

func int Focusnames_Color_Friendly() {
    return RGBA(0,   180, 0,   255); // Gr�n
};

func int Focusnames_Color_Neutral() {
    return RGBA(255, 255, 255, 255); // Wei�
};

func int Focusnames_Color_Angry() {
    return RGBA(255, 180, 0,   255); // Orange
};

func int Focusnames_Color_Hostile() {
    return RGBA(175, 0,   0,   255); // Rot
};


//========================================
// [intern] F�rben der Namen
//========================================
func void _Focusnames() {
    var int col; col = -1; // Stupid pseudo-locals
    var oCNpc her; her = Hlp_GetNpc(hero);
	if(Hlp_Is_oCItem(her.focus_vob)) {
    var c_item itm; itm = MEM_PtrToInst(her.focus_vob);

    // Setze col = RGBA(.., .., .., ..); um die Farbe einzustellen

}//od t�d skrzynki
else if (Hlp_Is_oCMobContainer(her.focus_vob)) { //je�li patrzysz na skrzyni�
    var oCMobContainer Chest; Chest = MEM_PtrToInst(her.focus_vob);
    if (Chest._oCMobLockable_bitfield == false) //je�li skrzynia jest otwarta
    {
        if (Chest.containList_next > 0) // je�li skrzynia ma jakie� przedmioty
        {
        col = Focusnames_Color_Angry(); // jej nazwa ma kolor pomara�czowy :D
        }
        else
        {
		col = Focusnames_Color_Friendly(); // je�li jest pusta, kolor jest zielony xD
        };
    }
    else
    {
	col = Focusnames_Color_Hostile(); // je�li jest zamkni�ta, jej nazwa jest na Czerwona
    };
	}	
    else if(Hlp_Is_oCMobDoor(her.focus_vob)) { // je�li patrzysz na drzwi
    var oCMobDoor Door; Door = MEM_PtrToInst(her.focus_vob);
    if (Door._oCMobLockable_bitfield == false)
    {
    col = Focusnames_Color_Neutral(); // je�li drzwi s� otwarte, ich nazwa jest na bia�o
    }
    else
    {
    col = Focusnames_Color_Neutral(); // je�li zamkni�te, ich nazwa jest na pomara�czowo
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

	
