////////////////////////////////////////////////////////////////////////////////
//
//  Convert an int that contains an IEEE binary32 floating point to a string.
//  Copyright (c) 2009 Nico Bendlin <nicode@gmx.net>, Legal: WTFPL Version 2.
//
////////////////////////////////////////////////////////////////////////////////
//  Note: "/** /// Unit testing" > "/**/// Unit testing" to add unit testing.
////////////////////////////////////////////////////////////////////////////////

/** /// Unit testing
func int PackedBcdValidate( var int a )
{
  var int b;

  b = a + 107374182;
  return !((((a | b) & ~(a & b)) & 286331152) || (((a >> 28) & 15) > 9));
};
/**/

//
// PackedBcdCarryBit holds the overflow flag after a PackedBcdAddition call.
//
var int PackedBcdCarryBit;

//
// The addends are treated as valid 32-bit eight-digit unsigned Packed BCD.
// Note: The function is heavily optimized for code size, not for speed (it
// could immediately return a + b if a or b are 0). The least significant 7
// digits are added in one operation (includes propagating carries from one
// digit to the next). The most significant digit requires additional care.
// Note: The results of right-shift operations are sign-extended. Therefore
// we need to mask out this bits if a sign-bit might be set in the operand.
//
func int PackedBcdAddition( var int a, var int b )
{
  var int c;
  var int d;
  var int e;

  /** /// Unit testing
  if (!PackedBcdValidate( a )) {
    PrintDebug( ConcatStrings( "Float32ToString: Invalid BCD a = ", IntToString( a ) ) );
  };
  if (!PackedBcdValidate( b )) {
    PrintDebug( ConcatStrings( "Float32ToString: Invalid BCD b = ", IntToString( b ) ) );
  };
  /**/
  c = a + 107374182;                      // 0x06666666
  d = b + c;
  c = (b | c) & ~(b & c);                 // c ^= b
  e = ~((c | d) & ~(c & d)) & 286331152;  // 0x11111110
  d -= (e >> 2) | (e >> 3);
  PackedBcdCarryBit = (((d >> 28) & 15) > 9) ||
    ((((a >> 28) & 15) + ((b >> 28) & 15)) > 9);
  if (PackedBcdCarryBit) {
    d += 1610612736;                      // 0x60000000
  };
  return d;
};

//
// Returns the count of left-hand zeros.
//
func int PackedBcdLH0Count( var int a )
{
  if (a & -65536) {          // 0xFFFF0000
    if (a & -16777216) {     // 0xFF000000
      if (a & -268435456) {  // 0xF0000000
        return 0;
      };
      return 1;
    };
    if (a & 15728640) {      // 0x00F00000
      return 2;
    };
    return 3;
  };
  if (a & 65280) {           // 0x0000FF00
    if (a & 61440) {         // 0x0000F000
      return 4;
    };
    return 5;
  };
  if (a & 240) {             // 0x000000F0
    return 6;
  };
  if (a) {
    return 7;
  };
  return 8;
};

//
// Returns the count of right-hand zeros.
//
func int PackedBcdRH0Count( var int a )
{
  if (a & 65535) {      // 0x0000FFFF
    if (a & 255) {      // 0x000000FF
      if (a & 15) {     // 0x0000000F
        return 0;
      };
      return 1;
    };
    if (a & 3840) {     // 0x00000F00
      return 2;
    };
    return 3;
  };
  if (a & 16711680) {   // 0x00FF0000
    if (a & 983040) {   // 0x000F0000
      return 4;
    };
    return 5;
  };
  if (a & 251658240) {  // 0x0F000000
    return 6;
  };
  if (a) {
    return 7;
  };
  return 8;
};

////////////////////////////////////////////////////////////////////////////////

func string _Float32ToStringPrefix( var int n )
{
  if (n) {
    return "-";
  };
  return "";
};

//
// This array contains the result as a 96-digit unsigned Packed BCD list.
// Note: [0,4] are positive exponents, and [5,11] are negative exponents.
//
var int _Float32ToStringResult[12];

//
// Returns Packed BCD value by array index 'i'.
//
func int _Float32ToStringGetBCD( var int i )
{
  /** /// Unit testing
  if ((i < 0) || (i > 11)) {
    PrintDebug( ConcatStrings( "Float32ToString: GetBCD invalid i = ", IntToString( i ) ) );
    return 0;
  };
  /**/
  if (i >= 6) {
    if (i >= 9) {
      if (i >= 10) {
        if (i >= 11) {
          return _Float32ToStringResult[11];
        };
        return _Float32ToStringResult[10];
      };
      return _Float32ToStringResult[9];
    };
    if (i >= 7) {
      if (i >= 8) {
        return _Float32ToStringResult[8];
      };
      return _Float32ToStringResult[7];
    };
    return _Float32ToStringResult[6];
  };
  if (i >= 3) {
    if (i >= 4) {
      if (i >= 5) {
        return _Float32ToStringResult[5];
      };
      return _Float32ToStringResult[4];
    };
    return _Float32ToStringResult[3];
  };
  if (i >= 1) {
    if (i >= 2) {
      return _Float32ToStringResult[2];
    };
    return _Float32ToStringResult[1];
  };
  return _Float32ToStringResult[0];
};

//
// Sets Packed BCD value 'a' by array index 'i'.
//
func void _Float32ToStringSetBCD( var int i, var int a )
{
  /** /// Unit testing
  if (!PackedBcdValidate( a )) {
    PrintDebug( ConcatStrings( "Float32ToString: SetBCD invalid a = ", IntToString( a ) ) );
  };
  if ((i < 0) || (i > 11)) {
    PrintDebug( ConcatStrings( "Float32ToString: SetBCD invalid i = ", IntToString( i ) ) );
    return;
  };
  /**/
  if (i >= 6) {
    if (i >= 9) {
      if (i >= 10) {
        if (i >= 11) {
          _Float32ToStringResult[11] = a;
          return;
        };
        _Float32ToStringResult[10] = a;
        return;
      };
      _Float32ToStringResult[9] = a;
      return;
    };
    if (i >= 7) {
      if (i >= 8) {
        _Float32ToStringResult[8] = a;
        return;
      };
      _Float32ToStringResult[7] = a;
      return;
    };
    _Float32ToStringResult[6] = a;
    return;
  };
  if (i >= 3) {
    if (i >= 4) {
      if (i >= 5) {
        _Float32ToStringResult[5] = a;
        return;
      };
      _Float32ToStringResult[4] = a;
      return;
    };
    _Float32ToStringResult[3] = a;
    return;
  };
  if (i >= 1) {
    if (i >= 2) {
      _Float32ToStringResult[2] = a;
      return;
    };
    _Float32ToStringResult[1] = a;
    return;
  };
  _Float32ToStringResult[0] = a;
};

//
// Initializes Packed BCD array with 0 from index 'i' to 'j'.
//
func void _Float32ToStringClrBCD( var int i, var int j )
{
  /** /// Unit testing
  if ((i < 0) || (i > 11)) {
    PrintDebug( ConcatStrings( "Float32ToString: ClrBCD invalid i = ", IntToString( i ) ) );
    return;
  };
  /**/
  _Float32ToStringSetBCD( i, 0 );
  if (i < j) {
  	_Float32ToStringClrBCD( i + 1, j );
  };
};

//
// Adds a single Packed BCD 'a' by index 'i' to the _Float32ToStringResult.
//
func void _Float32ToStringAddBCD( var int i, var int a )
{
  _Float32ToStringSetBCD( i, PackedBcdAddition( _Float32ToStringGetBCD( i ), a ) );
  if (PackedBcdCarryBit) {
    /** /// Unit testing
    if (!i) {
      PrintDebug( "Float32ToString: AddBCD result overflow" );
      return;
    };
    /**/
    _Float32ToStringAddBCD( i - 1, 1 );
  };
};

//
// Adds the Packed BCD values of a significand bit by exponent 'e' (2**e).
// Note: The function (unwound binary search and BCD values) was generated
// with a program that I developed by myself (to avoid typing errors *g*).
//
func void _Float32ToStringAddBit( var int e )
{
  /** /// Unit testing
  if ((e < -149) || (e > 128)) {
    PrintDebug( ConcatStrings( "Float32ToString: AddBit invalid e = ", IntToString( e ) ) );
    return;
  };
  /**/
  if (e >= -10) {
    if (e >= 59) {
      if (e >= 94) {
        if (e >= 111) {
          if (e >= 120) {
            if (e >= 124) {
              if (e >= 126) {
                if (e >= 127) {
                  if (e >= 128) {
                    _Float32ToStringAddBCD( 1, 1728053248 );  // [ 1] 0x67000000
                    _Float32ToStringAddBCD( 0, 54536227 );    // [ 0] 0x03402823
                    return;
                  };
                  _Float32ToStringAddBCD( 1, -2097152000 );   // [ 1] 0x83000000
                  _Float32ToStringAddBCD( 0, 24122385 );      // [ 0] 0x01701411
                  return;
                };
                _Float32ToStringAddBCD( 1, -1854930944 );     // [ 1] 0x91700000
                _Float32ToStringAddBCD( 0, 8718085 );         // [ 0] 0x00850705
                return;
              };
              if (e >= 125) {
                _Float32ToStringAddBCD( 1, -1785724928 );     // [ 1] 0x95900000
                _Float32ToStringAddBCD( 0, 4346706 );         // [ 0] 0x00425352
                return;
              };
              _Float32ToStringAddBCD( 1, 1200619520 );        // [ 1] 0x47900000
              _Float32ToStringAddBCD( 0, 2172534 );           // [ 0] 0x00212676
              return;
            };
            if (e >= 122) {
              if (e >= 123) {
                _Float32ToStringAddBCD( 1, 603979776 );       // [ 1] 0x24000000
                _Float32ToStringAddBCD( 0, 1073976 );         // [ 0] 0x00106338
                return;
              };
              _Float32ToStringAddBCD( 1, 295174144 );         // [ 1] 0x11980000
              _Float32ToStringAddBCD( 0, 340329 );            // [ 0] 0x00053169
              return;
            };
            if (e >= 121) {
              _Float32ToStringAddBCD( 1, 1436090368 );        // [ 1] 0x55990000
              _Float32ToStringAddBCD( 0, 157060 );            // [ 0] 0x00026584
              return;
            };
            _Float32ToStringAddBCD( 1, 671088640 );           // [ 1] 0x28000000
            _Float32ToStringAddBCD( 0, 78482 );               // [ 0] 0x00013292
            return;
          };
          if (e >= 115) {
            if (e >= 117) {
              if (e >= 118) {
                if (e >= 119) {
                  _Float32ToStringAddBCD( 1, 328826880 );     // [ 1] 0x13998000
                  _Float32ToStringAddBCD( 0, 26182 );         // [ 0] 0x00006646
                  return;
                };
                _Float32ToStringAddBCD( 1, 110727168 );       // [ 1] 0x06999000
                _Float32ToStringAddBCD( 0, 13091 );           // [ 0] 0x00003323
                return;
              };
              _Float32ToStringAddBCD( 1, 1397329920 );        // [ 1] 0x53499000
              _Float32ToStringAddBCD( 0, 5729 );              // [ 0] 0x00001661
              return;
            };
            if (e >= 116) {
              _Float32ToStringAddBCD( 1, 1987352320 );        // [ 1] 0x76749700
              _Float32ToStringAddBCD( 0, 2096 );              // [ 0] 0x00000830
              return;
            };
            _Float32ToStringAddBCD( 1, 943147264 );           // [ 1] 0x38374900
            _Float32ToStringAddBCD( 0, 1045 );                // [ 0] 0x00000415
            return;
          };
          if (e >= 113) {
            if (e >= 114) {
              _Float32ToStringAddBCD( 1, 1763210240 );        // [ 1] 0x69187400
              _Float32ToStringAddBCD( 0, 519 );               // [ 0] 0x00000207
              return;
            };
            _Float32ToStringAddBCD( 1, -2074528000 );         // [ 1] 0x84593700
            _Float32ToStringAddBCD( 0, 259 );                 // [ 0] 0x00000103
            return;
          };
          if (e >= 112) {
            _Float32ToStringAddBCD( 1, -1842780064 );         // [ 1] 0x92296860
            _Float32ToStringAddBCD( 0, 81 );                  // [ 0] 0x00000051
            return;
          };
          _Float32ToStringAddBCD( 1, -1777040336 );           // [ 1] 0x96148430
          _Float32ToStringAddBCD( 0, 37 );                    // [ 0] 0x00000025
          return;
        };
        if (e >= 102) {
          if (e >= 106) {
            if (e >= 108) {
              if (e >= 109) {
                if (e >= 110) {
                  _Float32ToStringAddBCD( 1, -1744354800 );   // [ 1] 0x98074210
                  _Float32ToStringAddBCD( 0, 18 );            // [ 0] 0x00000012
                  return;
                };
                _Float32ToStringAddBCD( 1, 1224962311 );      // [ 1] 0x49037107
                _Float32ToStringAddBCD( 0, 6 );               // [ 0] 0x00000006
                return;
              };
              _Float32ToStringAddBCD( 1, 609322324 );         // [ 1] 0x24518554
              _Float32ToStringAddBCD( 0, 3 );                 // [ 0] 0x00000003
              return;
            };
            if (e >= 107) {
              _Float32ToStringAddBCD( 1, 1646629495 );        // [ 1] 0x62259277
              _Float32ToStringAddBCD( 0, 1 );                 // [ 0] 0x00000001
              return;
            };
            _Float32ToStringAddBCD( 2, 1073741824 );          // [ 2] 0x40000000
            _Float32ToStringAddBCD( 1, -2129488328 );         // [ 1] 0x81129638
            return;
          };
          if (e >= 104) {
            if (e >= 105) {
              _Float32ToStringAddBCD( 2, 536870912 );         // [ 2] 0x20000000
              _Float32ToStringAddBCD( 1, 1079396377 );        // [ 1] 0x40564819
              return;
            };
            _Float32ToStringAddBCD( 2, 1610612736 );          // [ 2] 0x60000000
            _Float32ToStringAddBCD( 1, 539501577 );           // [ 1] 0x20282409
            return;
          };
          if (e >= 103) {
            _Float32ToStringAddBCD( 2, -2147483648 );         // [ 2] 0x80000000
            _Float32ToStringAddBCD( 1, 269750788 );           // [ 1] 0x10141204
            return;
          };
          _Float32ToStringAddBCD( 2, 1073741824 );            // [ 2] 0x40000000
          _Float32ToStringAddBCD( 1, 84346370 );              // [ 1] 0x05070602
          return;
        };
        if (e >= 98) {
          if (e >= 100) {
            if (e >= 101) {
              _Float32ToStringAddBCD( 2, 536870912 );         // [ 2] 0x20000000
              _Float32ToStringAddBCD( 1, 39015169 );          // [ 1] 0x02535301
              return;
            };
            _Float32ToStringAddBCD( 2, 1610612736 );          // [ 2] 0x60000000
            _Float32ToStringAddBCD( 1, 19297872 );            // [ 1] 0x01267650
            return;
          };
          if (e >= 99) {
            _Float32ToStringAddBCD( 2, 805306368 );           // [ 2] 0x30000000
            _Float32ToStringAddBCD( 1, 6502437 );             // [ 1] 0x00633825
            return;
          };
          _Float32ToStringAddBCD( 2, 1694498816 );            // [ 2] 0x65000000
          _Float32ToStringAddBCD( 1, 3238162 );               // [ 1] 0x00316912
          return;
        };
        if (e >= 96) {
          if (e >= 97) {
            _Float32ToStringAddBCD( 2, 844103680 );           // [ 2] 0x32500000
            _Float32ToStringAddBCD( 1, 1410134 );             // [ 1] 0x00158456
            return;
          };
          _Float32ToStringAddBCD( 2, 371523584 );             // [ 2] 0x16250000
          _Float32ToStringAddBCD( 1, 496168 );                // [ 1] 0x00079228
          return;
        };
        if (e >= 95) {
          _Float32ToStringAddBCD( 2, 135462912 );             // [ 2] 0x08130000
          _Float32ToStringAddBCD( 1, 235028 );                // [ 1] 0x00039614
          return;
        };
        _Float32ToStringAddBCD( 2, 67502080 );                // [ 2] 0x04060000
        _Float32ToStringAddBCD( 1, 104455 );                  // [ 1] 0x00019807
        return;
      };
      if (e >= 76) {
        if (e >= 85) {
          if (e >= 89) {
            if (e >= 91) {
              if (e >= 92) {
                if (e >= 93) {
                  _Float32ToStringAddBCD( 2, 1375932416 );    // [ 2] 0x52031000
                  _Float32ToStringAddBCD( 1, 39171 );         // [ 1] 0x00009903
                  return;
                };
                _Float32ToStringAddBCD( 2, 1979801600 );      // [ 2] 0x76016000
                _Float32ToStringAddBCD( 1, 18769 );           // [ 1] 0x00004951
                return;
              };
              _Float32ToStringAddBCD( 2, -2013233152 );       // [ 2] 0x88008000
              _Float32ToStringAddBCD( 1, 9333 );              // [ 1] 0x00002475
              return;
            };
            if (e >= 90) {
              _Float32ToStringAddBCD( 2, -1811922944 );       // [ 2] 0x94004000
              _Float32ToStringAddBCD( 1, 4663 );              // [ 1] 0x00001237
              return;
            };
            _Float32ToStringAddBCD( 2, -1761599488 );         // [ 2] 0x97002000
            _Float32ToStringAddBCD( 1, 1560 );                // [ 1] 0x00000618
            return;
          };
          if (e >= 87) {
            if (e >= 88) {
              _Float32ToStringAddBCD( 2, 1213206528 );        // [ 2] 0x48501000
              _Float32ToStringAddBCD( 1, 777 );               // [ 1] 0x00000309
              return;
            };
            _Float32ToStringAddBCD( 2, 1948583168 );          // [ 2] 0x74250500
            _Float32ToStringAddBCD( 1, 340 );                 // [ 1] 0x00000154
            return;
          };
          if (e >= 86) {
            _Float32ToStringAddBCD( 2, 923947600 );           // [ 2] 0x37125250
            _Float32ToStringAddBCD( 1, 119 );                 // [ 1] 0x00000077
            return;
          };
          _Float32ToStringAddBCD( 2, 1750476320 );            // [ 2] 0x68562620
          _Float32ToStringAddBCD( 1, 56 );                    // [ 1] 0x00000038
          return;
        };
        if (e >= 80) {
          if (e >= 82) {
            if (e >= 83) {
              if (e >= 84) {
                _Float32ToStringAddBCD( 2, 875041552 );       // [ 2] 0x34281310
                _Float32ToStringAddBCD( 1, 25 );              // [ 1] 0x00000019
                return;
              };
              _Float32ToStringAddBCD( 2, 1729365590 );        // [ 2] 0x67140656
              _Float32ToStringAddBCD( 1, 9 );                 // [ 1] 0x00000009
              return;
            };
            _Float32ToStringAddBCD( 2, -2091449560 );         // [ 2] 0x83570328
            _Float32ToStringAddBCD( 1, 4 );                   // [ 1] 0x00000004
            return;
          };
          if (e >= 81) {
            _Float32ToStringAddBCD( 2, 1098404196 );          // [ 2] 0x41785164
            _Float32ToStringAddBCD( 1, 2 );                   // [ 1] 0x00000002
            return;
          };
          _Float32ToStringAddBCD( 2, 545858946 );             // [ 2] 0x20892582
          _Float32ToStringAddBCD( 1, 1 );                     // [ 1] 0x00000001
          return;
        };
        if (e >= 78) {
          if (e >= 79) {
            _Float32ToStringAddBCD( 2, 1615094417 );          // [ 2] 0x60446291
            return;
          };
          _Float32ToStringAddBCD( 3, 1342177280 );            // [ 3] 0x50000000
          _Float32ToStringAddBCD( 2, 807547205 );             // [ 2] 0x30223145
          return;
        };
        if (e >= 77) {
          _Float32ToStringAddBCD( 3, 1879048192 );            // [ 3] 0x70000000
          _Float32ToStringAddBCD( 2, 353441138 );             // [ 2] 0x15111572
          return;
        };
        _Float32ToStringAddBCD( 3, 922746880 );               // [ 3] 0x37000000
        _Float32ToStringAddBCD( 2, 123033478 );               // [ 2] 0x07555786
        return;
      };
      if (e >= 67) {
        if (e >= 71) {
          if (e >= 73) {
            if (e >= 74) {
              if (e >= 75) {
                _Float32ToStringAddBCD( 3, 419430400 );       // [ 3] 0x19000000
                _Float32ToStringAddBCD( 2, 58161299 );        // [ 2] 0x03777893
                return;
              };
              _Float32ToStringAddBCD( 3, 1493172224 );        // [ 3] 0x59000000
              _Float32ToStringAddBCD( 2, 25725254 );          // [ 2] 0x01888946
              return;
            };
            _Float32ToStringAddBCD( 3, 695205888 );           // [ 3] 0x29700000
            _Float32ToStringAddBCD( 2, 9716851 );             // [ 2] 0x00944473
            return;
          };
          if (e >= 72) {
            _Float32ToStringAddBCD( 3, 1686110208 );          // [ 3] 0x64800000
            _Float32ToStringAddBCD( 2, 4661814 );             // [ 2] 0x00472236
            return;
          };
          _Float32ToStringAddBCD( 3, 843055104 );             // [ 3] 0x32400000
          _Float32ToStringAddBCD( 2, 2318616 );               // [ 2] 0x00236118
          return;
        };
        if (e >= 69) {
          if (e >= 70) {
            _Float32ToStringAddBCD( 3, 371195904 );           // [ 3] 0x16200000
            _Float32ToStringAddBCD( 2, 1146969 );             // [ 2] 0x00118059
            return;
          };
          _Float32ToStringAddBCD( 3, 1477443584 );            // [ 3] 0x58100000
          _Float32ToStringAddBCD( 2, 364585 );                // [ 2] 0x00059029
          return;
        };
        if (e >= 68) {
          _Float32ToStringAddBCD( 3, 2030370816 );            // [ 3] 0x79050000
          _Float32ToStringAddBCD( 2, 169236 );                // [ 2] 0x00029514
          return;
        };
        _Float32ToStringAddBCD( 3, 961740800 );               // [ 3] 0x39530000
        _Float32ToStringAddBCD( 2, 83799 );                   // [ 2] 0x00014757
        return;
      };
      if (e >= 63) {
        if (e >= 65) {
          if (e >= 66) {
            _Float32ToStringAddBCD( 3, 1769353216 );          // [ 3] 0x69763000
            _Float32ToStringAddBCD( 2, 29560 );               // [ 2] 0x00007378
            return;
          };
          _Float32ToStringAddBCD( 3, 881332224 );             // [ 3] 0x34881000
          _Float32ToStringAddBCD( 2, 13961 );                 // [ 2] 0x00003689
          return;
        };
        if (e >= 64) {
          _Float32ToStringAddBCD( 3, 1732513792 );            // [ 3] 0x67441000
          _Float32ToStringAddBCD( 2, 6212 );                  // [ 2] 0x00001844
          return;
        };
        _Float32ToStringAddBCD( 3, 863110144 );               // [ 3] 0x33720400
        _Float32ToStringAddBCD( 2, 2338 );                    // [ 2] 0x00000922
        return;
      };
      if (e >= 61) {
        if (e >= 62) {
          _Float32ToStringAddBCD( 3, 377881088 );             // [ 3] 0x16860200
          _Float32ToStringAddBCD( 2, 1121 );                  // [ 2] 0x00000461
          return;
        };
        _Float32ToStringAddBCD( 3, 1480786176 );              // [ 3] 0x58430100
        _Float32ToStringAddBCD( 2, 560 );                     // [ 2] 0x00000230
        return;
      };
      if (e >= 60) {
        _Float32ToStringAddBCD( 3, 690049024 );               // [ 3] 0x29215000
        _Float32ToStringAddBCD( 2, 277 );                     // [ 2] 0x00000115
        return;
      };
      _Float32ToStringAddBCD( 3, 1684043040 );                // [ 3] 0x64607520
      _Float32ToStringAddBCD( 2, 87 );                        // [ 2] 0x00000057
      return;
    };
    if (e >= 24) {
      if (e >= 41) {
        if (e >= 50) {
          if (e >= 54) {
            if (e >= 56) {
              if (e >= 57) {
                if (e >= 58) {
                  _Float32ToStringAddBCD( 3, -2110769312 );   // [ 3] 0x82303760
                  _Float32ToStringAddBCD( 2, 40 );            // [ 2] 0x00000028
                  return;
                };
                _Float32ToStringAddBCD( 3, 1091901568 );      // [ 3] 0x41151880
                _Float32ToStringAddBCD( 2, 20 );              // [ 2] 0x00000014
                return;
              };
              _Float32ToStringAddBCD( 3, 542595392 );         // [ 3] 0x20575940
              _Float32ToStringAddBCD( 2, 7 );                 // [ 2] 0x00000007
              return;
            };
            if (e >= 55) {
              _Float32ToStringAddBCD( 3, 1613265264 );        // [ 3] 0x60287970
              _Float32ToStringAddBCD( 2, 3 );                 // [ 2] 0x00000003
              return;
            };
            _Float32ToStringAddBCD( 3, -2146158203 );         // [ 3] 0x80143985
            _Float32ToStringAddBCD( 2, 1 );                   // [ 2] 0x00000001
            return;
          };
          if (e >= 52) {
            if (e >= 53) {
              _Float32ToStringAddBCD( 4, 1342177280 );        // [ 4] 0x50000000
              _Float32ToStringAddBCD( 3, -1878582894 );       // [ 3] 0x90071992
              return;
            };
            _Float32ToStringAddBCD( 4, 805306368 );           // [ 4] 0x30000000
            _Float32ToStringAddBCD( 3, 1157847446 );          // [ 3] 0x45035996
            return;
          };
          if (e >= 51) {
            _Float32ToStringAddBCD( 4, 268435456 );           // [ 4] 0x10000000
            _Float32ToStringAddBCD( 3, 575764888 );           // [ 3] 0x22517998
            return;
          };
          _Float32ToStringAddBCD( 4, 268435456 );             // [ 4] 0x10000000
          _Float32ToStringAddBCD( 3, 287672729 );             // [ 3] 0x11258999
          return;
        };
        if (e >= 45) {
          if (e >= 47) {
            if (e >= 48) {
              if (e >= 49) {
                _Float32ToStringAddBCD( 4, 1392508928 );      // [ 4] 0x53000000
                _Float32ToStringAddBCD( 3, 90346649 );        // [ 3] 0x05629499
                return;
              };
              _Float32ToStringAddBCD( 4, 1996488704 );        // [ 4] 0x77000000
              _Float32ToStringAddBCD( 3, 42026825 );          // [ 3] 0x02814749
              return;
            };
            _Float32ToStringAddBCD( 4, -2013265920 );         // [ 4] 0x88000000
            _Float32ToStringAddBCD( 3, 21001076 );            // [ 3] 0x01407374
            return;
          };
          if (e >= 46) {
            _Float32ToStringAddBCD( 4, 1142947840 );          // [ 4] 0x44200000
            _Float32ToStringAddBCD( 3, 7353991 );             // [ 3] 0x00703687
            return;
          };
          _Float32ToStringAddBCD( 4, 1913651200 );            // [ 4] 0x72100000
          _Float32ToStringAddBCD( 3, 3479619 );               // [ 3] 0x00351843
          return;
        };
        if (e >= 43) {
          if (e >= 44) {
            _Float32ToStringAddBCD( 4, -2046820352 );         // [ 4] 0x86000000
            _Float32ToStringAddBCD( 3, 1530145 );             // [ 3] 0x00175921
            return;
          };
          _Float32ToStringAddBCD( 4, -1828585472 );           // [ 4] 0x93020000
          _Float32ToStringAddBCD( 3, 555360 );                // [ 3] 0x00087960
          return;
        };
        if (e >= 42) {
          _Float32ToStringAddBCD( 4, 1179713536 );            // [ 4] 0x46510000
          _Float32ToStringAddBCD( 3, 276864 );                // [ 3] 0x00043980
          return;
        };
        _Float32ToStringAddBCD( 4, 589692928 );               // [ 4] 0x23260000
        _Float32ToStringAddBCD( 3, 137616 );                  // [ 3] 0x00021990
        return;
      };
      if (e >= 32) {
        if (e >= 36) {
          if (e >= 38) {
            if (e >= 39) {
              if (e >= 40) {
                _Float32ToStringAddBCD( 4, 291700736 );       // [ 4] 0x11630000
                _Float32ToStringAddBCD( 3, 67989 );           // [ 3] 0x00010995
                return;
              };
              _Float32ToStringAddBCD( 4, 1434533888 );        // [ 4] 0x55814000
              _Float32ToStringAddBCD( 3, 21655 );             // [ 3] 0x00005497
              return;
            };
            _Float32ToStringAddBCD( 4, 2005954560 );          // [ 4] 0x77907000
            _Float32ToStringAddBCD( 3, 10056 );               // [ 3] 0x00002748
            return;
          };
          if (e >= 37) {
            _Float32ToStringAddBCD( 4, 949301248 );           // [ 4] 0x38953000
            _Float32ToStringAddBCD( 3, 4980 );                // [ 3] 0x00001374
            return;
          };
          _Float32ToStringAddBCD( 4, 424109824 );             // [ 4] 0x19476700
          _Float32ToStringAddBCD( 3, 1671 );                  // [ 3] 0x00000687
          return;
        };
        if (e >= 34) {
          if (e >= 35) {
            _Float32ToStringAddBCD( 4, 1500742656 );          // [ 4] 0x59738400
            _Float32ToStringAddBCD( 3, 835 );                 // [ 3] 0x00000343
            return;
          };
          _Float32ToStringAddBCD( 4, 2038862336 );            // [ 4] 0x79869200
          _Float32ToStringAddBCD( 3, 369 );                   // [ 3] 0x00000171
          return;
        };
        if (e >= 33) {
          _Float32ToStringAddBCD( 4, -1986837104 );           // [ 4] 0x89934590
          _Float32ToStringAddBCD( 3, 133 );                   // [ 3] 0x00000085
          return;
        };
        _Float32ToStringAddBCD( 4, -1802079488 );             // [ 4] 0x94967300
        _Float32ToStringAddBCD( 3, 66 );                      // [ 3] 0x00000042
        return;
      };
      if (e >= 28) {
        if (e >= 30) {
          if (e >= 31) {
            _Float32ToStringAddBCD( 4, 1195914832 );          // [ 4] 0x47483650
            _Float32ToStringAddBCD( 3, 33 );                  // [ 3] 0x00000021
            return;
          };
          _Float32ToStringAddBCD( 4, 1936988192 );            // [ 4] 0x73741820
          _Float32ToStringAddBCD( 3, 16 );                    // [ 3] 0x00000010
          return;
        };
        if (e >= 29) {
          _Float32ToStringAddBCD( 4, 914819346 );             // [ 4] 0x36870912
          _Float32ToStringAddBCD( 3, 5 );                     // [ 3] 0x00000005
          return;
        };
        _Float32ToStringAddBCD( 4, 1749242966 );              // [ 4] 0x68435456
        _Float32ToStringAddBCD( 3, 2 );                       // [ 3] 0x00000002
        return;
      };
      if (e >= 26) {
        if (e >= 27) {
          _Float32ToStringAddBCD( 4, 874608424 );             // [ 4] 0x34217728
          _Float32ToStringAddBCD( 3, 1 );                     // [ 3] 0x00000001
          return;
        };
        _Float32ToStringAddBCD( 4, 1729136740 );              // [ 4] 0x67108864
        return;
      };
      if (e >= 25) {
        _Float32ToStringAddBCD( 4, 861226034 );               // [ 4] 0x33554432
        return;
      };
      _Float32ToStringAddBCD( 4, 376926742 );                 // [ 4] 0x16777216
      return;
    };
    if (e >= 7) {
      if (e >= 15) {
        if (e >= 19) {
          if (e >= 21) {
            if (e >= 22) {
              if (e >= 23) {
                _Float32ToStringAddBCD( 4, 137922056 );       // [ 4] 0x08388608
                return;
              };
              _Float32ToStringAddBCD( 4, 68764420 );          // [ 4] 0x04194304
              return;
            };
            _Float32ToStringAddBCD( 4, 34173266 );            // [ 4] 0x02097152
            return;
          };
          if (e >= 20) {
            _Float32ToStringAddBCD( 4, 17073526 );            // [ 4] 0x01048576
            return;
          };
          _Float32ToStringAddBCD( 4, 5390984 );               // [ 4] 0x00524288
          return;
        };
        if (e >= 17) {
          if (e >= 18) {
            _Float32ToStringAddBCD( 4, 2498884 );             // [ 4] 0x00262144
            return;
          };
          _Float32ToStringAddBCD( 4, 1249394 );               // [ 4] 0x00131072
          return;
        };
        if (e >= 16) {
          _Float32ToStringAddBCD( 4, 415030 );                // [ 4] 0x00065536
          return;
        };
        _Float32ToStringAddBCD( 4, 206696 );                  // [ 4] 0x00032768
        return;
      };
      if (e >= 11) {
        if (e >= 13) {
          if (e >= 14) {
            _Float32ToStringAddBCD( 4, 91012 );               // [ 4] 0x00016384
            return;
          };
          _Float32ToStringAddBCD( 4, 33170 );                 // [ 4] 0x00008192
          return;
        };
        if (e >= 12) {
          _Float32ToStringAddBCD( 4, 16534 );                 // [ 4] 0x00004096
          return;
        };
        _Float32ToStringAddBCD( 4, 8264 );                    // [ 4] 0x00002048
        return;
      };
      if (e >= 9) {
        if (e >= 10) {
          _Float32ToStringAddBCD( 4, 4132 );                  // [ 4] 0x00001024
          return;
        };
        _Float32ToStringAddBCD( 4, 1298 );                    // [ 4] 0x00000512
        return;
      };
      if (e >= 8) {
        _Float32ToStringAddBCD( 4, 598 );                     // [ 4] 0x00000256
        return;
      };
      _Float32ToStringAddBCD( 4, 296 );                       // [ 4] 0x00000128
      return;
    };
    if (e >= -2) {
      if (e >= 2) {
        if (e >= 4) {
          if (e >= 5) {
            if (e >= 6) {
              _Float32ToStringAddBCD( 4, 100 );               // [ 4] 0x00000064
              return;
            };
            _Float32ToStringAddBCD( 4, 50 );                  // [ 4] 0x00000032
            return;
          };
          _Float32ToStringAddBCD( 4, 22 );                    // [ 4] 0x00000016
          return;
        };
        if (e >= 3) {
          _Float32ToStringAddBCD( 4, 8 );                     // [ 4] 0x00000008
          return;
        };
        _Float32ToStringAddBCD( 4, 4 );                       // [ 4] 0x00000004
        return;
      };
      if (e >= 0) {
        if (e >= 1) {
          _Float32ToStringAddBCD( 4, 2 );                     // [ 4] 0x00000002
          return;
        };
        _Float32ToStringAddBCD( 4, 1 );                       // [ 4] 0x00000001
        return;
      };
      if (e >= -1) {
        _Float32ToStringAddBCD( 5, 1342177280 );              // [ 5] 0x50000000
        return;
      };
      _Float32ToStringAddBCD( 5, 620756992 );                 // [ 5] 0x25000000
      return;
    };
    if (e >= -6) {
      if (e >= -4) {
        if (e >= -3) {
          _Float32ToStringAddBCD( 5, 307232768 );             // [ 5] 0x12500000
          return;
        };
        _Float32ToStringAddBCD( 5, 103088128 );               // [ 5] 0x06250000
        return;
      };
      if (e >= -5) {
        _Float32ToStringAddBCD( 5, 51531776 );                // [ 5] 0x03125000
        return;
      };
      _Float32ToStringAddBCD( 5, 22422784 );                  // [ 5] 0x01562500
      return;
    };
    if (e >= -8) {
      if (e >= -7) {
        _Float32ToStringAddBCD( 5, 7869008 );                 // [ 5] 0x00781250
        return;
      };
      _Float32ToStringAddBCD( 5, 3737125 );                   // [ 5] 0x00390625
      return;
    };
    if (e >= -9) {
      _Float32ToStringAddBCD( 6, 1342177280 );                // [ 6] 0x50000000
      _Float32ToStringAddBCD( 5, 1659666 );                   // [ 5] 0x00195312
      return;
    };
    _Float32ToStringAddBCD( 6, 620756992 );                   // [ 6] 0x25000000
    _Float32ToStringAddBCD( 5, 620118 );                      // [ 5] 0x00097656
    return;
  };
  if (e >= -80) {
    if (e >= -45) {
      if (e >= -28) {
        if (e >= -19) {
          if (e >= -15) {
            if (e >= -13) {
              if (e >= -12) {
                if (e >= -11) {
                  _Float32ToStringAddBCD( 6, 307232768 );     // [ 6] 0x12500000
                  _Float32ToStringAddBCD( 5, 297000 );        // [ 5] 0x00048828
                  return;
                };
                _Float32ToStringAddBCD( 6, 103088128 );       // [ 6] 0x06250000
                _Float32ToStringAddBCD( 5, 148500 );          // [ 5] 0x00024414
                return;
              };
              _Float32ToStringAddBCD( 6, 51576832 );          // [ 6] 0x03130000
              _Float32ToStringAddBCD( 5, 74247 );             // [ 5] 0x00012207
              return;
            };
            if (e >= -14) {
              _Float32ToStringAddBCD( 6, 1364602880 );        // [ 6] 0x51563000
              _Float32ToStringAddBCD( 5, 24835 );             // [ 5] 0x00006103
              return;
            };
            _Float32ToStringAddBCD( 6, 1970802688 );          // [ 6] 0x75781000
            _Float32ToStringAddBCD( 5, 12369 );               // [ 5] 0x00003051
            return;
          };
          if (e >= -17) {
            if (e >= -16) {
              _Float32ToStringAddBCD( 6, -2021060608 );       // [ 6] 0x87891000
              _Float32ToStringAddBCD( 5, 5413 );              // [ 5] 0x00001525
              return;
            };
            _Float32ToStringAddBCD( 6, -1818995968 );         // [ 6] 0x93945300
            _Float32ToStringAddBCD( 5, 1890 );                // [ 5] 0x00000762
            return;
          };
          if (e >= -18) {
            _Float32ToStringAddBCD( 6, 1184311040 );          // [ 6] 0x46972700
            _Float32ToStringAddBCD( 5, 897 );                 // [ 5] 0x00000381
            return;
          };
          _Float32ToStringAddBCD( 6, 1934123776 );            // [ 6] 0x73486300
          _Float32ToStringAddBCD( 5, 400 );                   // [ 5] 0x00000190
          return;
        };
        if (e >= -24) {
          if (e >= -22) {
            if (e >= -21) {
              if (e >= -20) {
                _Float32ToStringAddBCD( 6, 913584480 );       // [ 6] 0x36743160
                _Float32ToStringAddBCD( 5, 149 );             // [ 5] 0x00000095
                return;
              };
              _Float32ToStringAddBCD( 6, 1748440448 );        // [ 6] 0x68371580
              _Float32ToStringAddBCD( 5, 71 );                // [ 5] 0x00000047
              return;
            };
            _Float32ToStringAddBCD( 6, -2078779504 );         // [ 6] 0x84185790
            _Float32ToStringAddBCD( 5, 35 );                  // [ 5] 0x00000023
            return;
          };
          if (e >= -23) {
            _Float32ToStringAddBCD( 6, -1844893440 );         // [ 6] 0x92092900
            _Float32ToStringAddBCD( 5, 17 );                  // [ 5] 0x00000011
            return;
          };
          _Float32ToStringAddBCD( 6, -1778097080 );           // [ 6] 0x96046448
          _Float32ToStringAddBCD( 5, 5 );                     // [ 5] 0x00000005
          return;
        };
        if (e >= -26) {
          if (e >= -25) {
            _Float32ToStringAddBCD( 6, -1744686556 );         // [ 6] 0x98023224
            _Float32ToStringAddBCD( 5, 2 );                   // [ 5] 0x00000002
            return;
          };
          _Float32ToStringAddBCD( 6, 1224807954 );            // [ 6] 0x49011612
          _Float32ToStringAddBCD( 5, 1 );                     // [ 5] 0x00000001
          return;
        };
        if (e >= -27) {
          _Float32ToStringAddBCD( 6, 1951422470 );            // [ 6] 0x74505806
          return;
        };
        _Float32ToStringAddBCD( 6, 925182211 );               // [ 6] 0x37252903
        return;
      };
      if (e >= -37) {
        if (e >= -33) {
          if (e >= -31) {
            if (e >= -30) {
              if (e >= -29) {
                _Float32ToStringAddBCD( 7, 1342177280 );      // [ 7] 0x50000000
                _Float32ToStringAddBCD( 6, 409101393 );       // [ 6] 0x18626451
                return;
              };
              _Float32ToStringAddBCD( 7, 1962934272 );        // [ 7] 0x75000000
              _Float32ToStringAddBCD( 6, 154219045 );         // [ 6] 0x09313225
              return;
            };
            _Float32ToStringAddBCD( 7, -2030043136 );         // [ 7] 0x87000000
            _Float32ToStringAddBCD( 6, 73754130 );            // [ 6] 0x04656612
            return;
          };
          if (e >= -32) {
            _Float32ToStringAddBCD( 7, 1140850688 );          // [ 7] 0x44000000
            _Float32ToStringAddBCD( 6, 36864774 );            // [ 6] 0x02328306
            return;
          };
          _Float32ToStringAddBCD( 7, 570425344 );             // [ 7] 0x22000000
          _Float32ToStringAddBCD( 6, 18235731 );              // [ 6] 0x01164153
          return;
        };
        if (e >= -35) {
          if (e >= -34) {
            _Float32ToStringAddBCD( 7, 1620049920 );          // [ 7] 0x60900000
            _Float32ToStringAddBCD( 6, 5775478 );             // [ 6] 0x00582076
            return;
          };
          _Float32ToStringAddBCD( 7, 810549248 );             // [ 7] 0x30500000
          _Float32ToStringAddBCD( 6, 2691128 );               // [ 6] 0x00291038
          return;
        };
        if (e >= -36) {
          _Float32ToStringAddBCD( 7, 354418688 );             // [ 7] 0x15200000
          _Float32ToStringAddBCD( 6, 1332505 );               // [ 6] 0x00145519
          return;
        };
        _Float32ToStringAddBCD( 7, 1465974784 );              // [ 7] 0x57610000
        _Float32ToStringAddBCD( 6, 468825 );                  // [ 6] 0x00072759
        return;
      };
      if (e >= -41) {
        if (e >= -39) {
          if (e >= -38) {
            _Float32ToStringAddBCD( 7, 2021720064 );          // [ 7] 0x78810000
            _Float32ToStringAddBCD( 6, 222073 );              // [ 6] 0x00036379
            return;
          };
          _Float32ToStringAddBCD( 7, -1992294400 );           // [ 7] 0x89400000
          _Float32ToStringAddBCD( 6, 98697 );                 // [ 6] 0x00018189
          return;
        };
        if (e >= -40) {
          _Float32ToStringAddBCD( 7, -1804591104 );           // [ 7] 0x94702000
          _Float32ToStringAddBCD( 6, 37012 );                 // [ 6] 0x00009094
          return;
        };
        _Float32ToStringAddBCD( 7, 1194659840 );              // [ 7] 0x47351000
        _Float32ToStringAddBCD( 6, 17735 );                   // [ 6] 0x00004547
        return;
      };
      if (e >= -43) {
        if (e >= -42) {
          _Float32ToStringAddBCD( 7, 1936150528 );            // [ 7] 0x73675000
          _Float32ToStringAddBCD( 6, 8819 );                  // [ 6] 0x00002273
          return;
        };
        _Float32ToStringAddBCD( 7, -2038202368 );             // [ 7] 0x86838000
        _Float32ToStringAddBCD( 6, 4406 );                    // [ 6] 0x00001136
        return;
      };
      if (e >= -44) {
        _Float32ToStringAddBCD( 7, 1128368384 );              // [ 7] 0x43418900
        _Float32ToStringAddBCD( 6, 1384 );                    // [ 6] 0x00000568
        return;
      };
      _Float32ToStringAddBCD( 7, 561026048 );                 // [ 7] 0x21709400
      _Float32ToStringAddBCD( 6, 644 );                       // [ 6] 0x00000284
      return;
    };
    if (e >= -63) {
      if (e >= -54) {
        if (e >= -50) {
          if (e >= -48) {
            if (e >= -47) {
              if (e >= -46) {
                _Float32ToStringAddBCD( 7, 277169920 );       // [ 7] 0x10854700
                _Float32ToStringAddBCD( 6, 322 );             // [ 6] 0x00000142
                return;
              };
              _Float32ToStringAddBCD( 7, 88240992 );          // [ 7] 0x05427360
              _Float32ToStringAddBCD( 6, 113 );               // [ 6] 0x00000071
              return;
            };
            _Float32ToStringAddBCD( 7, 1383151232 );          // [ 7] 0x52713680
            _Float32ToStringAddBCD( 6, 53 );                  // [ 6] 0x00000035
            return;
          };
          if (e >= -49) {
            _Float32ToStringAddBCD( 7, 1983211584 );          // [ 7] 0x76356840
            _Float32ToStringAddBCD( 6, 23 );                  // [ 6] 0x00000017
            return;
          };
          _Float32ToStringAddBCD( 7, -2011724768 );           // [ 7] 0x88178420
          _Float32ToStringAddBCD( 6, 8 );                     // [ 6] 0x00000008
          return;
        };
        if (e >= -52) {
          if (e >= -51) {
            _Float32ToStringAddBCD( 7, 1141412368 );          // [ 7] 0x44089210
            _Float32ToStringAddBCD( 6, 4 );                   // [ 6] 0x00000004
            return;
          };
          _Float32ToStringAddBCD( 7, 570705413 );             // [ 7] 0x22044605
          _Float32ToStringAddBCD( 6, 2 );                     // [ 6] 0x00000002
          return;
        };
        if (e >= -53) {
          _Float32ToStringAddBCD( 7, 285352706 );             // [ 7] 0x11022302
          _Float32ToStringAddBCD( 6, 1 );                     // [ 6] 0x00000001
          return;
        };
        _Float32ToStringAddBCD( 8, 536870912 );               // [ 8] 0x20000000
        _Float32ToStringAddBCD( 7, 1431376209 );              // [ 7] 0x55511151
        return;
      };
      if (e >= -59) {
        if (e >= -57) {
          if (e >= -56) {
            if (e >= -55) {
              _Float32ToStringAddBCD( 8, 1610612736 );        // [ 8] 0x60000000
              _Float32ToStringAddBCD( 7, 662001013 );         // [ 7] 0x27755575
              return;
            };
            _Float32ToStringAddBCD( 8, -2147483648 );         // [ 8] 0x80000000
            _Float32ToStringAddBCD( 7, 327645063 );           // [ 7] 0x13877787
            return;
          };
          _Float32ToStringAddBCD( 8, -1879048192 );           // [ 8] 0x90000000
          _Float32ToStringAddBCD( 7, 110332051 );             // [ 7] 0x06938893
          return;
        };
        if (e >= -58) {
          _Float32ToStringAddBCD( 8, -1795162112 );           // [ 8] 0x95000000
          _Float32ToStringAddBCD( 7, 54957126 );              // [ 7] 0x03469446
          return;
        };
        _Float32ToStringAddBCD( 8, 1207959552 );              // [ 8] 0x48000000
        _Float32ToStringAddBCD( 7, 24332067 );                // [ 7] 0x01734723
        return;
      };
      if (e >= -61) {
        if (e >= -60) {
          _Float32ToStringAddBCD( 8, 1937768448 );            // [ 8] 0x73800000
          _Float32ToStringAddBCD( 7, 8811361 );               // [ 7] 0x00867361
          return;
        };
        _Float32ToStringAddBCD( 8, -2037383168 );             // [ 8] 0x86900000
        _Float32ToStringAddBCD( 7, 4404864 );                 // [ 7] 0x00433680
        return;
      };
      if (e >= -62) {
        _Float32ToStringAddBCD( 8, 1128267776 );              // [ 8] 0x43400000
        _Float32ToStringAddBCD( 7, 2189376 );                 // [ 7] 0x00216840
        return;
      };
      _Float32ToStringAddBCD( 8, 560988160 );                 // [ 8] 0x21700000
      _Float32ToStringAddBCD( 7, 1082400 );                   // [ 7] 0x00108420
      return;
    };
    if (e >= -72) {
      if (e >= -68) {
        if (e >= -66) {
          if (e >= -65) {
            if (e >= -64) {
              _Float32ToStringAddBCD( 8, 277217280 );         // [ 8] 0x10860000
              _Float32ToStringAddBCD( 7, 344592 );            // [ 7] 0x00054210
              return;
            };
            _Float32ToStringAddBCD( 8, 88276992 );            // [ 8] 0x05430000
            _Float32ToStringAddBCD( 7, 160005 );              // [ 7] 0x00027105
            return;
          };
          _Float32ToStringAddBCD( 8, 1383202816 );            // [ 8] 0x52720000
          _Float32ToStringAddBCD( 7, 79186 );                 // [ 7] 0x00013552
          return;
        };
        if (e >= -67) {
          _Float32ToStringAddBCD( 8, 641040384 );             // [ 8] 0x26358000
          _Float32ToStringAddBCD( 7, 26486 );                 // [ 7] 0x00006776
          return;
        };
        _Float32ToStringAddBCD( 8, 320311296 );               // [ 8] 0x13179000
        _Float32ToStringAddBCD( 7, 13192 );                   // [ 7] 0x00003388
        return;
      };
      if (e >= -70) {
        if (e >= -69) {
          _Float32ToStringAddBCD( 8, 106467328 );             // [ 8] 0x06589000
          _Float32ToStringAddBCD( 7, 5780 );                  // [ 7] 0x00001694
          return;
        };
        _Float32ToStringAddBCD( 8, 53036800 );                // [ 8] 0x03294700
        _Float32ToStringAddBCD( 7, 2119 );                    // [ 7] 0x00000847
        return;
      };
      if (e >= -71) {
        _Float32ToStringAddBCD( 8, 1365537792 );              // [ 8] 0x51647400
        _Float32ToStringAddBCD( 7, 1059 );                    // [ 7] 0x00000423
        return;
      };
      _Float32ToStringAddBCD( 8, 1971468032 );                // [ 8] 0x75823700
      _Float32ToStringAddBCD( 7, 529 );                       // [ 7] 0x00000211
      return;
    };
    if (e >= -76) {
      if (e >= -74) {
        if (e >= -73) {
          _Float32ToStringAddBCD( 8, -2020534272 );           // [ 8] 0x87911800
          _Float32ToStringAddBCD( 7, 261 );                   // [ 7] 0x00000105
          return;
        };
        _Float32ToStringAddBCD( 8, -1818928864 );             // [ 8] 0x93955920
        _Float32ToStringAddBCD( 7, 82 );                      // [ 7] 0x00000052
        return;
      };
      if (e >= -75) {
        _Float32ToStringAddBCD( 8, 1184332128 );              // [ 8] 0x46977960
        _Float32ToStringAddBCD( 7, 38 );                      // [ 7] 0x00000026
        return;
      };
      _Float32ToStringAddBCD( 8, 591956352 );                 // [ 8] 0x23488980
      _Float32ToStringAddBCD( 7, 19 );                        // [ 7] 0x00000013
      return;
    };
    if (e >= -78) {
      if (e >= -77) {
        _Float32ToStringAddBCD( 8, 1635009680 );              // [ 8] 0x61744490
        _Float32ToStringAddBCD( 7, 6 );                       // [ 7] 0x00000006
        return;
      };
      _Float32ToStringAddBCD( 8, 814162501 );                 // [ 8] 0x30872245
      _Float32ToStringAddBCD( 7, 3 );                         // [ 7] 0x00000003
      return;
    };
    if (e >= -79) {
      _Float32ToStringAddBCD( 8, 1698914595 );                // [ 8] 0x65436123
      _Float32ToStringAddBCD( 7, 1 );                         // [ 7] 0x00000001
      return;
    };
    _Float32ToStringAddBCD( 9, 805306368 );                   // [ 9] 0x30000000
    _Float32ToStringAddBCD( 8, -2106490783 );                 // [ 8] 0x82718061
    return;
  };
  if (e >= -115) {
    if (e >= -98) {
      if (e >= -89) {
        if (e >= -85) {
          if (e >= -83) {
            if (e >= -82) {
              if (e >= -81) {
                _Float32ToStringAddBCD( 9, 1610612736 );      // [ 9] 0x60000000
                _Float32ToStringAddBCD( 8, 1094029360 );      // [ 8] 0x41359030
                return;
              };
              _Float32ToStringAddBCD( 9, 805306368 );         // [ 9] 0x30000000
              _Float32ToStringAddBCD( 8, 543659285 );         // [ 8] 0x20679515
              return;
            };
            _Float32ToStringAddBCD( 9, 1879048192 );          // [ 9] 0x70000000
            _Float32ToStringAddBCD( 8, 271816535 );           // [ 8] 0x10339757
            return;
          };
          if (e >= -84) {
            _Float32ToStringAddBCD( 9, -2097152000 );         // [ 9] 0x83000000
            _Float32ToStringAddBCD( 8, 85366904 );            // [ 8] 0x05169878
            return;
          };
          _Float32ToStringAddBCD( 9, 1090519040 );            // [ 9] 0x41000000
          _Float32ToStringAddBCD( 8, 39340345 );              // [ 8] 0x02584939
          return;
        };
        if (e >= -87) {
          if (e >= -86) {
            _Float32ToStringAddBCD( 9, 1895825408 );          // [ 9] 0x71000000
            _Float32ToStringAddBCD( 8, 19473513 );            // [ 8] 0x01292469
            return;
          };
          _Float32ToStringAddBCD( 9, -2059403264 );           // [ 9] 0x85400000
          _Float32ToStringAddBCD( 8, 6578740 );               // [ 8] 0x00646234
          return;
        };
        if (e >= -88) {
          _Float32ToStringAddBCD( 9, 1114636288 );            // [ 9] 0x42700000
          _Float32ToStringAddBCD( 8, 3289367 );               // [ 8] 0x00323117
          return;
        };
        _Float32ToStringAddBCD( 9, 1898971136 );              // [ 9] 0x71300000
        _Float32ToStringAddBCD( 8, 1447256 );                 // [ 8] 0x00161558
        return;
      };
      if (e >= -94) {
        if (e >= -92) {
          if (e >= -91) {
            if (e >= -90) {
              _Float32ToStringAddBCD( 9, 895942656 );         // [ 9] 0x35670000
              _Float32ToStringAddBCD( 8, 526201 );            // [ 8] 0x00080779
              return;
            };
            _Float32ToStringAddBCD( 9, 1736638464 );          // [ 9] 0x67830000
            _Float32ToStringAddBCD( 8, 263049 );              // [ 8] 0x00040389
            return;
          };
          _Float32ToStringAddBCD( 9, -2087583744 );           // [ 9] 0x83920000
          _Float32ToStringAddBCD( 8, 131476 );                // [ 8] 0x00020194
          return;
        };
        if (e >= -93) {
          _Float32ToStringAddBCD( 9, 1100349440 );            // [ 9] 0x41960000
          _Float32ToStringAddBCD( 8, 65687 );                 // [ 8] 0x00010097
          return;
        };
        _Float32ToStringAddBCD( 9, 1888980992 );              // [ 9] 0x70979000
        _Float32ToStringAddBCD( 8, 20552 );                   // [ 8] 0x00005048
        return;
      };
      if (e >= -96) {
        if (e >= -95) {
          _Float32ToStringAddBCD( 9, 893976576 );             // [ 9] 0x35490000
          _Float32ToStringAddBCD( 8, 9508 );                  // [ 8] 0x00002524
          return;
        };
        _Float32ToStringAddBCD( 9, 393498624 );               // [ 9] 0x17745000
        _Float32ToStringAddBCD( 8, 4706 );                    // [ 8] 0x00001262
        return;
      };
      if (e >= -97) {
        _Float32ToStringAddBCD( 9, 143074304 );               // [ 9] 0x08872400
        _Float32ToStringAddBCD( 8, 1585 );                    // [ 8] 0x00000631
        return;
      };
      _Float32ToStringAddBCD( 9, 1413702144 );                // [ 9] 0x54436200
      _Float32ToStringAddBCD( 8, 789 );                       // [ 8] 0x00000315
      return;
    };
    if (e >= -107) {
      if (e >= -103) {
        if (e >= -101) {
          if (e >= -100) {
            if (e >= -99) {
              _Float32ToStringAddBCD( 9, 1998684416 );        // [ 9] 0x77218100
              _Float32ToStringAddBCD( 8, 343 );               // [ 8] 0x00000157
              return;
            };
            _Float32ToStringAddBCD( 9, -2006937520 );         // [ 9] 0x88609050
            _Float32ToStringAddBCD( 8, 120 );                 // [ 8] 0x00000078
            return;
          };
          _Float32ToStringAddBCD( 9, 1144014128 );            // [ 9] 0x44304530
          _Float32ToStringAddBCD( 8, 57 );                    // [ 8] 0x00000039
          return;
        };
        if (e >= -102) {
          _Float32ToStringAddBCD( 9, 1913987680 );            // [ 9] 0x72152260
          _Float32ToStringAddBCD( 8, 25 );                    // [ 8] 0x00000019
          return;
        };
        _Float32ToStringAddBCD( 9, -2046336718 );             // [ 9] 0x86076132
        _Float32ToStringAddBCD( 8, 9 );                       // [ 8] 0x00000009
        return;
      };
      if (e >= -105) {
        if (e >= -104) {
          _Float32ToStringAddBCD( 9, -1828487066 );           // [ 9] 0x93038066
          _Float32ToStringAddBCD( 8, 4 );                     // [ 8] 0x00000004
          return;
        };
        _Float32ToStringAddBCD( 9, 1179750451 );              // [ 9] 0x46519033
        _Float32ToStringAddBCD( 8, 2 );                       // [ 8] 0x00000002
        return;
      };
      if (e >= -106) {
        _Float32ToStringAddBCD( 9, 589665558 );               // [ 9] 0x23259516
        _Float32ToStringAddBCD( 8, 1 );                       // [ 8] 0x00000001
        return;
      };
      _Float32ToStringAddBCD( 10, 536870912 );                // [10] 0x20000000
      _Float32ToStringAddBCD( 9, 1633851224 );                // [ 9] 0x61629758
      return;
    };
    if (e >= -111) {
      if (e >= -109) {
        if (e >= -108) {
          _Float32ToStringAddBCD( 10, 268435456 );            // [10] 0x10000000
          _Float32ToStringAddBCD( 9, 813779065 );             // [ 9] 0x30814879
          return;
        };
        _Float32ToStringAddBCD( 10, 1610612736 );             // [10] 0x60000000
        _Float32ToStringAddBCD( 9, 356545593 );               // [ 9] 0x15407439
        return;
      };
      if (e >= -110) {
        _Float32ToStringAddBCD( 10, 2013265920 );             // [10] 0x78000000
        _Float32ToStringAddBCD( 9, 124794649 );               // [ 9] 0x07703719
        return;
      };
      _Float32ToStringAddBCD( 10, -1996488704 );              // [10] 0x89000000
      _Float32ToStringAddBCD( 9, 59054169 );                  // [ 9] 0x03851859
      return;
    };
    if (e >= -113) {
      if (e >= -112) {
        _Float32ToStringAddBCD( 10, -1811939328 );            // [10] 0x94000000
        _Float32ToStringAddBCD( 9, 26368297 );                // [ 9] 0x01925929
        return;
      };
      _Float32ToStringAddBCD( 10, -1759510528 );              // [10] 0x97200000
      _Float32ToStringAddBCD( 9, 9840996 );                   // [ 9] 0x00962964
      return;
    };
    if (e >= -114) {
      _Float32ToStringAddBCD( 10, 1214251008 );               // [10] 0x48600000
      _Float32ToStringAddBCD( 9, 4723842 );                   // [ 9] 0x00481482
      return;
    };
    _Float32ToStringAddBCD( 10, 607125504 );                  // [10] 0x24300000
    _Float32ToStringAddBCD( 9, 2361153 );                     // [ 9] 0x00240741
    return;
  };
  if (e >= -132) {
    if (e >= -124) {
      if (e >= -120) {
        if (e >= -118) {
          if (e >= -117) {
            if (e >= -116) {
              _Float32ToStringAddBCD( 10, 1646264320 );       // [10] 0x62200000
              _Float32ToStringAddBCD( 9, 1180528 );           // [ 9] 0x00120370
              return;
            };
            _Float32ToStringAddBCD( 10, 822607872 );          // [10] 0x31080000
            _Float32ToStringAddBCD( 9, 393605 );              // [ 9] 0x00060185
            return;
          };
          _Float32ToStringAddBCD( 10, 1700003840 );           // [10] 0x65540000
          _Float32ToStringAddBCD( 9, 196754 );                // [ 9] 0x00030092
          return;
        };
        if (e >= -119) {
          _Float32ToStringAddBCD( 10, 846659584 );            // [10] 0x32770000
          _Float32ToStringAddBCD( 9, 86086 );                 // [ 9] 0x00015046
          return;
        };
        _Float32ToStringAddBCD( 10, 372789248 );              // [10] 0x16385000
        _Float32ToStringAddBCD( 9, 29987 );                   // [ 9] 0x00007523
        return;
      };
      if (e >= -122) {
        if (e >= -121) {
          _Float32ToStringAddBCD( 10, 1478041600 );           // [10] 0x58192000
          _Float32ToStringAddBCD( 9, 14177 );                 // [ 9] 0x00003761
          return;
        };
        _Float32ToStringAddBCD( 10, 2030657536 );             // [10] 0x79096000
        _Float32ToStringAddBCD( 9, 6272 );                    // [ 9] 0x00001880
        return;
      };
      if (e >= -123) {
        _Float32ToStringAddBCD( 10, 961839360 );              // [10] 0x39548100
        _Float32ToStringAddBCD( 9, 2368 );                    // [ 9] 0x00000940
        return;
      };
      _Float32ToStringAddBCD( 10, 427245568 );                // [10] 0x19774000
      _Float32ToStringAddBCD( 9, 1136 );                      // [ 9] 0x00000470
      return;
    };
    if (e >= -128) {
      if (e >= -126) {
        if (e >= -125) {
          _Float32ToStringAddBCD( 10, 159936512 );            // [10] 0x09887000
          _Float32ToStringAddBCD( 9, 565 );                   // [ 9] 0x00000235
          return;
        };
        _Float32ToStringAddBCD( 10, 1418999040 );             // [10] 0x54943500
        _Float32ToStringAddBCD( 9, 279 );                     // [ 9] 0x00000117
        return;
      };
      if (e >= -127) {
        _Float32ToStringAddBCD( 10, 2001147728 );             // [10] 0x77471750
        _Float32ToStringAddBCD( 9, 88 );                      // [ 9] 0x00000058
        return;
      };
      _Float32ToStringAddBCD( 10, 947083392 );                // [10] 0x38735880
      _Float32ToStringAddBCD( 9, 41 );                        // [ 9] 0x00000029
      return;
    };
    if (e >= -130) {
      if (e >= -129) {
        _Float32ToStringAddBCD( 10, 1765177664 );             // [10] 0x69367940
        _Float32ToStringAddBCD( 9, 20 );                      // [ 9] 0x00000014
        return;
      };
      _Float32ToStringAddBCD( 10, 879245673 );                // [10] 0x34683969
      _Float32ToStringAddBCD( 9, 7 );                         // [ 9] 0x00000007
      return;
    };
    if (e >= -131) {
      _Float32ToStringAddBCD( 10, 1731467653 );               // [10] 0x67341985
      _Float32ToStringAddBCD( 9, 3 );                         // [ 9] 0x00000003
      return;
    };
    _Float32ToStringAddBCD( 10, -2090399342 );                // [10] 0x83670992
    _Float32ToStringAddBCD( 9, 1 );                           // [ 9] 0x00000001
    return;
  };
  if (e >= -141) {
    if (e >= -137) {
      if (e >= -135) {
        if (e >= -134) {
          if (e >= -133) {
            _Float32ToStringAddBCD( 11, 536870912 );          // [11] 0x20000000
            _Float32ToStringAddBCD( 10, -1853664106 );        // [10] 0x91835496
            return;
          };
          _Float32ToStringAddBCD( 11, 268435456 );            // [11] 0x10000000
          _Float32ToStringAddBCD( 10, 1167161160 );           // [10] 0x45917748
          return;
        };
        _Float32ToStringAddBCD( 10, 580225140 );              // [10] 0x22958874
        return;
      };
      if (e >= -136) {
        _Float32ToStringAddBCD( 10, 289903671 );              // [10] 0x11479437
        return;
      };
      _Float32ToStringAddBCD( 11, 1358954496 );               // [11] 0x51000000
      _Float32ToStringAddBCD( 10, 91461400 );                 // [10] 0x05739718
      return;
    };
    if (e >= -139) {
      if (e >= -138) {
        _Float32ToStringAddBCD( 11, 620756992 );              // [11] 0x25000000
        _Float32ToStringAddBCD( 10, 42375257 );               // [10] 0x02869859
        return;
      };
      _Float32ToStringAddBCD( 11, 1660944384 );               // [11] 0x63000000
      _Float32ToStringAddBCD( 10, 21186857 );                 // [10] 0x01434929
      return;
    };
    if (e >= -140) {
      _Float32ToStringAddBCD( 11, -2126512128 );              // [11] 0x81400000
      _Float32ToStringAddBCD( 10, 7435364 );                  // [10] 0x00717464
      return;
    };
    _Float32ToStringAddBCD( 11, 1081081856 );                 // [11] 0x40700000
    _Float32ToStringAddBCD( 10, 3508018 );                    // [10] 0x00358732
    return;
  };
  if (e >= -145) {
    if (e >= -143) {
      if (e >= -142) {
        _Float32ToStringAddBCD( 11, 540016640 );              // [11] 0x20300000
        _Float32ToStringAddBCD( 10, 1545062 );                // [10] 0x00179366
        return;
      };
      _Float32ToStringAddBCD( 11, 269942784 );                // [11] 0x10170000
      _Float32ToStringAddBCD( 10, 562819 );                   // [10] 0x00089683
      return;
    };
    if (e >= -144) {
      _Float32ToStringAddBCD( 11, 1426653184 );               // [11] 0x55090000
      _Float32ToStringAddBCD( 10, 280641 );                   // [10] 0x00044841
      return;
    };
    _Float32ToStringAddBCD( 11, 2001993728 );                 // [11] 0x77540000
    _Float32ToStringAddBCD( 10, 140320 );                     // [10] 0x00022420
    return;
  };
  if (e >= -147) {
    if (e >= -146) {
      _Float32ToStringAddBCD( 11, 947322880 );                // [11] 0x38770000
      _Float32ToStringAddBCD( 10, 70160 );                    // [10] 0x00011210
      return;
    };
    _Float32ToStringAddBCD( 11, 423124992 );                  // [11] 0x19386000
    _Float32ToStringAddBCD( 10, 22021 );                      // [10] 0x00005605
    return;
  };
  if (e >= -148) {
    _Float32ToStringAddBCD( 11, 1500065792 );                 // [11] 0x59693000
    _Float32ToStringAddBCD( 10, 10242 );                      // [10] 0x00002802
    return;
  };
  _Float32ToStringAddBCD( 11, 696541184 );                    // [11] 0x29846000
  _Float32ToStringAddBCD( 10, 5121 );                         // [10] 0x00001401
};

//
// Recursively tests the MSB in significand 'm' with base exponent 'e'.
//
func void _Float32ToStringBase10( var int m, var int e )
{
  if (!m) {
  	return;
  };
  if (m & 8388608) {                                    // 0x00800000
    _Float32ToStringAddBit( e );
  };
  _Float32ToStringBase10( (m & 8388607) << 1, e - 1 );  // 0x007FFFFF
};

//
// Returns the position [0,95] of the most significant digit, starting at 'i'.
//
func int _Float32ToStringGetPos( var int i )
{
  var int a;

  /** /// Unit testing
  if ((i < 0) || (i > 11)) {
    PrintDebug( ConcatStrings( "Float32ToString: GetPos invalid i = ", IntToString( i ) ) );
    return 0;
  };
  /**/
  a = _Float32ToStringGetBCD( i );
  if (!a) {
    return _Float32ToStringGetPos( i + 1 );
  };
  return (i * 8) + PackedBcdLH0Count( a );
};

//
// Returns the BCD string from the positions [p,q].
//
func string _Float32ToStringGetStr( var int p, var int q )
{
  var string s;

  /** /// Unit testing
  if ((p < 0) || (p > 95)) {
    PrintDebug( ConcatStrings( "Float32ToString: GetStr invalid p = ", IntToString( p ) ) );
    return "?";
  };
  /**/
  // Note: An negativ 'q' is used as internal recursion detection!
  if (q < 0) {
    q = -q;
  } else {
  	s = "";
  };
  s = ConcatStrings( s, IntToString(
    (_Float32ToStringGetBCD( p / 8 ) >> ((7 - (p % 8)) * 4)) & 15 ) );
  if (p >= q) {
    return s;
  };
  _Float32ToStringGetStr( p + 1, -q );
};

//
// Convert an IEEE binary32 floating point 'a' to a string.
//
func string Float32ToString( var int a )
{
  var int m;
  var int e;
  var int n;
  var int x;
  var string s;

  m = a & 8388607;              // 0x007FFFFF
  e = ((a >> 23) & 255) - 127;  // 0x7F800000 - base
  n = (a < 0);                  // 0x80000000
  s = _Float32ToStringPrefix( n );
  if (e == 128) {
    if (m) {
      return "NaN";
    };
    return ConcatStrings( s, "Infinity" );
  };
  if (e == -127) {
    if (m == 0) {
      s = ConcatStrings( s, IntToString( 0 ) );
      s = ConcatStrings( s, "." );
      return ConcatStrings( s, IntToString( 0 ) );
    };
    // Subnormal: (-1)**Sign * (0.Significand / 2**23) * 2**(1-127)
    e = -126;
  } else {
  	// Normal: (-1)**Sign * (1.Significand / 2**23) * 2**(Exponent)
  	m = m | 8388608;  // 0x00800000
  };
  _Float32ToStringClrBCD( 0, 11 );
  _Float32ToStringBase10( m, e );
  m = _Float32ToStringGetPos( 0 );
  //TODO: [NicoDE] Add 1 to the 8-th digit if the 9-th is >= 5.
  // (And - of course - retrieve the new start position again!)
  e = m / 8;
  x = m % 8;
  n = (m + 7) - x;
  x *= 4;
  n -= PackedBcdRH0Count( _Float32ToStringGetBCD( e ) >> x );
  if (x) {
    e = _Float32ToStringGetBCD( e + 1 ) >> (32 - x);
    if (e) {
      n = (m + 7) - PackedBcdRH0Count( e );
    };
  };
  if ((m <= 31) || (n >= 48)) {
    e = m;
  } else {
    e = 39;
    if (m > 39) {
      m = 39;
    };
    if (n < 40) {
      n = 40;
    };
  };
  s = ConcatStrings( s, _Float32ToStringGetStr( m, e ) );
  s = ConcatStrings( s, "." );
  s = ConcatStrings( s, _Float32ToStringGetStr( e + 1, n ) );
  e -= 39;
  if (e) {
    s = ConcatStrings( s, "E" );
    s = ConcatStrings( s, IntToString( -e ) );
  };
  return s;
};

