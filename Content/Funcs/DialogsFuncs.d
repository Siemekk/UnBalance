var int FadeScreenOverlayColorR;
var int FadeScreenOverlayColorG;
var int FadeScreenOverlayColorB;
var int FadeScreenOverlayBlend;
var int FadeScreenColorPtr;
var int FadeScreen_vpf;
var int FadeScreenState;//0-off;1-on;2-off->on; 3-on->off
func void I_FadeScreenToBlack(var int value_per_frame)
{	
	var int sbptr;
	FadeScreen_vpf = value_per_frame;
	MEM_InitGlobalInst();
	FadeScreenState=2;
	//Camera.cinemascope
	MEM_GAME.array_view_visible[0]=1;
	MEM_GAME.array_view_enabled[0]=1;
	sbptr = MEM_InstGetOffset(MEM_CAMERA);
	sbptr = sbptr+2240;
	MEM_WriteInt(sbptr,1);//enable
	FadeScreenColorPtr = sbptr+4;
	MEM_WriteInt(FadeScreenColorPtr,RGBA (FadeScreenOverlayColorR,FadeScreenOverlayColorG,FadeScreenOverlayColorB,1));//set almost opanque 4 trigger to now what to do
		//I dunno wtf is that but i copied it from another function (was working good :D)
	//change blend type:
	sbptr = MEM_GAME.array_view[0];

	//TERE IS 2 LAYERS: CAMERA screen BG -> THIS SCREEN
	MEM_WriteInt(sbptr+28,FadeScreenOverlayBlend);//blendfunc
};
/*
*/
func void I_FadeScreenFromBlack(var int value_per_frame)
{	
	var int sbptr;
	FadeScreen_vpf = value_per_frame;
	MEM_InitGlobalInst();
	FadeScreenState=3;
// 	MEM_GAME.array_view_visible[0]=1;
// 	MEM_GAME.array_view_enabled[0]=1;
	sbptr = MEM_InstGetOffset(MEM_CAMERA);
	sbptr = sbptr+2240;
	MEM_WriteInt(sbptr,1);//enable
	FadeScreenColorPtr = sbptr+4;	
	MEM_WriteInt(FadeScreenColorPtr,RGBA (FadeScreenOverlayColorR,FadeScreenOverlayColorG,FadeScreenOverlayColorB,255));//set almost opanque 4 trigger to now what to do	
};

func void I_TriggerFadeScreen()
{	if(FadeScreenState==2)//fade to black
	{

		MEM_WriteInt(FadeScreenColorPtr-4,1);//enable		
		MEM_WriteInt(FadeScreenColorPtr,RGBA (FadeScreenOverlayColorR,FadeScreenOverlayColorG,FadeScreenOverlayColorB,GetAlpha(MEM_ReadInt(FadeScreenColorPtr))+FadeScreen_vpf));	
		if(GetAlpha(MEM_ReadInt(FadeScreenColorPtr))>=254)
		{
		FadeScreenState=1;	
		};	
	}
	else if(FadeScreenState==3)//fade from black
	{
		MEM_WriteInt(FadeScreenColorPtr-4,1);//enable		
		MEM_WriteInt(FadeScreenColorPtr,RGBA (FadeScreenOverlayColorR,FadeScreenOverlayColorG,FadeScreenOverlayColorB,GetAlpha(MEM_ReadInt(FadeScreenColorPtr))-FadeScreen_vpf));	
		if(GetAlpha(MEM_ReadInt(FadeScreenColorPtr))==0)
		{
			FadeScreenState=0;	
			
			//reset colors
			FadeScreenOverlayColorR = 0;
			FadeScreenOverlayColorG = 0;
			FadeScreenOverlayColorB = 0;
		};		
	}
	else if(FadeScreenState==1)
	{
		MEM_WriteInt(FadeScreenColorPtr-4,1);//enable		
		MEM_WriteInt(FadeScreenColorPtr, RGBA (FadeScreenOverlayColorR,FadeScreenOverlayColorG,FadeScreenOverlayColorB,255));//0,0,0,255		
	};
};