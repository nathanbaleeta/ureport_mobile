import 'package:flutter/material.dart';


//Original/main theme data
class AppTheme {
  static ThemeData getAppTheme(){
    return ThemeData(
        primaryColorDark: HexColor('#000000'), //black boxes
        primaryColorLight: HexColor('#FFD100'), //yellow boxes
        backgroundColor: HexColor('#FFFFFF'), //white background
        accentColor: HexColor('#43B3F2'), //blue boxes
        bottomAppBarColor: HexColor('#FFFFFF'), //white bottom appbar
        primaryTextTheme: TextTheme(
          headline1: TextStyle(color:HexColor('#FFFFFF')),//white text
          subtitle1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 20.0, fontWeight: FontWeight.w500),//headings for polls+categories
          bodyText1: TextStyle(color:HexColor('#000000'), fontSize: 14.0, fontWeight: FontWeight.w500)
        ),

    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}