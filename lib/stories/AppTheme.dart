import 'package:flutter/material.dart';

class AppTheme {

    static ThemeData getAppTheme() {
        return ThemeData( //National Day
            primaryColorDark: HexColor('#D32F2F'),
            primaryColorLight: HexColor('#FFCDD2'),
            primaryColor: HexColor('#F44336'),
            accentColor: Colors.redAccent,
            backgroundColor: HexColor('#FFFFFF'),
            scaffoldBackgroundColor: HexColor('#FFFFFF'),
            bottomAppBarColor: HexColor('#D32F2F'),
            unselectedWidgetColor: Colors.grey,
            iconTheme: IconThemeData(color: HexColor('#FFFFFF')),
            dividerColor: HexColor('#BDBDBD'),
            secondaryHeaderColor: HexColor('#757575'),
            primaryTextTheme: TextTheme(
                headline1: TextStyle(color:HexColor('#212121')),
                subtitle1: TextStyle(color:HexColor('#757575'), fontSize: 14.0),
                bodyText1: TextStyle(color:HexColor('#212121'))
            ),
            textTheme: TextTheme(bodyText1: TextStyle(color:HexColor('#FFFFFF'))),
            fontFamily: 'Roboto'
        );
    }

    static PreferredSizeWidget getAppBarTheme({name, context}) {
        return AppBar(
            title: Text(name),
            backgroundColor: AppTheme.getAppTheme().backgroundColor,
            centerTitle: false,
            leading: GestureDetector(
                child: Icon(Icons.arrow_back),
                onTap: () {
                    Navigator.of(context).pop();
                },
            )
        );
    }

    static PreferredSizeWidget getAppBarMainPageTheme({name}) {
        return AppBar(
            title: Text(name),
            backgroundColor: AppTheme.getAppTheme().primaryColor,
            centerTitle: true
        );
    }

    static TextStyle getTitleTextStyle(){
        return TextStyle(
            fontSize: 24,
            fontFamily: 'Roboto',
            color: Colors.black
        );
    }

    static TextStyle getDetailsPageTitleTextStyle(){
        return TextStyle(
            fontSize: 24,
            fontFamily: 'Roboto',
            color: AppTheme.getAppTheme().primaryColor
        );
    }

    static TextStyle getMessageTextStyle(){
        return TextStyle(
            fontSize: 14,
            fontFamily: 'Roboto',
            color: Colors.white
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

    static Color fromHex(String hexString) {
        final buffer = StringBuffer();
        if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
        buffer.write(hexString.replaceFirst('#', ''));
        return Color(int.parse(buffer.toString(), radix: 16));
    }

    HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}