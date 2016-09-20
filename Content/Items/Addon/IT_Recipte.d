
instance ITWR_DJG_HELM_RECIPTE(C_ITEM)
{
	name = "Projekt rogatego he³mu";
	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;
	value = 3950;
	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;
	on_state[0] = use_Itwr_Djg_Helmet;
	scemename = "MAP";
	description = "Schemat rogatego he³mu ";
	text[1] = "He³m zrobiony z hartowanej stali i k³ów bestii.";
	text[2] = "U¿ywany przez barbarzyñców.";
	text[3] = "Wymagana zaawansowana znajomoœæ p³atnerstwa.";
	text[5] = NAME_VALUE;
	count[5] = value;
};


func void use_Itwr_Djg_Helmet()
{
	var int ndocid;
	if(Npc_IsPlayer(self))
	{
		if((Knows_Ejnar_Helm == FALSE) && (PLAYER_TALENT_ARMOR[1] == TRUE))
		{
			Knows_Ejnar_Helm = TRUE;
			b_say(self,self,"DIA_Addon_Vatras_GuildBypass_BACK_15_00");
			b_logentry(TOPIC_TALENTSMITH,"Teraz wiem jak wykuæ rogaty he³m.");
		};
		if((Knows_Ejnar_Helm == FALSE) && (PLAYER_TALENT_ARMOR[1] == FALSE))
		{
			b_say(self,self,"DIA_Thorben_PleaseTeach_Later_15_00");
			Print(PRINT_NOPICKLOCKTALENT);
		};
	};
	ndocid = Doc_Create();
	Doc_SetPages(ndocid,1);
	Doc_SetPage(ndocid,0,"DJG_Helm_Recipte.TGA",0);
	Doc_SetFont(ndocid,0,FONT_BOOKHEADLINE);
	Doc_SetMargins(ndocid,-1,50,50,50,50,1);
	Doc_PrintLine(ndocid,0,"");
	Doc_SetFont(ndocid,0,FONT_BOOK);
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLines(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_PrintLine(ndocid,0,"");
	Doc_Show(ndocid);
};