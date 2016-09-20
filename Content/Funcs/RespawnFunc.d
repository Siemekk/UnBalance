//Respawn 
class RespawnObject {
	var int inst; //Die Monsterinstanz
	var string wp; //Der Wegpunkt
	var int respawnDay; // Der Tag des Respawns, wobei der erste Tag den Wert 0 hat... Genau wie Gothic.
};

const int MAX_RESPAWN = 256; //Wir definieren diese Konstante, um unser System leicher anpassen zu können, z.B. bei vielen Monstern. Außerdem ist das schöner.
var int RespawnArray[MAX_RESPAWN];
var int nextRespawnIndex;

instance RespawnObject@(RespawnObject);

func void AddToRespawnArray(var c_npc slf) {
	 var int hndl; hndl = new(RespawnObject@);
	 
	if(slf.aivar[AIV_MM_DAYTORESPAWN]==999)||(slf.aivar[AIV_MM_DAYTORESPAWN]==0)
	{ return; };
	
	MEM_WriteStatArr(RespawnArray, nextRespawnIndex, hndl); // RespawnArray[nextRespawnIndex] = hndl;
	 nextRespawnIndex += 1; // Beim nächsten Mal in den nächsten Index schreiben
	 
	 var RespawnObject myRespawnObject; myRespawnObject = get(hndl);
	 myRespawnObject.inst = Hlp_GetInstanceID(slf);
	 myRespawnObject.wp = slf.spawnPoint;
	 myRespawnObject.respawnDay = Wld_GetDay() + slf.aivar[AIV_MM_DAYTORESPAWN];
};

func void RemoveRespawnObject(var int hndl) {
	if (nextRespawnIndex == 0) { 
		return;
	};

	delete(hndl);
	//Loop
	var int i; i = 0; 
	var int pos; pos = MEM_StackPos.position; // Stellt euch einfach vor, das hier wäre eine While(1)-Schleife. Zur Übersicht habe ich eingerückt.

		var int h; h = MEM_ReadStatArr(RespawnArray, i); 
		
		if (h == hndl) { 
			MEM_WriteStatArr(RespawnArray, i, MEM_ReadStatArr(RespawnArray, nextRespawnIndex-1)); 
			MEM_WriteStatArr(RespawnArray, nextRespawnIndex-1, 0);
			nextRespawnIndex -= 1; // Unseren Zähler dekrementieren
			return;
		};

	i += 1;	
	if (i >= nextRespawnIndex) { 

		return;
	};
	MEM_StackPos.position = pos;
	
};

func void CheckRespawns() {
	if (nextRespawnIndex == 0) { 
		return;
	};
	var int i; i = 0;
	var int pos; pos = MEM_StackPos.position;
	
		var int hndl; hndl = MEM_ReadStatArr(RespawnArray, i);
		var RespawnObject myRespawnObject; myRespawnObject = get(hndl);
		
		
		
		if (myRespawnObject.respawnDay <= Wld_GetDay()) { 
			
			PrintDebug_S("Let's do! Respawn");
			Wld_InsertNpc(myRespawnObject.inst, myRespawnObject.wp);
			
			RemoveRespawnObject(hndl);
		} else {
			i += 1;
		};	
	if (i >= nextRespawnIndex) { 
	 
		return;
	};
	MEM_StackPos.position = pos;
	
};