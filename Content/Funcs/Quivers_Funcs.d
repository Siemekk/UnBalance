//Ok. This functions created Quivers depending on the amount of arrows
//First Steep:
//-Read arrows from hero inventory;
//Second Steep:
//-Create quiver
//If Hero has arrows >= 8 create Set visual of quiver to _MAX else, create Quivers with prefix MIN - 6
//IF hero has arrow in hand quiver visual =-1; :D It is so easy :O

//
var int Quiver_Type;
//Function by Carelion
func int oCNpc_GetSlotItem(var c_npc npc, var string slotName)
{
    const int oCNpc__GetSlotItem = 7544720; //0x00731F90
   
    CALL_zStringPtrParam(slotName);
    CALL__Thiscall(_@(npc), oCNpc__GetSlotItem);
    return CALL_RetValAsPtr(); //oCItem
};


func void Quivers_PerFrame_Handle()
{
	if(!Npc_HasEquippedRangedWeapon(hero))
	&&(!Npc_HasReadiedRangedWeapon(hero))
	{ return;};
		var C_ITEM bow; bow = Npc_GetEquippedRangedWeapon(hero);
	
			var int debuuger; var int arrows; arrows = Npc_HasItems(hero,ITRW_Arrow);
			var int appled;
		
				if(Npc_HasEquippedRangedWeapon(hero))&&(debuuger) && (arrows!=0)
				{ 
				arrows -= 1;
				debuuger	= false;
				}
				else if (Npc_HasReadiedRangedWeapon(hero))&&(!debuuger)&& (arrows!=0)
				{
				arrows += 1;
				debuuger = true;
				};
						
				if(arrows==0)
				{
					if(Quiver_Type != 1)
					{			
					Ext_PutInSlot(hero,"BIP01 R CLAVICLE","Quiver_WithOut_Arrows");	
					Quiver_Type = 1;
					};

				}
				else if (arrows==1)
				{
					if(Quiver_Type != 2)
					{			
					Ext_PutInSlot(hero,"BIP01 R CLAVICLE","Quiver_1_Arrow");	
					Quiver_Type = 2;
					};
				}
				else if (arrows==2)
				{
					if(Quiver_Type != 3)
					{			
					Ext_PutInSlot(hero,"BIP01 R CLAVICLE","Quiver_2_Arrow");	
					Quiver_Type = 3;
					};
				}
				else if (arrows==3)
				{
					if(Quiver_Type != 4)
					{			
					Ext_PutInSlot(hero,"BIP01 R CLAVICLE","Quiver_3_Arrow");	
					Quiver_Type = 4;
					};
				}
				else if (arrows==4)
				{
					if(Quiver_Type != 5)
					{			
					Ext_PutInSlot(hero,"BIP01 R CLAVICLE","Quiver_4_Arrow");	
					Quiver_Type = 5;
					};
				}
				else if (arrows==5)
				{
					if(Quiver_Type != 6)
					{			
					Ext_PutInSlot(hero,"BIP01 R CLAVICLE","Quiver_5_Arrow");	
					Quiver_Type = 6;
					};
				}
				else if (arrows==7)
				{
					if(Quiver_Type != 8)
					{			
					Ext_PutInSlot(hero,"BIP01 R CLAVICLE","Quiver_6_Arrow");	
					Quiver_Type = 8;
					};
				}
				else if (arrows>=8)
				{
					if(Quiver_Type != 9)
					{		
					Ext_PutInSlot(hero,"BIP01 R CLAVICLE","Quiver_MAX_Arrow");	
					Quiver_Type = 9;
					};
				};
};


func void Quiver_ReinitGame()
{

	var c_item bow; 

	if(Npc_HasReadiedRangedWeapon(hero))&&()
	{
		bow = Npc_GetReadiedRangedWeapon(hero);
	}
	else if(Npc_GetEquippedRangedWeapon(hero))
	{
		bow = Npc_GetEquippedRangedWeapon(hero);
	};
	
		if(bow.flags & ITEM_BOW)
		{
		Equip_Quivers();
		};
	
};
