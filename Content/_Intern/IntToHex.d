////////////////////////////////////////////////////////////////////////////////
//
//  Convert an int into hexadecimal strings with 1|2|4|8 siginificant digits.
//  Copyright (c) 2009 Nico Bendlin <nicode@gmx.net>, Legal: WTFPL Version 2.
//
////////////////////////////////////////////////////////////////////////////////

func string NibbleToHex( var int a )
{
  a = a & 15;
  if (a <= 9) {
    return IntToString( a );
  };
  if (a >= 13) {
    if (a >= 14) {
      if (a >= 15) {
        return "F";
      };
      return "E";
    };
    return "D";
  };
  if (a >= 11) {
    if (a >= 12) {
      return "C";
    };
    return "B";
  };
  return "A";
};

func string ByteToHex( var int a )
{
  var string s;

  s = NibbleToHex( a );
  return ConcatStrings( NibbleToHex( a >> 4 ), s );
};

func string WordToHex( var int a )
{
  var string s;

  s = ByteToHex( a );
  return ConcatStrings( ByteToHex( a >> 8 ), s );
};

func string IntToHex( var int a )
{
  var string s;

  s = WordToHex( a );
  return ConcatStrings( WordToHex( a >> 16 ), s );
};

