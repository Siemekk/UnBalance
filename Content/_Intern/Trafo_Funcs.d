/******************************************
    Trafo Hilfsfunktionen
\******************************************

Vorraussetzungen:
 - Ikarus-Skriptpaket von Sektenspinner
 - Floatpaket von Sektenspinner

Folgende Funktionen werden zur Verfügung gestellt:

== "Set"-Funktionen ==

void TRF_Move(zCVob obj, (f)int dx, (f)int dy, (f)int dz)
  Verschiebt das Objekt um dx, dy, dz

void TRF_MoveTo(zCVob obj, (f)int x, (f)int y, (f)int z)
  Verschiebt das Objekt zum Punkt x, y, z

void TRF_SetRot(zCVob obj, int x, int y, int z)
  Dreht das Objekt nach x, y, z ° nach dem Winkelmaß

NOTIZ: Alle diese Funktionen besitzen jeweils noch ein Abbild für X, Y und Z einzelnd. Die Entsprechende Achse muss nur an den Funktionsnamen gehängt werden. (TRF_MoveToX zB.)
WARNUNG: Bei der Rotation um eine Spezifische Achse werden die beiden Anderen zurückgesetzt!

== "Get"-Funktionen ==

(f)int TRF_Deg2Rad(int angle)
  Umwandlung vom Winkelmaß zum Bogenmaß.
  
int TRF_Rad2Deg(int angle)
  Umwandlung vom Bogenmaß zum Winkelmaß.

(f)int TRF_Sin(int angle)
  Sinus des Winkels "angle". (Gradmaß)

(f)int TRF_Cos(int angle)
  Cosinus des Winkels "angle". (Gradmaß)
  
(f)int TRF_SinR(int angle)
  Sinus des Winkels "angle". (Bogenmaß)
  
(f)int TRF_CosR(int angle)
  Cosinus des Winkels "angle". (Bogenmaß)
  
int TRF_Arc(int sin, int cos)
  Arkus-Sinus und Arkus-Kosinus. Ich empfehle immer beide Werte anzugeben, da zB. sin(89) und sin(91) übereinstimmen.
  Sollte ein Wert fehlen, bitte mit der Konstante TRF_NOANGLE angeben. (Bsp.: TRF_Arc(TRF_Sin(50), TRF_NOANGLE))
  Rückgabewert ist ° nach dem Winkelmaß
  
(f)int TRF_ArcSin(int sin)
  Im Gegensatz zu der vorherigen Funktion wird hier kein Vergleich benutzt sondern die Taylorreihe.
  (Funktioniert noch nicht ordnungsgemäß, also lieber obere Funktion benutzen)
  Rückgabewert ist im Bogenmaß
  
(f)int TRF_GetDist(zCVob obj1, zCVob obj2)
  Die Distanz zweier Objekte. Hierbei wird im Gegensatz zu Npc_GetDistToNpc die Höhe mit einbezogen.

(f)int TRF_GetDistXY((f)int x0, (f)int y0, (f)int x1, (f)int y1)
  Die Distanz zweier Punkte. 

(f)int TRF_GetDistXYZ((f)int x0, (f)int y0, (f)int z0, (f)int x1, (f)int y1, (f)int z1)
  Dis Distanz zweier Punkte. 
  
int TRF_GetAngle(zCVob obj1, zCVob, obj2)
  Der Winkel zweier Objekte auf der X und Z-Achse zueinander.
  Rückgabewert ist ° nach dem Winkelmaß.
  
int TRF_GetAngleXY((f)int x0, (f)int y0, (f)int x1, (f)int y1)
  Der Winkel zweier Punkte zueinander. Rückgabewert ist ° nach dem Winkelmaß.

\******************************************/

/* = NICHT BERÜHREN! = */
var int TRFInit;
var int SIN[360];
const int TRF_NOANGLE = 1073741824;
/* = = = = = = = = = = */

const int TRF_ArcLoop = 50; //Wie oft die Arc-Reihe Wiederholen?

//------------------------MOVETO---------------------------
func void TRF_MoveTo(var zCVob obj, var int x, var int y, var int z) {
    obj.trafoObjToWorld[ 3] = x;
    obj.trafoObjToWorld[ 7] = y;
    obj.trafoObjToWorld[11] = z;
};
func void TRF_MoveToX(var zCVob obj, var int x) {
    obj.trafoObjToWorld[ 3] = x;
};
func void TRF_MoveToY(var zCVob obj, var int y) {
    obj.trafoObjToWorld[ 7] = y;
};
func void TRF_MoveToZ(var zCVob obj, var int z) {
    obj.trafoObjToWorld[ 11] = z;
};

//-------------------------MOVE----------------------------
func void TRF_Move(var zCVob obj, var int dx, var int dy, var int dz) {
    obj.trafoObjToWorld[ 3] = addf(obj.trafoObjToWorld[ 3], dx);
    obj.trafoObjToWorld[ 7] = addf(obj.trafoObjToWorld[ 7], dy);
    obj.trafoObjToWorld[11] = addf(obj.trafoObjToWorld[11], dz);
};
func void TRF_MoveX(var zCVob obj, var int dx) {
    obj.trafoObjToWorld[ 3] = addf(obj.trafoObjToWorld[ 3], dx);
};
func void TRF_MoveY(var zCVob obj, var int dy) {
    obj.trafoObjToWorld[ 7] = addf(obj.trafoObjToWorld[ 7], dy);
};
func void TRF_MoveZ(var zCVob obj, var int dz) {
    obj.trafoObjToWorld[11] = addf(obj.trafoObjToWorld[11], dz);
};

//--------------------RAD und DEG--------------------------
const int TRFINT_Rad2Deg = 1113927393; //57.29578
func int TRF_Deg2Rad(var int x) {
    return divf(mkf(x), TRFINT_Rad2Deg);
};
func int TRF_Rad2Deg(var int x) {
    return roundf(mulf(x, TRFINT_Rad2Deg));
};

const int TRFINT_Adr_Sin = 8599080; //0x833628
func int TRFINT_SIN(var int x) {
    x = mulf(x, 1148848204); //* 1000.13
    x = addf(x, 1162107260); //+ 1000*PI
    x = roundf(x);
    var int ptr; ptr = MEM_StackPos.position;
    if(x<0) {
        x+=6284;
        MEM_StackPos.position = ptr;
    };
    x = x%6284;
    return MEM_ReadInt(TRFINT_Adr_Sin+(4*x));
};

func int TRF_Sin(var int offs) {
    return TRFINT_SIN(TRF_Deg2Rad(offs));
};
func int TRF_Cos(var int offs) {
    return TRFINT_SIN(TRF_Deg2Rad(offs+90));
};

func int TRF_SinR(var int offs) {
    return TRFINT_SIN(offs);
};
func int TRF_CosR(var int offs) {
    return TRFINT_SIN(offs+90);
};

//-----------------------SETROT----------------------------
const int f1 = FLOATEINS;
func void TRF_SetRot(var zCVob obj, var int x, var int y, var int z) {
    // Aufgezeichnet nach den Eulerschen Winkeln, x-Konvention
    // Wer verstehen möchte wie das funktioniert:
    // http://de.wikipedia.org/wiki/Eulersche_Winkel#.E2.80.9Ex-Konvention.E2.80.9C_.28Z.2C_X.E2.80.99.2C_Z.E2.80.99.E2.80.99.29
    var int v0; var int v1;
    // Alle erdenklichen Sin, Cos Variablen holen
    var int cX; var int cY; var int cZ;
    var int sX; var int sY; var int sZ;
    cX = TRF_Cos(x); sX = TRF_Sin(x);
    cY = TRF_Cos(y); sY = TRF_Sin(y);
    cZ = TRF_Cos(z); sZ = TRF_Sin(z);
    // Und nun Schritt für Schritt die Matrix befüllen

    // ---  0 ---
    v0 = mulf(cX, cZ);
    v1 = mulf(sX, cY);
    v1 = mulf(v1, sZ);
    obj.trafoObjToWorld[0] = subf(v0, v1);
    // ---  1 ---
    v0 = mulf(sX, cZ);
    v1 = mulf(cX, cY);
    v1 = mulf(v1, sZ);
    obj.trafoObjToWorld[1] = addf(v0, v1);
    // ---  2 ---
    obj.trafoObjToWorld[2] = mulf(sY, sZ);
    // ---  4 ---
    v0 = mulf(cX, sZ);
    v0 = negf(v0);
    v1 = mulf(sX, cY);
    v1 = mulf(v1, cZ);
    obj.trafoObjToWorld[4] = subf(v0, v1);
    // ---  5 ---
    v1 = mulf(cX, cY);
    v1 = mulf(v1, cZ);
    v0 = mulf(sX, sZ);
    obj.trafoObjToWorld[5] = subf(v1, v0);
    // ---  6 ---
    obj.trafoObjToWorld[6] = mulf(sY, cZ);
    // ---  8 ---
    obj.trafoObjToWorld[8] = mulf(sX, sY);
    // ---  9 ---
    v0 = mulf(cX, sY);
    obj.trafoObjToWorld[9] = negf(v0);
    // --- 10 ---
    obj.trafoObjToWorld[10] = cY;
};
func void TRF_SetRotX(var zCVob obj, var int x) {
    var int c; var int s; var int ns;
    c = TRF_Cos(x); s = TRF_Sin(x); ns = negf(s);
    obj.trafoObjToWorld[0]  = f1; obj.trafoObjToWorld[4]  =  0; obj.trafoObjToWorld[8]  =  0;
    obj.trafoObjToWorld[1]  =  0; obj.trafoObjToWorld[5]  =  c; obj.trafoObjToWorld[9]  = ns;
    obj.trafoObjToWorld[2]  =  0; obj.trafoObjToWorld[6]  =  s; obj.trafoObjToWorld[10] =  c;
};
func void TRF_SetRotY(var zCVob obj, var int y) {
    var int c; var int s; var int ns;
    c = TRF_Cos(y); s = TRF_Sin(y); ns = negf(s);
    obj.trafoObjToWorld[0]  =  c; obj.trafoObjToWorld[4]  =  0; obj.trafoObjToWorld[8]  =  s;
    obj.trafoObjToWorld[1]  =  0; obj.trafoObjToWorld[5]  = f1; obj.trafoObjToWorld[9]  =  0;
    obj.trafoObjToWorld[2]  = ns; obj.trafoObjToWorld[6]  =  0; obj.trafoObjToWorld[10] =  c;
};
func void TRF_SetRotZ(var zCVob obj, var int z) {
    var int c; var int s; var int ns;
    c = TRF_Cos(z); s = TRF_Sin(z); ns = negf(s);
    obj.trafoObjToWorld[0]  =  c; obj.trafoObjToWorld[4]  = ns; obj.trafoObjToWorld[8]  =  0;
    obj.trafoObjToWorld[1]  =  s; obj.trafoObjToWorld[5]  =  c; obj.trafoObjToWorld[9]  =  0;
    obj.trafoObjToWorld[2]  =  0; obj.trafoObjToWorld[6]  =  0; obj.trafoObjToWorld[10] = f1;
};

//-----------------------GETDIST---------------------------
func int TRF_GetDistXY(var int x0, var int y0, var int x1, var int y1) {
    var int a; var int b; var int c;
    a = subf(x0, x1);
    b = subf(y0, y1);
    c = addf(mulf(a,a), mulf(b,b));
    return sqrtf(c);
};
func int TRF_GetDistXYZ(var int x0, var int y0, var int z0, var int x1, var int y1, var int z1) {
    var int c; var int d; var int e;
    c = TRF_GetDistXY(x0, y0, x1, y1);
    d = subf(z0, z1);
    e = addf(mulf(c,c), mulf(d,d));
    return sqrtf(e);
};
func int TRF_GetDist(var zCVob obj, var zCVob obj2) {
    return TRF_GetDistXYZ(obj.trafoObjToWorld[3], obj.trafoObjToWorld[7], obj.trafoObjToWorld[11],
                          obj2.trafoObjToWorld[3],obj2.trafoObjToWorld[7],obj2.trafoObjToWorld[11]);
};

//-----------------------ARKUS-----------------------------
func int TRF_Arc(var int sin, var int cos) {
    var int i; var int imax;
    var int j; var int jmax;
    var int mem0; var int mem1;
    mem0 = 0; mem1 = 0;
    var int ptr;
    var int lsin; var int csin;
    
    if(sin > 0) {
        i = 0;
        imax = 90;
        j = 90;
        jmax = 180;
    }
    else {
        i = 180;
        imax = 270;
        j = 270;
        jmax = 360;
    };
    if(sin==TRF_NOANGLE) { i = 360; sin = 0; };
    if(cos==TRF_NOANGLE) { j = 360; cos = 0; };
    
    // Konstante Werte festhalten
    if(gef(cos, f1))       { return 0;   };
    if(gef(sin, f1))       { return 90;  };
    if(lef(cos, negf(f1))) { return 180; };
    if(lef(sin, negf(f1))) { return 270; };

    lsin = 0;
    ptr = MEM_StackPos.position;
    if(i<imax) {
        i += 1;
        csin = TRF_Sin(i);
        if (i<=90) { //Steigend
            if(lf(lsin, sin)) {
                if(gef(csin, sin)) {
                    mem0 = i;
                    i = imax;
                };
            };
        }
        else { //Fallend
            if(gf(lsin, sin)) {
                if(lef(csin, sin)) {
                    mem0 = i;
                    i = imax;
                };
            };
        };
        lsin = csin+0;
        MEM_StackPos.position = ptr;
    };
    lsin = 0;
    ptr = MEM_StackPos.position;
    if(j<jmax) {
        j += 1;
        csin = TRF_Cos(j);
        if(j<=180) {
            if(gf(lsin, cos)) {
                if(lef(csin, cos)) {
                    mem1 = j;
                    j = jmax;
                };
            };
        }
        else {
            if(lf(lsin, cos)) {
                if(gef(csin, cos)) {
                    mem1 = j;
                    j = jmax;
                };
            };
        };
        lsin = csin+0;
        MEM_StackPos.position = ptr;
    };

    if(!mem1) {
        return mem0;
    };
    return mem1;
};

func int TRF_ArcSin(var int sin) {
    var int Esin; Esin = sin;
    var int z0; var int res;
    var int n0; var int n1;
    var int v0; var int v1;
    res = sin; Esin = mulf(mulf(sin, sin), sin);
    z0 = 1; n0 = 2; n1 = 3;
    
    var int i; i = 0;
    var int pos; pos = MEM_StackPos.position;
    if(i < TRF_ArcLoop) {
        i += 1;
        // Ich weiß nicht, ob es schneller geht wenn man mit
        // floats rechnet oder mit integern und dafür immer
        // umwandelt.. Ich hab mich für letztere Methode 
        // entschieden.
        v0 = divf(mkf(z0), mkf(n0));
        v1 = divf(Esin, mkf(n1));
        res = addf(res, mulf(v0, v1));
        
        z0 *= z0+2;
        n0 *= n0+2;
        n1 += 2;
        Esin = mulf(mulf(Esin, sin), sin);
        
        pos = MEM_StackPos.position;
    };
    return res;
};

//----------------------GETANGLE---------------------------
func int TRF_GetAngleXY(var int x0, var int y0, var int x1, var int y1) {
    var int a; var int b; var int c;
    a = subf(x0, x1);
    b = subf(y0, y1);
    c = addf(mulf(a,a), mulf(b,b));
    c = sqrtf(c);
    var int sinA; var int cosA;
    sinA = divf(a,c);
    cosA = divf(b,c);
    return 360 - TRF_Arc(sinA, cosA);
};
func int TRF_GetAngle(var zCVob obj, var zCVob obj2) {
    return TRF_GetAngleXY(obj.trafoObjToWorld[3], obj.trafoObjToWorld[11], obj2.trafoObjToWorld[3], obj2.trafoObjToWorld[11]);
};