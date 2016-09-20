/*
//zCZone / zCZoneMusic sind relativ uninteressante Klassen.

class zCZone / zCZoneMusic { //beide Klassen vom Speicherbild identisch
    //[zVob Stuff....]
    zCWorld             *world; //einzige neue Eigenschaft
};
*/
class zCZoneZFog {  
//class zCZoneZFogDefault { //beide Klassen vom Speicherbild identisch
    //zCVob {
        //zCObject {
        var int    _vtbl;//0
        var int    _zCObject_refCtr;//4
        var int    _zCObject_hashIndex;//8
        var int    _zCObject_hashNext;//12
        var string _zCObject_objectName;//16
        //}
        var int    _zCVob_globalVobTreeNode;//36
        var int    _zCVob_lastTimeDrawn;//40
        var int    _zCVob_lastTimeCollected;//44
        var int    _zCVob_vobLeafList_array;//48
        var int    _zCVob_vobLeafList_numAlloc;//52
        var int    _zCVob_vobLeafList_numInArray;//56
        var int    _zCVob_trafoObjToWorld[16];//60
        var int    _zCVob_bbox3D_mins[3];//124
        var int    _zCVob_bbox3D_maxs[3];//136
        var int    _zCVob_bsphere3D_center[3];//148
        var int    _zCVob_bsphere3D_radius;//160
        var int    _zCVob_touchVobList_array;//164
        var int    _zCVob_touchVobList_numAlloc;//168
        var int    _zCVob_touchVobList_numInArray;//172
        var int    _zCVob_type;//176
        var int    _zCVob_groundShadowSizePacked;//180
        var int    _zCVob_homeWorld;//184
        var int    _zCVob_groundPoly;//188
        var int    _zCVob_callback_ai;//192
        var int    _zCVob_trafo;//196
        var int    _zCVob_visual;//200
        var int    _zCVob_visualAlpha;//204
        var int    _zCVob_m_fVobFarClipZScale;//208
        var int    _zCVob_m_AniMode;//212
        var int    _zCVob_m_aniModeStrength;//216
        var int    _zCVob_m_zBias;//220
        var int    _zCVob_rigidBody;//224
        var int    _zCVob_lightColorStat;//228
        var int    _zCVob_lightColorDyn;//232
        var int    _zCVob_lightDirectionStat[3];//236
        var int    _zCVob_vobPresetName;//248
        var int    _zCVob_eventManager;//252
        var int    _zCVob_nextOnTimer;//256
        var int    _zCVob_bitfield[5];//260
        var int    _zCVob_m_poCollisionObjectClass;//280
        var int    _zCVob_m_poCollisionObject;//284
    //zCZone
        var int     _zCZone_world;      //zCWorld* 288
    
    //zCZoneZFog, Eigenschaften aus dem Spacer bekanntrrun scripts
    
    var int fogRangeCenter;  //zREAL     292
    var int innerRangePerc;  //zREAL     296
    var int fogColor;        //zCOLOR   300
    var int bFadeOutSky;     //zBOOL     304
    var int bOverrideColor;  //zBOOL     308
};