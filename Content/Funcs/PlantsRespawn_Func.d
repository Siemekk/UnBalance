/*****************************************
*            Respawn_PlantsObject 
* Verantwortlich für den Pflanzen Respawn_Plants
*****************************************/


class Respawn_PlantsObject {
    var int inst; 
    var int spawnPosition[16]; 
    var int Respawn_PlantsDay; 
    var string WorldName;
};

instance Respawn_PlantsObject@(Respawn_PlantsObject);


//*************************************
// Erzeuge ein Respawn_PlantsObject 
//*************************************

func void CreateRespawn_PlantsObject(var oCItem slf) {
    var int hndl; hndl = new(Respawn_PlantsObject@);
    var Respawn_PlantsObject myRespawn_PlantsObject; myRespawn_PlantsObject = get(hndl);
	
	//Set Instance
    myRespawn_PlantsObject.inst = Hlp_GetInstanceID(slf);
	
    MEM_CopyWords(_@(slf._zCVob_trafoObjToWorld), _@(myRespawn_PlantsObject.spawnPosition), 16);
	
    myRespawn_PlantsObject.Respawn_PlantsDay = Wld_GetDay() + slf.nutrition; //test co 2 dni
	
    myRespawn_PlantsObject.WorldName = MEM_World.worldName;
};

//*************************************
// Entferne ein Respawn_PlantsObject
//*************************************

func void RemoveRespawn_PlantsObject(var int hndl) {    
    delete(hndl);
};

//************************************************
// Iteminstance an Koordinaten einfügen
//************************************************
func void MEM_InsertItemInstance (var int inst, var int fX, var int fY, var int fZ) {
    var zCWaynet wayNet; wayNet = MEM_PtrToInst(MEM_World.wayNet);
    var zCWaypoint wp; wp = MEM_PtrToInst(MEM_ReadInt(wayNet.wplist_next+4));
    var int x; x = wp.pos[0];
    var int y; y = wp.pos[1];
    var int z; z = wp.pos[2];
    wp.pos[0] = fX;
    wp.pos[1] = fY;
    wp.pos[2] = fZ;
    Wld_InsertItem(inst, wp.name);
    wp.pos[0] = x;
    wp.pos[1] = y;
    wp.pos[2] = z;
};

//***************************************
// Überprüfe ob gespawned werden darf
//***************************************
func void CheckRespawn_Plantss() {
    foreachHndl (Respawn_PlantsObject@, _CheckRespawn_Plantss);
};

func void GetPositionWorldVec(var int vobPtr, var int vecPtr) {
    var zCVob vob; vob = MEM_PtrToInst(vobPtr);
    MEM_WriteIntArray(vecPtr, 0, vob.trafoObjToWorld[3]);
    MEM_WriteIntArray(vecPtr, 1, vob.trafoObjToWorld[7]);
    MEM_WriteIntArray(vecPtr, 2, vob.trafoObjToWorld[11]);
};

func void SetPositionWorldVec(var int vobPtr, var int vecPtr) {
    const int zCVob_SetPositionWorld = 6404976; //0x61BB70

    CALL_PtrParam(vecPtr);
    CALL__thiscall(vobPtr, zCVob_SetPositionWorld);
};

func void VobPositionUpdated(var int vobPtr) {
    var int pos[3];
    GetPositionWorldVec(vobPtr, _@(pos));
    SetPositionWorldVec(vobPtr, _@(pos));
};

func int _CheckRespawn_Plantss(var int hndl) {     
        var Respawn_PlantsObject myRespawn_PlantsObject; myRespawn_PlantsObject = get(hndl);
        
        if (myRespawn_PlantsObject.Respawn_PlantsDay <= Wld_GetDay() && (Hlp_StrCmp (myRespawn_PlantsObject.WorldName, MEM_World.worldName))) { 
            MEM_InsertItemInstance(myRespawn_PlantsObject.inst, myRespawn_PlantsObject.spawnPosition[3], myRespawn_PlantsObject.spawnPosition[7], myRespawn_PlantsObject.spawnPosition[11]);
            var zCPar_Symbol a;    a = _^(MEM_ReadIntArray (currSymbolTableAddress, myRespawn_PlantsObject.inst)); 
            var oCItem itm;    itm = _^(a.offset); 
            var int itmPtr;    itmPtr = MEM_InstToPtr (itm); 
            MEM_CopyWords(_@(myRespawn_PlantsObject.spawnPosition),_@(itm._zCVob_trafoObjToWorld), 16);
            VobPositionUpdated(itmPtr);
            RemoveRespawn_PlantsObject(hndl);
        };
    return rContinue;
};

func void EVT_NpcTakeVob()
{
	var c_npc slf; slf = MEM_PtrToInst(ECX);                // der NPC, der das Item einsammelt
    var oCItem itm; itm = MEM_PtrToInst(MEM_ReadInt(ESP + 4));            // Pointer auf das Item

    if (!Hlp_IsValidItem  (itm))
    {
        return;
    }
    else
    {
        if ((itm.nutrition >=1) && ((itm.flags & ITEM_DROPPED) != ITEM_DROPPED))
        {
            CreateRespawn_PlantsObject(itm);
        };         
    };    
};

func void Hook_oCNpc__DoTakeVob() {
    const int oCNpc__DoTakeVob = 7621056; //0x7449C0
    HookEngine(oCNpc__DoTakeVob, 6, "EVT_NPCTAKEVOB");
};

