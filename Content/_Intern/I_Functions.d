/*
FadeScreen Funcs
*/
var int FadeScreen_Color_R;
var int FadeScreen_Color_G;
var int FadeScreen_Color_B;
var int FadeScreen_Color_A;
var int FadeScreen_Color_Over;

var int Fade_Status;
var int FadeScreen_Multipler;

func void FadeScreen_Function() 
{
	MEM_InitGlobalInst();	
	
	MEM_GAME.array_view_visible[0]=true;
	MEM_GAME.array_view_enabled[0]=true;
	
	MEM_CAMERA.screenFadeEnabled=true; 
	MEM_CAMERA.screenFadeColor=RGBA(FadeScreen_Color_R,FadeScreen_Color_G,FadeScreen_Color_B,FadeScreen_Color_A);

	var zCView ptr; ptr	= _^(MEM_GAME.array_view[0]);
	ptr.alphafunc	=	FadeScreen_Color_Over;

	if(Fade_Status==1)
	{
		if(FadeScreen_Color_A<255)
		{
		FadeScreen_Color_A += FadeScreen_Multipler;
		}
		else if (FadeScreen_Color_A>=255)
		{
		FadeScreen_Color_A = 255;
		Fade_Status	=2;
		};
	}
	else if (Fade_Status==2) 
	{
		if(FadeScreen_Color_A >= FadeScreen_Multipler)
		{
		FadeScreen_Color_A -= FadeScreen_Multipler;
		}
		else if (FadeScreen_Color_A <= FadeScreen_Multipler)
		{
		FadeScreen_Color_A= 0;
		Fade_Status	=0;
		};
	};
};
	//**********************
	//Cinema Scope ChoiceBox
	//**********************
	var int CinemaScopes;
func void CinemaScope()
{
		var zCView ConversationBox_Ptr; ConversationBox_Ptr = _^(MEM_GAME.array_view[1]);	
		var int ChoiceBox_ptr; ChoiceBox_ptr = MEM_ReadInt(MEMINT_oCInformationManager_Address+28);
	if(!CinemaScopes)
	{
	MEM_WriteInt(ChoiceBox_ptr+96,zCTexture_Load("DLG_CHOICE.tga"));
	
	MEM_WriteInt(ChoiceBox_ptr+96,zCTexture_Load("DLG_CHOICE.tga"));
	ConversationBox_Ptr.backTex	=	zCTexture_Load("DLG_CONVERSATION.tga");
	}
	else
	{
		var int ptr;
    var int tmp;
    var int CinemaScopeAlpha;
    MEM_InitGlobalInst ();
    MEM_GAME.array_view_visible[3] = true;
    MEM_GAME.array_view_enabled[3] = true;
    MEM_Camera.cinemaScopeEnabled = true;
    MEM_Camera.cinemaScopeColor = RGBA (0, 0, 0, CinemaScopeAlpha);


    if (InfoManager_HasFinished())
    {
        if (CinemaScopeAlpha >= 5)
        {
        CinemaScopeAlpha -= 10;
        };

        if (CinemaScopeAlpha == 5)
        {
        CinemaScopeAlpha = 0;
        };
    }
    else
    {
        if (CinemaScopeAlpha <= 250)
        {
        CinemaScopeAlpha += 10;
        };

        if (CinemaScopeAlpha == 250)
        {
        CinemaScopeAlpha = 255;
        };
		
    };
	ptr = MEM_InstGetOffset (MEM_GAME)+52;
    ptr = MEM_ReadInt (ptr);
    ptr = ptr+64;
    MEM_WriteInt (ptr, 0);
    ptr = MEM_InstGetOffset (MEM_GAME)+60;
    ptr = MEM_ReadInt (ptr);
    ptr = ptr+4;
    MEM_WriteInt (ptr, 0);
    ptr = ptr+12;
    MEM_WriteInt (ptr, 1);
    ptr = MEM_ReadInt (MEMINT_oCInformationManager_Address+28);
    MEM_WriteInt (ptr+56, STR_ToInt (MEM_GetGothOpt ("VIDEO", "zVidResFullscreenX"))/6);
    ptr = ptr+60;


    if (Print_Screen[PS_Y] <= 768) //low res fix
    {
    tmp = Print_Screen[PS_Y] * 21 / 2 - ((Print_Screen[PS_Y] * 2 / 24) % 1);
    MEM_WriteInt (ptr, tmp);        
    ptr = ptr+8;
    MEM_WriteInt (ptr, Print_Screen[PS_Y] - tmp);        
    }
    else
    {
    tmp = Print_Screen[PS_Y] * 113 / 128; 
    tmp = tmp - (tmp % 1);


        if (Print_Screen[PS_Y] - tmp > 120)
        {
        tmp = tmp + (Print_Screen[PS_Y] - tmp - 120) / 2;
        tmp = tmp - (tmp % 1);
        MEM_WriteInt (ptr, tmp);    
        ptr = ptr+8;
        MEM_WriteInt (ptr, 120);
        }
        else
        {
        MEM_WriteInt (ptr, tmp);
        ptr = ptr+8;        
        MEM_WriteInt (ptr, Print_Screen[PS_Y] - tmp);
        };
    };


    ptr = ptr+28;
    MEM_WriteInt (ptr, 0);
	

	MEM_WriteInt(ChoiceBox_ptr+96,zCTexture_Load("CA_Alpha.tga"));
	

	ConversationBox_Ptr.pposy 		= 		1;
	ConversationBox_Ptr.backTex	=	zCTexture_Load("CA_Alpha.tga");
	};
};
const int oCNpc__GetModel = 7571232;
const int zCModel__SearchNode = 5758960;
const int zCModel__SetNodeVisual = 5739168;

func int oCNpc_GetModel(var int npc)
{
	CALL__Thiscall(npc, oCNpc__GetModel);
    return CALL_RetValAsInt();
};

func int zCModel_SearchNode(var int model, var string node)
{
	CALL_zStringPtrParam(node);
	CALL__Thiscall(model, zCModel__SearchNode);
    return CALL_RetValAsInt();
};

func void zCModel_SetNodeVisual(var int model, var int modelNodeInst, var int Visual, var int prm3)   
{
	CALL_IntParam(prm3);
	CALL_PtrParam(Visual);
	CALL_PtrParam(modelNodeInst);
	CALL__Thiscall(model, zCModel__SetNodeVisual);
};  

func void PutInNode(var int npc, var string node, var string visual)
{
	var int npcModel; var int modelNodeInst; var int vob;
	npcModel = oCNpc_GetModel(npc);
	vob = MEM_InsertVob(visual, MEM_GetAnyWP());
	modelNodeInst = zCModel_SearchNode(npcModel, node);
	zCModel_SetNodeVisual(npcModel, modelNodeInst, MEM_ReadInt(vob+200), 1);
};
func void Ext_PutInSlot(var c_npc npc, var string node, var string visual)
{
	PutInNode(_@(npc),node,ConcatStrings(visual,".3ds"));
};