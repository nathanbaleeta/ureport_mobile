import 'package:flutter/material.dart';
//Dynamic Theme Changes based on Country
final mainTheme = ThemeData(
  primarySwatch: Colors.amber,
  primaryColor: HexColor('#FFD100'),//yellow boxes
  brightness: Brightness.light,
  backgroundColor: HexColor('#FFFFFF'),//white background
  accentColor: HexColor('#43B3F2'),//blue boxes
  buttonColor: HexColor('#43B3F2'), //language button

  primaryIconTheme: IconThemeData(color: Colors.black), //icons
  primaryTextTheme: TextTheme(
      headline1: TextStyle(color:HexColor('#FFFFFF')),//white text
      subtitle1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 20.0, fontWeight: FontWeight.w500),//White text headings for polls+categories
      bodyText1: TextStyle(color:HexColor('#000000'), fontSize: 14.0, fontWeight: FontWeight.w500), //black text for stories
      subtitle2: TextStyle(color:HexColor('#43B3F2'), fontSize: 15.0, fontWeight: FontWeight.w500) //blue bottom nav bar text
  ),
);
final belizeTheme = ThemeData(
  primarySwatch: Colors.amber,
  primaryColor: HexColor('#FFD100'),//yellow boxes
  brightness: Brightness.light,
  backgroundColor: HexColor('#FFFFFF'),//white background
  accentColor: HexColor('#1C61CA'),//dark blue boxes
  buttonColor: HexColor('#E42B57'), //language button
  primaryIconTheme: IconThemeData(color: Colors.black), //icons
  primaryTextTheme: TextTheme(
      headline1: TextStyle(color:HexColor('#FFFFFF')),//white text
      subtitle1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 20.0, fontWeight: FontWeight.w500),//White text headings for polls+categories
      bodyText1: TextStyle(color:HexColor('#000000'), fontSize: 14.0, fontWeight: FontWeight.w500),//black text for stories
      subtitle2: TextStyle(color:HexColor('#E42B57'), fontSize: 10.0, fontWeight: FontWeight.w500)//pink bottom nav bar text
  ),
);

final lebanonTheme = ThemeData(
  primarySwatch: Colors.amber,
  primaryColor: HexColor('#FFD100'),//yellow boxes
  brightness: Brightness.light,
  backgroundColor: HexColor('#FFFFFF'),//white background
  accentColor: HexColor('#1EAA2C'),//green boxes
  buttonColor: HexColor('#1EAA2C'), //language button
  primaryIconTheme: IconThemeData(color: Colors.black), //icons
  primaryTextTheme: TextTheme(
      headline1: TextStyle(color:HexColor('#FFFFFF')),//white text
      subtitle1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 20.0, fontWeight: FontWeight.w500),//White text headings for polls+categories
      bodyText1: TextStyle(color:HexColor('#000000'), fontSize: 14.0, fontWeight: FontWeight.w500), //black text for stories
      subtitle2: TextStyle(color:HexColor('#1EAA2C'), fontSize: 10.0, fontWeight: FontWeight.w500) //green bottom nav bar text
  ),
);







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