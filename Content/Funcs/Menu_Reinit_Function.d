//******************
//*Global Milisecond delay loop
//******************
func void LoopUSec()
{

};

//******************
//*Global Render loop (for printing text only)
//******************
func void Menu_PerFrame()
{

		SetMouseEnabled(true);
		
		if (Hlp_StrCmp(Mem_GetGothOpt("IKARUS","EXPBAR"), "0"))
		{
			BarHided=true;
		}
		else
		{
			BarHided=FALSE;
		};

		if (Hlp_StrCmp(Mem_GetGothOpt("IKARUS","cinemascopes"), "0"))
		{
			CinemaScopes= false;
		}
		else
		{
			CinemaScopes= true;
		};
	
	if (Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Style_Allign"), "0"))
	{
	Text_PositionX=150;
	Text_PositionY=3200;
	}
	else if(Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Style_Allign"), "1"))
	{
	Text_PositionX=-1;
	Text_PositionY=3200;
	}
	else if(Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Style_Allign"), "2"))
	{
		Text_PositionX=7300;
		Text_PositionY=3200;
	}
	else if(Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Style_Allign"), "3"))
	{
		if(Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Position_X"), "0"))
		{
		Text_PositionX=150;
		}
		else if(Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Position_X"), "1"))
		{
		Text_PositionX=1000;
		}
		else if(Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Position_X"), "2"))
		{
		Text_PositionX=1900;
		}
		else if(Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Position_X"), "3"))
		{
		Text_PositionX=2800;
		}
		else if(Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Position_X"), "4"))
		{
		Text_PositionX=-1; //3706
		}
		else if(Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Position_X"), "5"))
		{
		Text_PositionX=4600;
		}
		else if(Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Position_X"), "6"))
		{
		Text_PositionX=5500;
		}
		else if(Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Position_X"), "7"))
		{
		Text_PositionX=6400;
		}
		else if (Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Position_X"), "8"))
		{
		Text_PositionX=7300;
		};
	/**************************************************************************/
		if (Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Position_Y"), "0"))
		{
		Text_PositionY=800;
		}
		else if(Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Position_Y"), "1"))
		{
		Text_PositionY=1600;
		}
		else if(Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Position_Y"), "2"))
		{
		Text_PositionY=2400;
		}
		else if(Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Position_Y"), "3"))
		{
		Text_PositionY=3200;
		}
		else if(Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Position_Y"), "4"))
		{
		Text_PositionY=4000; //3706
		}
		else if(Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Position_Y"), "5"))
		{
		Text_PositionY=4800;
		}
		else if(Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Position_Y"), "6"))
		{
		Text_PositionY=5600;
		}
		else if(Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Position_Y"), "7"))
		{
		Text_PositionY=6400;
		}
		else if(Hlp_StrCmp(Mem_GetGothOpt("IKARUS","Text_Position_Y"), "8"))
		{
		Text_PositionY=7200;
		};
	};
	
	if (Hlp_StrCmp(Mem_GetGothOpt("IKARUS","damagestats"), "1"))
	{
		DmgInformations = TRUE;
	}
	else
	{
		DmgInformations = FALSE;
	};
	
	if (Hlp_StrCmp(Mem_GetGothOpt("IKARUS","notakeanim"), "0"))&&(Humans_NoTakeAnimAppiled)
	{
		Mdl_RemoveOverlayMDS(hero,"Humans_NoTakeAnim.MDS");
		Humans_NoTakeAnimAppiled	= FALSE;
	}
	else if (Hlp_StrCmp(Mem_GetGothOpt("IKARUS","notakeanim"), "1"))
	&&(!Humans_NoTakeAnimAppiled)
	{
		Mdl_ApplyOverlayMDS(hero,"Humans_NoTakeAnim.MDS");
		Humans_NoTakeAnimAppiled	= TRUE;
	};
	
	

};