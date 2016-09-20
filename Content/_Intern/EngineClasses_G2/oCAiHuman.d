//######################################################
//
//  Keine Garantie auf diese beiden Klassen.
//  Besonders oCAniCtrl_Human erschien mir im
//  nachhinein eher nutzlos
//  daher habe ich wenig Anstrengung in sie gesteckt.
//  zCAIPlayer müsste aber noch stimmen und 
//  zumindest die "Species.d" Eigenschaften sind
//  für Modder interessant. Zum Beispiel könnte man
//  einen "Wasserläufer" Zauber bauen oder
//  machen, dass der Spieler steile Wände hochkommt.
//  Nutzung auf eigene Gefahr.
//
//######################################################


class zCAIPlayer {
    //zCObject {
        var int    _vtbl;
        var int    _zCObject_refCtr;
        var int    _zCObject_hashIndex;
        var int    _zCObject_hashNext;
        var string _zCObject_objectName;
    //}

    // Config
    //struct zTConfig {
        //Ungefähr das, was auch in der Species.d festgelegt wird.
        
        var int zMV_MIN_SPACE_MOVE_FORWARD;     //zREAL 
        var int zMV_DETECT_CHASM_SCAN_AT;       //zREAL
        var int zMV_STEP_HEIGHT;                //zREAL
        var int zMV_JUMP_UP_MIN_CEIL;           //zREAL
        var int zMV_WATER_DEPTH_KNEE;           //zREAL
        var int zMV_WATER_DEPTH_CHEST;          //zREAL
        var int zMV_YMAX_SWIM_CLIMB_OUT;        //zREAL
        var int zMV_FORCE_JUMP_UP;              //zREAL
        var int zMV_YMAX_JUMPLOW;               //zREAL
        var int zMV_YMAX_JUMPMID;               //zREAL
        var int zMV_MAX_GROUND_ANGLE_WALK;      //zREAL
        var int zMV_MAX_GROUND_ANGLE_SLIDE;     //zREAL
        var int zMV_MAX_GROUND_ANGLE_SLIDE2;    //zREAL
        var int zMV_DCUL_WALL_HEADING_ANGLE;    //zREAL
        var int zMV_DCUL_WALL_HORIZ_ANGLE;      //zREAL
        var int zMV_DCUL_GROUND_ANGLE;          //zREAL
    //} config;
    
    /*
    
    //
    Nur weil es gerade einen Berg heraufgeht, heißt das nicht, dass die Npcs genauso schiefstehen
    wie der Untergrund schief ist. Zumindest ist das nicht bei allen Npcs so.
    Dieses enum einhaltet die Konstanten, die für die Verschiedenen möglichkeiten stehen.
    
    enum zTSurfaceAlignMode {                       
        zMV_SURFACE_ALIGN_NONE  = 0,                // kein Alignment (z.B. Menschen)
        zMV_SURFACE_ALIGN_NORMAL= 1,                // wie z.B. bei Schattenläufern
        zMV_SURFACE_ALIGN_HIGH  = 2,                // Meatbugs sind z.B. mit allen Beinen am Boden festgeklebt.
    }; */                                               
    
    /*
    //Struktur mit Infos zu erreichbaren Kletterkanten.
   struct zTLedgeInfo{
        zVEC3 point;            // Position zum anpacken
        zVEC3 normal;           // ein Normalenvektor an dem sich die Figur ausrichten muss
        zVEC3 cont;
        zREAL maxMoveForward;

        zTLedgeInfo(const zCAIPlayer *):point(0,0,0), normal(0,0,0), cont(0,0,0), maxMoveForward(0){}
    };
    */

    /*
    enum zTMovementState {                          // keep in sync with bitfield!
        zMV_STATE_STAND         = 0,                
        zMV_STATE_FLY           = 1,                
        zMV_STATE_SWIM          = 2,                
        zMV_STATE_DIVE          = 3,                
    };*/                    
    
    var int vob;                    //zCVob*
    var int model;                  //zCModel*                       
    var int world;                  //zCWorld*                       
    
    var int centerPos[3];           //zPOINT3
    var int feetY;                  //zREAL                        
    var int headY;                  //zREAL                        
    var int aboveFloor;             //zREAL                        
    
    var int waterLevel;             //int //0: niedrig genug, 1: schon am Waten, 2: am Schwimmen
    
    var int velocityLen2;           //zREAL                        
    var int velocity[3];            //zVEC3                        
    
    var int fallDownDistanceY;      //zREAL                        
    var int fallDownStartY;         //zREAL                        
    
    var int slidePolyNormal[3];     //zVEC3                        
    var int checkWaterCollBodyLen;  //zREAL                        
    var int modelHeadNode;          //zCModelNodeInst*     

    /*
    struct {    // 27 Bit
        zUINT8          zMV_DO_SURFACE_ALIGN            : 2;    // zTSurfaceAlignMode
        zUINT8          zMV_DO_DETECT_WALK_STOP_CHASM   : 1;
        zUINT8          zMV_DO_WALL_SLIDING             : 1;
        zUINT8          zMV_DO_HEIGHT_CORRECTION        : 1;

        zUINT8          cdStatOriginal                  : 1;
        zUINT8          cdStat                          : 1;
        zUINT8          startFXModelLandDust            : 1;
        zUINT8          forceModelHalt                  : 1;
        zUINT8          autoRollEnabled                 : 1;
        zUINT8          modelAnisInPlace                : 1;
        zTMovementState oldState                        : 3;
        zTMovementState state                           : 3;
        zUINT8          oldWaterLevel                   : 2; //wieder 0, 1 oder 2 mit oben genannten Bedeutungen
        zCCollObjectCharacter::zEConfigState m_eCollObjectState     : 4;
        zCCollObjectCharacter::zEConfigState m_eCollObjectStateOld  : 4;
    };*/
    
    var int bitfield[3]; //Zur Bedeutung siehe obenstehende Struktur.
    
    
    //Bluteffekte
    /*
    struct zTBloodVobTrack {
        zCVob           *bloodVob;
        zREAL           alpha;
    };*/
    
    //zCArray<zTBloodVobTrack>  bloodVobList;
        var int bloodVobList_array; //zTBloodVobTrack*
        var int bloodVobList_numAlloc; //int
        var int bloodVobList_numInArray; //int
    
    var int bleedingPerc;       //zREAL
    var int bleedingLastPos[3];    //zVEC3
    var int bleedingNextDist;   //zREAL
    
    // Weapon Trail effects
    var int weaponTrailVob;     //zCVob*
    
    // WaterRing effects
    var int waterRingVob;       //zCVob*
    var int waterRingTimer;     //zREAL
    
    // autoRolling
    var int autoRollPos;         //zREAL      
    var int autoRollPosDest;     //zREAL      
    var int autoRollSpeed;       //zREAL      
    var int autoRollMaxAngle;    //zREAL
       
    var int dummyLastVar;       //zBYTE
    var string bloodDefaultTexName; //zSTRING   
};

const int ANI_NUM = 10;
const int ANI_HITLIMB_MAX = 4;







class oCAniCtrl_Human {
    //zCObject {
        var int    _vtbl;//0
        var int    _zCObject_refCtr;//4
        var int    _zCObject_hashIndex;//8
        var int    _zCObject_hashNext;//12
        var string _zCObject_objectName;//16
    //}
    //zCAIPlayer {
        var int _zCAIPlayer_zMV_MIN_SPACE_MOVE_FORWARD;   //36
        var int _zCAIPlayer_zMV_DETECT_CHASM_SCAN_AT;    //40 
        var int _zCAIPlayer_zMV_STEP_HEIGHT;            //44
        var int _zCAIPlayer_zMV_JUMP_UP_MIN_CEIL;         //48
        var int _zCAIPlayer_zMV_WATER_DEPTH_KNEE;         //52
        var int _zCAIPlayer_zMV_WATER_DEPTH_CHEST;        //56
        var int _zCAIPlayer_zMV_YMAX_SWIM_CLIMB_OUT;      //60
        var int _zCAIPlayer_zMV_FORCE_JUMP_UP;            //64
        var int _zCAIPlayer_zMV_YMAX_JUMPLOW;             //68
        var int _zCAIPlayer_zMV_YMAX_JUMPMID;             //72
        var int _zCAIPlayer_zMV_MAX_GROUND_ANGLE_WALK;  //76
        var int _zCAIPlayer_zMV_MAX_GROUND_ANGLE_SLIDE;   //80
        var int _zCAIPlayer_zMV_MAX_GROUND_ANGLE_SLIDE2;  //84
        var int _zCAIPlayer_zMV_DCUL_WALL_HEADING_ANGLE;  //88
        var int _zCAIPlayer_zMV_DCUL_WALL_HORIZ_ANGLE;    //92
        var int _zCAIPlayer_zMV_DCUL_GROUND_ANGLE;        //96
        var int _zCAIPlayer_vob;                            //100  
        var int _zCAIPlayer_model;                           //104
        var int _zCAIPlayer_world;                  //108
        var int _zCAIPlayer_centerPos[3];             //////112            
        var int _zCAIPlayer_feetY;//124
        var int _zCAIPlayer_headY;  // 128               
        var int _zCAIPlayer_aboveFloor;// 132                      
        var int _zCAIPlayer_waterLevel;  //  136                   
        var int _zCAIPlayer_velocityLen2;  //   140                
        var int _zCAIPlayer_velocity[3];     //    144                  
        var int _zCAIPlayer_fallDownDistanceY; //     156
        var int _zCAIPlayer_fallDownStartY;      //   160
        var int _zCAIPlayer_slidePolyNormal[3];    //    164
        var int _zCAIPlayer_checkWaterCollBodyLen;  //176
        var int _zCAIPlayer_modelHeadNode;          //180
        var int _zCAIPlayer_bitfield[3]; //184
        var int _zCAIPlayer_bloodVobList_array;// 196
        var int _zCAIPlayer_bloodVobList_numAlloc;//200
        var int _zCAIPlayer_bloodVobList_numInArray;// 204
        var int _zCAIPlayer_bleedingPerc;      //208
        var int _zCAIPlayer_bleedingLastPos[3];  // 212
        var int _zCAIPlayer_bleedingNextDist;  //224
        var int _zCAIPlayer_weaponTrailVob; //228
        var int _zCAIPlayer_waterRingVob;   //232
        var int _zCAIPlayer_waterRingTimer;    //236
        var int _zCAIPlayer_autoRollPos;      // 240
        var int _zCAIPlayer_autoRollPosDest;   //244
        var int _zCAIPlayer_autoRollSpeed;     //248
        var int _zCAIPlayer_autoRollMaxAngle;  //252
        var int _zCAIPlayer_dummyLastVar;   //256
        var string _zCAIPlayer_bloodDefaultTexName;// 260
    //}
    
    var int angle_slide1;                    //zREAL //  280                 
    var int angle_slide2;                    //zREAL   //   284              
    var int angle_heading;                   //zREAL     //    288           
    var int angle_horiz;                     //zREAL       //     292        
    var int angle_ground;                    //zREAL         //      296     
    //
    var int npc;                             //oCNpc*                  300
    var int targetVob;                       //zCVob*                  304
    var int stopTurnVob;                     //zCVob*                  308
    var int stopTurnVobSign;                 //int            312           
    
    var int hitlimb[ANI_HITLIMB_MAX];        //zCModelNodeInst* FightLimbs 316+16 232
    
    var int actionMode;                      //int      332                 
    
    // Waffen toggeln
    var int wmode;                           //int   3   36                 
    var int wmode_last;                      //int       3  40	              
    var int wmode_selected;                  //int           3   44         
    var int changeweapon;                    //zBOOL             3  48     
    
    // Walkmode     
    var int walkmode;                        //int                   3 52   
    var int nextwalkmode;                    //int                     3  56
    var int lastRunWalkSneak;                //int                       360
    var int always_walk;                     //zBOOL                    364
    var int do_jump;                         //zBOOL                    368
    var int defaultSurfaceAlign;             //int                       372
    var int autoRollDirection;               //zREAL                    376
    
    // Kopfbewegungen
    var int lookTargetx;                     //zREAL                    380
    var int lookTargety;                     //zREAL                    384
    
    // Fight        
    var int distance;                           //int                      388  
    var int hitpos[3];                          //zVEC3                 392
    var string limbname;                        //zSTRING                 404
    var int paradeBeginFrame;                   //zREAL                 424
    var int paradeEndFrame;                     //zREAL                 428

	
	
    /*
    struct {
        zUINT8          canEnableNextCombo              : 1;
        zUINT8          endCombo                        : 1;
        zUINT8          comboCanHit                     : 1;
        zUINT8          hitPosUsed                      : 1;
        zUINT8          hitGraphical                    : 1;
        zUINT8          canDoCollisionFX                : 1;
    };*/
    var int bitfield; //so wie im Struct im Kommentar   432
    
    var int comboNr;           //int                  436
    var int comboMax;          //int              440    
    var int lastHitAniFrame;   //zREAL           444
    var int hitAniID;          //zTModelAniID	 448
    var int hitTarget;         //zCVob*         

    /*
    typedef struct {
        zTModelAniID    hitAni;                             
        int             hitOptFrame;
        int             hitEndFrame;
        int             comboStartFrame;
        int             comboEndFrame;
        int             comboDir;
    } oTComboInfo;*/
    
    //oTComboInfo comboInfo[ANI_MAX_HIT]; //ANI_MAX_HIT = 10
    var int comboInfo[60];

    // Kampfsystem - Tuning
    var int anioffset_lastper;  //zREAL                  
    var int anioffset_thisper;  //zREAL                  
    var int anioffset;          //zREAL                  
    var int anioffset_ani;      //zTModelAniID      

    // *****************************************************************************************

    // Normal
    /*zTModelAniID*/        var int s_dead1; var int s_dead2;
    /*zTModelAniID*/        var int s_hang;  var int t_hang_2_stand;

    /*zTModelAniID*/        var int s_run               [ANI_NUM];var int t_run_2_runl      [ANI_NUM];  var int t_runl_2_run    [ANI_NUM];
                        var int s_runl              [ANI_NUM];var int t_runl_2_runr     [ANI_NUM];  var int t_runr_2_runl   [ANI_NUM];
                        var int s_runr              [ANI_NUM];var int t_runr_2_run      [ANI_NUM];
                        var int t_runturnl          [ANI_NUM];var int t_runturnr        [ANI_NUM];
                        var int t_runstrafel        [ANI_NUM];var int t_runstrafer      [ANI_NUM];
    
    /*zTModelAniID*/        var int t_run_2_runbl       [ANI_NUM];var int t_runbl_2_run     [ANI_NUM];
                        var int s_runbl             [ANI_NUM];var int t_runbl_2_runbr   [ANI_NUM];  var int t_runbr_2_runbl [ANI_NUM];
                        var int s_runbr             [ANI_NUM];var int t_runbr_2_run     [ANI_NUM];


    /*zTModelAniID*/        var int t_jumpb             [ANI_NUM];

    // Transitions
    /*zTModelAniID*/        var int t_run_2_walk        [ANI_NUM];var int t_walk_2_run      [ANI_NUM];
                        var int t_run_2_sneak       [ANI_NUM];var int t_sneak_2_run     [ANI_NUM];

    /*zTModelAniID*/        var int s_walk              [ANI_NUM];var int t_walk_2_walkl    [ANI_NUM];  var int t_walkl_2_walk  [ANI_NUM];
                        var int s_walkl             [ANI_NUM];var int t_walkl_2_walkr   [ANI_NUM];  var int t_walkr_2_walkl [ANI_NUM];
                        var int s_walkr             [ANI_NUM];var int t_walkr_2_walk    [ANI_NUM];
                        var int t_walkturnl         [ANI_NUM];var int t_walkturnr       [ANI_NUM];
                        var int t_walkstrafel       [ANI_NUM];var int t_walkstrafer     [ANI_NUM];

    /*zTModelAniID*/        var int t_walk_2_walkbl     [ANI_NUM];var int t_walkbl_2_walk   [ANI_NUM];
                        var int s_walkbl            [ANI_NUM];var int t_walkbl_2_walkbr [ANI_NUM];  var int t_walkbr_2_walkbl[ANI_NUM];
                        var int s_walkbr            [ANI_NUM];var int t_walkbr_2_walk   [ANI_NUM];

    /*zTModelAniID*/        var int t_runl_2_jump       [ANI_NUM];var int t_runr_2_jump     [ANI_NUM];
                        var int t_jump_2_runl       [ANI_NUM];

    /*zTModelAniID*/        var int t_stand_2_jumpuplow; var int s_jumpuplow; var int t_jumpuplow_2_stand;
                        var int t_stand_2_jumpupmid; var int s_jumpupmid; var int t_jumpupmid_2_stand;

    /*zTModelAniID*/        var int s_sneak             [ANI_NUM];  var int t_sneak_2_sneakl    [ANI_NUM];  var int t_sneakl_2_sneak    [ANI_NUM];
                        var int s_sneakl            [ANI_NUM];  var int t_sneakl_2_sneakr   [ANI_NUM];  var int t_sneakr_2_sneakl   [ANI_NUM];
                        var int s_sneakr            [ANI_NUM];  var int t_sneakr_2_sneak    [ANI_NUM];
                        var int t_sneakturnl        [ANI_NUM];  var int t_sneakturnr        [ANI_NUM];
                        var int t_sneakstrafel      [ANI_NUM];  var int t_sneakstrafer      [ANI_NUM];

    /*zTModelAniID*/        var int t_sneak_2_sneakbl   [ANI_NUM];  var int t_sneakbl_2_sneak   [ANI_NUM];
                        var int s_sneakbl           [ANI_NUM];  var int t_sneakbl_2_sneakbr [ANI_NUM];  var int t_sneakbr_2_sneakbl [ANI_NUM];
                        var int s_sneakbr           [ANI_NUM];  var int t_sneakbr_2_sneak   [ANI_NUM];

    /*zTModelAniID*/        var int t_walkl_2_aim       [ANI_NUM];  var int t_walkr_2_aim       [ANI_NUM];
                        var int t_walk_2_aim        [ANI_NUM];  var int s_aim               [ANI_NUM];  var int t_aim_2_walk    [ANI_NUM];
                        var int t_hitl              [ANI_NUM];  var int t_hitr              [ANI_NUM];  var int t_hitback       [ANI_NUM];
                        var int t_hitf              [ANI_NUM];  var int s_hitf              [ANI_NUM];
                        var int t_aim_2_defend      [ANI_NUM];  var int s_defend            [ANI_NUM];  var int t_defend_2_aim  [ANI_NUM];
                        var int t_paradeL           [ANI_NUM];  var int t_paradeM           [ANI_NUM];  var int t_paradeS       [ANI_NUM];
                        var int t_hitfrun           [ANI_NUM];

    /*zTModelAniID*/        var int t_stumble;  var int t_stumbleb; var int t_fallen_2_stand; var int t_fallenb_2_stand;

    /*zTModelAniID*/        var int t_walk_2_walkwl     ;var int t_walkwl_2_walk        ;
                        var int s_walkwl            ;var int t_walkwl_2_walkwr      ;   var int t_walkwr_2_walkwl;
                        var int s_walkwr            ;var int t_walkwr_2_walk;

    /*zTModelAniID*/        var int t_walk_2_walkwbl    ;var int t_walkwbl_2_walk       ;
                        var int s_walkwbl           ;var int t_walkwbl_2_walkwbr    ;   var int t_walkwbr_2_walkwbl;
                        var int s_walkwbr           ;var int t_walkwbr_2_walk;

    /*zTModelAniID*/        var int _s_walk             ;var int _t_walk_2_walkl        ;   var int _t_walkl_2_walk;
                        var int _s_walkl            ;var int _t_walkl_2_walkr       ;   var int _t_walkr_2_walkl;
                        var int _s_walkr            ;var int _t_walkr_2_walk        ;
                        var int _t_turnl            ;var int _t_turnr               ;
                        var int _t_strafel          ;var int _t_strafer;        

    /*zTModelAniID*/        var int _t_walk_2_walkbl    ;var int _t_walkbl_2_walk       ;
                        var int _s_walkbl           ;var int _t_walkbl_2_walkbr     ;   var int _t_walkbr_2_walkbl;
                        var int _s_walkbr           ;var int _t_walkbr_2_walk;                  
                    
    /*zTModelAniID*/        var int s_jumpstand         ;var int t_stand_2_jumpstand;   var int t_jumpstand_2_stand;
                        var int _t_jumpb            ;
                        var int _t_stand_2_jump     ;var int _s_jump            ;   var int t_jump_2_stand;
                        var int _t_stand_2_jumpup   ;var int _s_jumpup;
    
    /*zTModelAniID*/        var int _t_jumpup_2_falldn  ;var int _t_jump_2_falldn;

    /*zTModelAniID*/        var int t_walkwl_2_swimf    ;var int s_swimf            ;var int t_swimf_2_walkwl;
                        var int t_walkwbl_2_swimb   ;var int s_swimb            ;var int t_swimb_2_walkwbl;
                        var int t_swimf_2_swim      ;var int s_swim             ;var int t_swim_2_swimf;
                        var int t_swim_2_swimb      ;var int t_swimb_2_swim     ;var int t_warn;
                        var int t_swim_2_dive       ;var int s_dive             ;var int t_divef_2_swim;
                        var int t_dive_2_divef      ;var int s_divef            ;var int t_divef_2_dive;
                        var int t_dive_2_drowned    ;var int s_drowned          ;
                        var int t_swimturnl         ;var int t_swimturnr        ;
                        var int t_diveturnl         ;var int t_diveturnr;               

    /*zTModelAniID*/        var int _t_walkl_2_aim      ;var int _t_walkr_2_aim     ;
                        var int _t_walk_2_aim       ;var int _s_aim             ;var int _t_aim_2_walk;
                        var int _t_hitl             ;var int _t_hitr            ;var int _t_hitback;
                        var int _t_hitf             ;var int _t_hitfstep        ;var int _s_hitf;
                        var int _t_aim_2_defend     ;var int _s_defend          ;var int _t_defend_2_aim;
                        var int _t_paradeL          ;var int _t_paradeM         ;var int _t_paradeS;
                        var int _t_hitfrun;
                    
    /*zTModelAniID*/        var int t_stand_2_iaim      ;var int s_iaim             ;var int t_iaim_2_stand;
    
    /*zTModelAniID*/        var int t_iaim_2_idrop      ;var int s_idrop            ;var int t_idrop_2_stand;
    
    /*zTModelAniID*/        var int t_iaim_2_ithrow     ;var int s_ithrow           ;var int t_ithrow_2_stand;
    
    /*zTModelAniID*/        var int t_stand_2_iget      ;var int s_iget             ;var int t_iget_2_stand;
    /*zTModelAniID*/        var int s_oget;

    
    /*zTModelAniID*/        var int _t_stand_2_torch    ;var int _s_torch           ;var int _t_torch_2_stand;

    
    /*zTModelAniID*/        var int hitani;

    
    /*zTModelAniID*/        var int help;var int help1;var int help2;
    /*zTModelAniID*/        var int s_fall          ;var int s_fallb            ; var int s_fallen          ;var int s_fallenb;     var int s_falldn;
    /*zTModelAniID*/        var int _t_runl_2_jump  ;var int _t_runr_2_jump     ;var int _t_jump_2_runl;
    /*zTModelAniID*/        var int s_look;var int s_point;
    /*zTModelAniID*/        var int dummy1;var int dummy2;var int dummy3;var int dummy4;
    /*zTModelAniID*/        var int s_weapon[ANI_NUM];
    /*zTModelAniID*/        var int togglewalk;

    
    /*zTModelAniID*/        var int t_stand_2_cast;
    /*zTModelAniID*/        var int s_cast; 
    /*zTModelAniID*/        var int t_cast_2_shoot;
    /*zTModelAniID*/        var int t_cast_2_stand;
    /*zTModelAniID*/        var int s_shoot;
    /*zTModelAniID*/        var int t_shoot_2_stand;
    
    var int dummyLastVar;
    
    //Da oCAIHuman (eine Unterklasse) nicht mehr viel zusätzlich enthält, hier einfach mal drangeklatscht:
    //Ich habe sowieso nicht den Eindruck, dass diese Eigenschaften sehr nüztlich sind.
    
    //zCList<zCVob>     ignoreVobList;
        var int oCAIHuman_ignoreVobList_data; //zCVob*
        var int oCAIHuman_ignoreVobList_next; //zCList<zCVob>*
    
    var int oCAIHuman_aiCam;                    //zCAICamera*
    
    var int oCAIHuman_bitfield; /*
    zBOOL               forcejump               :1;
    zBOOL               lookedAround            :1;
    zBOOL               sprintActive            :1;
    zBOOL               crawlActive             :1;
    zBOOL               showai                  :1;
    zBOOL               startObserveIntruder    :1;
    zBOOL               dontKnowAniPlayed       :1;
    zBOOL               spellReleased           :1;
    zBOOL               spellCastedLastFrame    :1;
    zBOOL               eyeBlinkActivated       :1;
    zBOOL               thirdPersonFallback     :1; */

    var int oCAIHuman_createFlyDamage;  //zREAL
};