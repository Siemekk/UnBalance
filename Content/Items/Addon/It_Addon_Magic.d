//Constants 
const string NAME_SPL_Explosion = "Eksplozja";

const int   Value_Sc_HealOther         = 200;
const   int Value_Ru_HealOther         =   1500;

//Ok bez pitolenia nowe zaklêcia + zwoje :F
const int   Value_Sc_AdanosBall         = 200;
const   int Value_Ru_AdanosBall         =   1500;
/*******************************************************************************************/
INSTANCE ItRu_Explosion (C_Item)
{
    name                =   "Runa";

    mainflag            =   ITEM_KAT_RUNE;
    flags              		=   0;

    value             		=   1500;

    visual             		=   "ItRu_Explosion.3DS";
    material            	=   MAT_STONE;

    spell               =   SPL_Explosion;
    mag_circle          =   3;

    wear                =   WEAR_EFFECT;
    effect              =   "SPELLFX_WEAKGLIMMER_YELLOW";

    description         =   NAME_SPL_Explosion;
    TEXT    [0]         =   NAME_Mag_Circle;
    COUNT   [0]         =   mag_circle;

    TEXT    [1]         =   NAME_Manakosten;
    COUNT   [1]         =   SPL_Cost_Explosion;

    TEXT    [5]         =   NAME_Value;
    COUNT   [5]         =   value;
};
/*******************************************/
INSTANCE ItSc_Explosion (C_Item)
{
    name                =   "Zwój";

    mainflag            =   ITEM_KAT_RUNE;
    flags               =   ITEM_MULTI;

    value               =   200;

    visual              =   "ItSc_Explosion.3DS";
    material            =   MAT_LEATHER;

    spell               =   SPL_Explosion;
    cond_atr[2]         =   ATR_MANA_MAX;
    cond_value[2]       =   SPL_Cost_Scroll;

    wear                =   WEAR_EFFECT;
    effect              =   "SPELLFX_WEAKGLIMMER_YELLOW";

    description         =   NAME_SPL_Explosion;

    TEXT    [0]         =   Name_MageScroll ;

    TEXT    [1]         =   NAME_Mana_needed;
    COUNT   [1]         =   SPL_Cost_Scroll;

    TEXT    [5]         =   NAME_Value;
    COUNT   [5]         =   value;
};

/*******************************************************************************************/
INSTANCE ItSc_AdanosBall (C_Item)
{
    name                =   NAME_Spruchrolle;

    mainflag            =   ITEM_KAT_RUNE;
    flags               =   ITEM_MULTI;

    value               =   Value_Sc_AdanosBall;

    visual              =   "ItSc_AdanosBall.3DS";
    material            =   MAT_LEATHER;

    spell               =   SPL_AdanosBall;
    cond_atr[2]         =   ATR_MANA_MAX;
    cond_value[2]       =   SPL_Cost_Scroll;

    wear                =   WEAR_EFFECT;
    effect              =   "SPELLFX_WEAKGLIMMER_BLUE";

    description         =   NAME_SPL_AdanosBall;

    TEXT    [0]         =   Name_MageScroll ;

    TEXT    [1]         =   NAME_Mana_needed;
    COUNT   [1]         =   SPL_Cost_Scroll;

    TEXT    [5]         =   NAME_Value;
    COUNT   [5]         =   value;
};
/*******************************************************************************************/


/*******************************************************************************************/
INSTANCE ItRu_AdanosBall (C_Item)
{
    name                =   NAME_Rune;

    mainflag            =   ITEM_KAT_RUNE;
    flags               =   0;

    value               =   Value_Ru_AdanosBall;

    visual              =   "ItRu_AdanosBall.3DS";
    material            =   MAT_STONE;

    spell               =   SPL_AdanosBall;
    mag_circle          =   3;

    wear                =   WEAR_EFFECT;
    effect              =   "SPELLFX_WEAKGLIMMER_BLUE";

    description         =   NAME_SPL_AdanosBall;
    TEXT    [0]         =   NAME_Mag_Circle;
    COUNT   [0]         =   mag_circle;

    TEXT    [1]         =   NAME_Manakosten;
    COUNT   [1]         =   SPL_Cost_AdanosBall;

    TEXT    [5]         =   NAME_Value;
    COUNT   [5]         =   value;
};
/*******************************************************************************************/
const int   Value_Sc_MagicCage         = 200;
const   int Value_Ru_MagicCage         =   1500;

/*******************************************************************************************/
INSTANCE ItSc_MagicCage (C_Item)
{
    name                =   NAME_Spruchrolle;

    mainflag            =   ITEM_KAT_RUNE;
    flags               =   ITEM_MULTI;

    value               =   Value_Sc_MagicCage;

    visual              =   "ItSc_MagicCage.3DS";
    material            =   MAT_LEATHER;

    spell               =   SPL_MagicCage;
    cond_atr[2]         =   ATR_MANA_MAX;
    cond_value[2]       =   SPL_Cost_Scroll;

    wear                =   WEAR_EFFECT;
    effect              =   "SPELLFX_WEAKGLIMMER";

    description         =   NAME_SPL_MagicCage;

    TEXT    [0]         =   Name_MageScroll ;

    TEXT    [1]         =   NAME_Mana_needed;
    COUNT   [1]         =   SPL_Cost_Scroll;

    TEXT    [5]         =   NAME_Value;
    COUNT   [5]         =   value;
};
/*******************************************************************************************/
/*
 * IT_Runen.d erweitern
 * Pfad:  _work\data\Scripts\Content\Items\IT_Runen.d
 *
 * Mesh und Textur nicht vergessen (ItRu_MagicCage.3ds und ItArRune_ZP.tga)
 */

/*******************************************************************************************/
INSTANCE ItRu_MagicCage (C_Item)
{
    name                =   NAME_Rune;

    mainflag            =   ITEM_KAT_RUNE;
    flags               =   0;

    value               =   Value_Ru_MagicCage;

    visual              =   "ItRu_MagicCage.3DS";
    material            =   MAT_STONE;

    spell               =   SPL_MagicCage;
    mag_circle          =   3;

    wear                =   WEAR_EFFECT;
    effect              =   "SPELLFX_WEAKGLIMMER";

    description         =   NAME_SPL_MagicCage;
    TEXT    [0]         =   NAME_Mag_Circle;
    COUNT   [0]         =   mag_circle;

    TEXT    [1]         =   NAME_Manakosten;
    COUNT   [1]         =   SPL_Cost_MagicCage;

    TEXT    [5]         =   NAME_Value;
    COUNT   [5]         =   value;
};
/*******************************************************************************************/

/*******************************************************************************************/
INSTANCE ItRu_HealOther (C_Item)
{
    name                =   NAME_Rune;

    mainflag            =   ITEM_KAT_RUNE;
    flags               =   0;

    value               =   Value_Ru_HealOther;

    visual              =   "ItRu_HealOther.3DS";
    material            =   MAT_STONE;

    spell               =   SPL_HealOther;
    mag_circle          =   2;

    wear                =   WEAR_EFFECT;
    effect              =   "SPELLFX_WEAKGLIMMER";

    description         =   NAME_SPL_HealOther;
    TEXT    [0]         =   NAME_Mag_Circle;
    COUNT   [0]         =   mag_circle;

    TEXT    [1]         =   NAME_Manakosten;
    COUNT   [1]         =   SPL_Cost_HealOther;

    TEXT    [5]         =   NAME_Value;
    COUNT   [5]         =   value;
};

/*******************************************************************************************/
INSTANCE ItSc_HealOther (C_Item)
{
    name                =   NAME_Spruchrolle;

    mainflag            =   ITEM_KAT_RUNE;
    flags               =   ITEM_MULTI;

    value               =   Value_Sc_HealOther;

    visual              =   "ItSc_HealOther.3DS";
    material            =   MAT_LEATHER;

    spell               =   SPL_HealOther;
    cond_atr[2]         =   ATR_MANA_MAX;
    cond_value[2]       =   SPL_Cost_Scroll;

    wear                =   WEAR_EFFECT;
    effect              =   "SPELLFX_WEAKGLIMMER";

    description         =   NAME_SPL_HealOther;

    TEXT    [0]         =   Name_MageScroll ;

    TEXT    [1]         =   NAME_Mana_needed;
    COUNT   [1]         =   SPL_Cost_Scroll;

    TEXT    [5]         =   NAME_Value;
    COUNT   [5]         =   value;
};
/*******************************************************************************************/

