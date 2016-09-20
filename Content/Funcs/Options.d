/*********************************\
************30-05-2016*************
************21:05 Start************
\**********************************/
var int IdleAnims_Button;
var int IdleAnims;
var int IdleAnims_Title;
var int IdleAnims_Descripton;
var int IdleAnims_YesorNo;
var string IdleAnimsText;
func void OptionMenu()
{
var int OptionOpended;
if(OptionOpended){
//zrobić binda na klawisz P lub NUM9 if(M)
IdleAnims_Button =Button_Create(50,4900,300,375,"Ico_HeroEdge.tga",Enter_IdleAnims,Leave_IdleAnims,ClickIdleAnims);
Button_Show(IdleAnims_Button);
Button_Activate(IdleAnims_Button);
OptionOpended=true;
	};
};

func void Enter_IdleAnims()
{
if(IdleAnims)
{
IdleAnimsText="Aktywne";
}
else
{
IdleAnimsText="Nieaktywne";
};
IdleAnims_Title=Print_Ext(-1,PDoY,"Animacje bezczynności",TitlesFont,RGBA(255,175,0,255),-1);
IdleAnims_Descripton = Print_Ext(-1,PPoY,"Postać posiada naturalne odruchy.",PF_Font,RGBA(255,255,255,255),-1);
IdleAnims_YesorNo = Print_Ext(-1,PPoY+150,IdleAnimsText,PF_Font,RGBA(255,255,255,255),-1);
};

func void Leave_IdleAnims()
{

Print_DeleteText(MagicStaffs_Title);

};

func void ClickIdleAnims()
{
if(!IdleAnims)
{
IdleAnims=true;
IdleAnimsText="Aktywne";
Mdl_ApplyOverlayMDS(hero,"Humans_Sprint");
}
else
{
IdleAnimsText="Nieaktywne";
Mdl_RemoveOverlayMDS(hero,"Humans_Sprint");
IdleAnims=false;
};

};