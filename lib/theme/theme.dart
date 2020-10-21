import 'package:flutter/material.dart';
//Dynamic Theme Changes based on Country
//changing subtitle and accent color
final mainTheme = ThemeData(
  primarySwatch: Colors.amber,
  primaryColor: HexColor('#FFD100'),//yellow boxes
  brightness: Brightness.light,
  backgroundColor: HexColor('#FFFFFF'),//white background
  accentColor: HexColor('#43B3F2'),//blue boxes

  primaryIconTheme: IconThemeData(color: Colors.black), //icons
  primaryTextTheme: TextTheme(
      headline1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 30.0, fontWeight: FontWeight.w500),//white text
      subtitle1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 20.0, fontWeight: FontWeight.w500),//White text headings for polls+categories
      bodyText1: TextStyle(color:HexColor('#000000'), fontSize: 12.0, fontWeight: FontWeight.w500), //black text for stories
      subtitle2: TextStyle(color:HexColor('#43B3F2'), fontSize: 15.0, fontWeight: FontWeight.w500) //blue bottom nav bar text
  ),
);
final belizeTheme = ThemeData(
  primarySwatch: Colors.amber,
  primaryColor: HexColor('#FFD100'),//yellow boxes
  brightness: Brightness.light,
  backgroundColor: HexColor('#FFFFFF'),//white background
  accentColor: HexColor('#1C61CA'),//dark blue boxes
  primaryIconTheme: IconThemeData(color: Colors.black), //icons
  primaryTextTheme: TextTheme(
      headline1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 30.0, fontWeight: FontWeight.w500),//white text
      subtitle1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 20.0, fontWeight: FontWeight.w500),//White text headings for polls+categories
      bodyText1: TextStyle(color:HexColor('#000000'), fontSize: 12.0, fontWeight: FontWeight.w500),//black text for stories
      subtitle2: TextStyle(color:HexColor('#E42B57'), fontSize: 10.0, fontWeight: FontWeight.w500)//pink bottom nav bar text
  ),
);

final lebanonTheme = ThemeData(
  primarySwatch: Colors.amber,
  primaryColor: HexColor('#FFD100'),//yellow boxes
  brightness: Brightness.light,
  backgroundColor: HexColor('#FFFFFF'),//white background
  accentColor: HexColor('#1EAA2C'),//green boxes
  primaryIconTheme: IconThemeData(color: Colors.black), //icons
  primaryTextTheme: TextTheme(
      headline1: TextStyle(color:HexColor('#FFFFFF'),fontSize: 30.0, fontWeight: FontWeight.w500),//white text
      subtitle1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 20.0, fontWeight: FontWeight.w500),//White text headings for polls+categories
      bodyText1: TextStyle(color:HexColor('#000000'), fontSize: 12.0, fontWeight: FontWeight.w500), //black text for stories
      subtitle2: TextStyle(color:HexColor('#1EAA2C'), fontSize: 10.0, fontWeight: FontWeight.w500) //green bottom nav bar text
  ),
);

final afghanistanTheme = ThemeData(
  primarySwatch: Colors.amber,
  primaryColor: HexColor('#FFD100'),//yellow boxes
  brightness: Brightness.light,
  backgroundColor: HexColor('#FFFFFF'),//white background
  accentColor: HexColor('#1EAA2C'),//green boxes
  primaryIconTheme: IconThemeData(color: Colors.black), //icons
  primaryTextTheme: TextTheme(
      headline1: TextStyle(color:HexColor('#FFFFFF'),fontSize: 30.0, fontWeight: FontWeight.w500),//white text
      subtitle1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 20.0, fontWeight: FontWeight.w500),//White text headings for polls+categories
      bodyText1: TextStyle(color:HexColor('#000000'), fontSize: 12.0, fontWeight: FontWeight.w500), //black text for stories
      subtitle2: TextStyle(color:HexColor('#1EAA2C'), fontSize: 10.0, fontWeight: FontWeight.w500) //green bottom nav bar text
  ),
);

final argentinaTheme = ThemeData(
  primarySwatch: Colors.amber,
  primaryColor: HexColor('#FFD100'),//yellow boxes
  brightness: Brightness.light,
  backgroundColor: HexColor('#FFFFFF'),//white background
  accentColor: HexColor('#43B3F2'),//blue boxes
  primaryIconTheme: IconThemeData(color: Colors.black), //icons
  primaryTextTheme: TextTheme(
      headline1: TextStyle(color:HexColor('#FFFFFF'),fontSize: 30.0, fontWeight: FontWeight.w500),//white text
      subtitle1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 20.0, fontWeight: FontWeight.w500),//White text headings for polls+categories
      bodyText1: TextStyle(color:HexColor('#000000'), fontSize: 12.0, fontWeight: FontWeight.w500), //black text for stories
      subtitle2: TextStyle(color:HexColor('#43B3F2'), fontSize: 10.0, fontWeight: FontWeight.w500) //blue bottom nav bar text
  ),
);

final bangladeshTheme = ThemeData(
  primarySwatch: Colors.amber,
  primaryColor: HexColor('#FFD100'),//yellow boxes
  brightness: Brightness.light,
  backgroundColor: HexColor('#FFFFFF'),//white background
  accentColor: HexColor('#1EAA2C'),//green boxes
  primaryIconTheme: IconThemeData(color: Colors.black), //icons
  primaryTextTheme: TextTheme(
      headline1: TextStyle(color:HexColor('#FFFFFF'),fontSize: 30.0, fontWeight: FontWeight.w500),//white text
      subtitle1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 20.0, fontWeight: FontWeight.w500),//White text headings for polls+categories
      bodyText1: TextStyle(color:HexColor('#000000'), fontSize: 12.0, fontWeight: FontWeight.w500), //black text for stories
      subtitle2: TextStyle(color:HexColor('#E42B57'), fontSize: 10.0, fontWeight: FontWeight.w500) //pink bottom nav bar text
  ),
);

final barbadosTheme = ThemeData(
  primarySwatch: Colors.amber,
  primaryColor: HexColor('#FFD100'),//yellow boxes
  brightness: Brightness.light,
  backgroundColor: HexColor('#FFFFFF'),//white background
  accentColor: HexColor('#1C61CA'),//dark blue boxes
  primaryIconTheme: IconThemeData(color: Colors.black), //icons
  primaryTextTheme: TextTheme(
      headline1: TextStyle(color:HexColor('#FFFFFF'),fontSize: 30.0, fontWeight: FontWeight.w500),//white text
      subtitle1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 20.0, fontWeight: FontWeight.w500),//White text headings for polls+categories
      bodyText1: TextStyle(color:HexColor('#000000'), fontSize: 12.0, fontWeight: FontWeight.w500), //black text for stories
      subtitle2: TextStyle(color:HexColor('#1C61CA'), fontSize: 10.0, fontWeight: FontWeight.w500) //dark blue bottom nav bar text
  ),
);

final boliviaTheme = ThemeData(
  primarySwatch: Colors.amber,
  primaryColor: HexColor('#FFD100'),//yellow boxes
  brightness: Brightness.light,
  backgroundColor: HexColor('#FFFFFF'),//white background
  accentColor: HexColor('#1CB5A6'),//turquoise green boxes
  primaryIconTheme: IconThemeData(color: Colors.black), //icons
  primaryTextTheme: TextTheme(
      headline1: TextStyle(color:HexColor('#FFFFFF'),fontSize: 30.0, fontWeight: FontWeight.w500),//white text
      subtitle1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 20.0, fontWeight: FontWeight.w500),//White text headings for polls+categories
      bodyText1: TextStyle(color:HexColor('#000000'), fontSize: 12.0, fontWeight: FontWeight.w500), //black text for stories
      subtitle2: TextStyle(color:HexColor('#1CB5A6'), fontSize: 10.0, fontWeight: FontWeight.w500) //turquoise bottom nav bar text
  ),
);

final bosAndHerz = ThemeData(
  primarySwatch: Colors.amber,
  primaryColor: HexColor('#FFD100'),//yellow boxes
  brightness: Brightness.light,
  backgroundColor: HexColor('#FFFFFF'),//white background
  accentColor: HexColor('#0B53B2'),//blue green boxes
  primaryIconTheme: IconThemeData(color: Colors.black), //icons
  primaryTextTheme: TextTheme(
      headline1: TextStyle(color:HexColor('#FFFFFF'),fontSize: 30.0, fontWeight: FontWeight.w500),//white text
      subtitle1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 20.0, fontWeight: FontWeight.w500),//White text headings for polls+categories
      bodyText1: TextStyle(color:HexColor('#000000'), fontSize: 12.0, fontWeight: FontWeight.w500), //black text for stories
      subtitle2: TextStyle(color:HexColor('#0B53B2'), fontSize: 10.0, fontWeight: FontWeight.w500) //blue bottom nav bar text
  ),
);

final botswana = ThemeData(
  primarySwatch: Colors.amber,
  primaryColor: HexColor('#FFD100'),//yellow boxes
  brightness: Brightness.light,
  backgroundColor: HexColor('#FFFFFF'),//white background
  accentColor: HexColor('#43B3F2'),//light blue boxes
  primaryIconTheme: IconThemeData(color: Colors.black), //icons
  primaryTextTheme: TextTheme(
      headline1: TextStyle(color:HexColor('#FFFFFF'),fontSize: 30.0, fontWeight: FontWeight.w500),//white text
      subtitle1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 20.0, fontWeight: FontWeight.w500),//White text headings for polls+categories
      bodyText1: TextStyle(color:HexColor('#000000'), fontSize: 12.0, fontWeight: FontWeight.w500), //black text for stories
      subtitle2: TextStyle(color:HexColor('#0B53B2'), fontSize: 10.0, fontWeight: FontWeight.w500) //blue bottom nav bar text
  ),
);

final brasil = ThemeData(
  primarySwatch: Colors.amber,
  primaryColor: HexColor('#FFD100'),//yellow boxes
  brightness: Brightness.light,
  backgroundColor: HexColor('#FFFFFF'),//white background
  accentColor: HexColor('#209048'),//green background
  primaryIconTheme: IconThemeData(color: Colors.black), //icons
  primaryTextTheme: TextTheme(
      headline1: TextStyle(color:HexColor('#FFFFFF'),fontSize: 30.0, fontWeight: FontWeight.w500),//white text
      subtitle1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 20.0, fontWeight: FontWeight.w500),//White text headings for polls+categories
      bodyText1: TextStyle(color:HexColor('#000000'), fontSize: 12.0, fontWeight: FontWeight.w500), //black text for stories
      subtitle2: TextStyle(color:HexColor('#209048'), fontSize: 10.0, fontWeight: FontWeight.w500) //green bottom nav bar text
  ),
);

final bulgaria = ThemeData(
  primarySwatch: Colors.amber,
  primaryColor: HexColor('#FFD100'),//yellow boxes
  brightness: Brightness.light,
  backgroundColor: HexColor('#FFFFFF'),//white background
  accentColor: HexColor('#43B3F2'),//light blue background
  primaryIconTheme: IconThemeData(color: Colors.black), //icons
  primaryTextTheme: TextTheme(
      headline1: TextStyle(color:HexColor('#FFFFFF'),fontSize: 30.0, fontWeight: FontWeight.w500),//white text
      subtitle1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 20.0, fontWeight: FontWeight.w500),//White text headings for polls+categories
      bodyText1: TextStyle(color:HexColor('#000000'), fontSize: 12.0, fontWeight: FontWeight.w500), //black text for stories
      subtitle2: TextStyle(color:HexColor('#0B53B2'), fontSize: 10.0, fontWeight: FontWeight.w500) //dark blue bottom nav bar text
  ),
);

final burkinaFaso= ThemeData(
  primarySwatch: Colors.amber,
  primaryColor: HexColor('#FFD100'),//yellow boxes
  brightness: Brightness.light,
  backgroundColor: HexColor('#FFFFFF'),//white background
  accentColor: HexColor('#149924'),//green background
  primaryIconTheme: IconThemeData(color: Colors.black), //icons
  primaryTextTheme: TextTheme(
      headline1: TextStyle(color:HexColor('#FFFFFF'),fontSize: 30.0, fontWeight: FontWeight.w500),//white text
      subtitle1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 20.0, fontWeight: FontWeight.w500),//White text headings for polls+categories
      bodyText1: TextStyle(color:HexColor('#000000'), fontSize: 12.0, fontWeight: FontWeight.w500), //black text for stories
      subtitle2: TextStyle(color:HexColor('#E42B57'), fontSize: 10.0, fontWeight: FontWeight.w500) //pink bottom nav bar text
  ),
);

final burundi = ThemeData(
  primarySwatch: Colors.amber,
  primaryColor: HexColor('#FFD100'),//yellow boxes
  brightness: Brightness.light,
  backgroundColor: HexColor('#FFFFFF'),//white background
  accentColor: HexColor('#149924'), //green background
  primaryIconTheme: IconThemeData(color: Colors.black), //icons
  primaryTextTheme: TextTheme(
      headline1: TextStyle(color:HexColor('#FFFFFF'),fontSize: 30.0, fontWeight: FontWeight.w500),//white text
      subtitle1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 20.0, fontWeight: FontWeight.w500),//White text headings for polls+categories
      bodyText1: TextStyle(color:HexColor('#000000'), fontSize: 12.0, fontWeight: FontWeight.w500), //black text for stories
      subtitle2: TextStyle(color:HexColor('#E42B57'), fontSize: 10.0, fontWeight: FontWeight.w500) //pink bottom nav bar text
  ),
);

final cameroun = ThemeData(
  primarySwatch: Colors.amber,
  primaryColor: HexColor('#FFD100'),//yellow boxes
  brightness: Brightness.light,
  backgroundColor: HexColor('#FFFFFF'),//white background
  accentColor: HexColor('#149924'), //green background
  primaryIconTheme: IconThemeData(color: Colors.black), //icons
  primaryTextTheme: TextTheme(
      headline1: TextStyle(color:HexColor('#FFFFFF'),fontSize: 30.0, fontWeight: FontWeight.w500),//white text
      subtitle1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 20.0, fontWeight: FontWeight.w500),//White text headings for polls+categories
      bodyText1: TextStyle(color:HexColor('#000000'), fontSize: 12.0, fontWeight: FontWeight.w500), //black text for stories
      subtitle2: TextStyle(color:HexColor('#149924'), fontSize: 10.0, fontWeight: FontWeight.w500) //green bottom nav bar text
  ),
);

final republicOfCentralAfrica= ThemeData(
  primarySwatch: Colors.amber,
  primaryColor: HexColor('#FFD100'),//yellow boxes
  brightness: Brightness.light,
  backgroundColor: HexColor('#FFFFFF'),//white background
  accentColor: HexColor('#149924'), //green background
  primaryIconTheme: IconThemeData(color: Colors.black), //icons
  primaryTextTheme: TextTheme(
      headline1: TextStyle(color:HexColor('#FFFFFF'),fontSize: 30.0, fontWeight: FontWeight.w500),//white text
      subtitle1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 20.0, fontWeight: FontWeight.w500),//White text headings for polls+categories
      bodyText1: TextStyle(color:HexColor('#000000'), fontSize: 12.0, fontWeight: FontWeight.w500), //black text for stories
      subtitle2: TextStyle(color:HexColor('#E42B57'), fontSize: 10.0, fontWeight: FontWeight.w500) //pink bottom nav bar text
  ),
);

final chile = ThemeData(
  primarySwatch: Colors.amber,
  primaryColor: HexColor('#FFD100'),//yellow boxes
  brightness: Brightness.light,
  backgroundColor: HexColor('#FFFFFF'),//white background
  accentColor: HexColor('#0B53B2'), //blue background background
  primaryIconTheme: IconThemeData(color: Colors.black), //icons
  primaryTextTheme: TextTheme(
      headline1: TextStyle(color:HexColor('#FFFFFF'),fontSize: 30.0, fontWeight: FontWeight.w500),//white text
      subtitle1: TextStyle(color:HexColor('#FFFFFF'), fontSize: 20.0, fontWeight: FontWeight.w500),//White text headings for polls+categories
      bodyText1: TextStyle(color:HexColor('#000000'), fontSize: 12.0, fontWeight: FontWeight.w500), //black text for stories
      subtitle2: TextStyle(color:HexColor('#E42B57'), fontSize: 10.0, fontWeight: FontWeight.w500) //pink bottom nav bar text
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