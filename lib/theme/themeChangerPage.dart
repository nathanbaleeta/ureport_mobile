
import 'package:ureport_app/theme/themeNotifier.dart';
import 'package:ureport_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class ThemeChangerPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: new Stack(
            children: [
              Positioned.fill(
               child: Image.asset(
                 "assets/appBarBackground.png",
                 repeat: ImageRepeat.repeatY,
                ),
              ),
               Scaffold(
                   backgroundColor: Colors.transparent,
                    appBar: AppBar(
                     title: Text("Your Country", style: TextStyle(color: Colors.black, fontSize: 30),),
                     centerTitle: true,
                     backgroundColor: Colors.transparent,
                     elevation: 0,
                     leading: new Container(),
                     actions: [
                       IconButton(
                           icon: Icon(Icons.close),
                           onPressed: () {
                             Navigator.pop(context);
                           }
                       )
                     ]
                 ),
                 body:  Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(15.0),
                       child: Container(
                         width: width,
                         height: height/6,
                         decoration: BoxDecoration(
                           color: Theme.of(context).accentColor,
                            ),
                       child:
                          Row(children: [
                            Expanded(child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(themeNotifier.icon),
                                          fit: BoxFit.fill))
                              ),
                            )
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                              child: Container(
                                  child: Column(children: [
                                    Text('U-Report', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 50),),
                                    Text('Select Your Country Below', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 14))
                                  ],
                              )),
                            )
                          ],),
                       ),
                     ),
                     Container(
                         child: Expanded(child: gridIcons(themeNotifier, context))
                     ),
                   ],
                 )
               )
            ],
        )
    );
  }

  Widget gridIcons(ThemeNotifier themeNotifier, BuildContext context) {
    return new Container(
        child: GridView.count(
          controller: new ScrollController(keepScrollOffset: false),
          crossAxisCount: 5,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/afghanistan.png'), onPressed: () {
                      themeNotifier.setTheme(afghanistanTheme, 'assets/afghanistan.png');
                    }),
                  ),
                  FittedBox( fit: BoxFit.fitWidth,
                    child: Text('Afghanistan', textAlign: TextAlign.center, style:
                    Theme.of(context).textTheme.bodyText1,),
                  )
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/argentina.png'), onPressed: () {
                      themeNotifier.setTheme(argentinaTheme, 'assets/argentina.png');
                    }),
                  ),
                  Text('Argentina', textAlign: TextAlign.center, style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/bangladesh.png'), onPressed: () {
                      themeNotifier.setTheme(bangladeshTheme, 'assets/bangladesh.png');
                    }),
                  ),
                  FittedBox(fit:BoxFit.fitWidth,
                    child: Text('Bangladesh', textAlign: TextAlign.center, style:
                    Theme.of(context).textTheme.bodyText1,),
                  )
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/barbados.png'), onPressed: () {
                      themeNotifier.setTheme(barbadosTheme, 'assets/barbados.png');
                    }),
                  ),
                  Text('Barbados', textAlign: TextAlign.center, style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/belize.png'),
                        onPressed: () {
                          themeNotifier.setTheme(belizeTheme,'assets/belize.png');
                        }),
                  ),
                  Text('Belize',textAlign: TextAlign.center, style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/bolivia.png'), onPressed: () {
                      themeNotifier.setTheme(boliviaTheme,'assets/bolivia.png');
                    }),
                  ),
                  Text('Bolivia',textAlign: TextAlign.center, style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/bosnia_and_herzegovina.png'),
                        onPressed: () {
                          themeNotifier.setTheme(bosAndHerz,'assets/bosnia_and_herzegovina.png');
                        }),
                  ),

                    Expanded(
                      child: Text('Bosnia and Herzegovina',textAlign: TextAlign.center, style:
                  Theme.of(context).textTheme.bodyText1,),
                    )

                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/botswana.png'), onPressed: () {
                      themeNotifier.setTheme(botswana,'assets/botswana.png');
                    }),
                  ),
                  Text('Botswana',textAlign: TextAlign.center, style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/brasil.png'), onPressed: () {
                      themeNotifier.setTheme(brasil,'assets/brasil.png');
                    }),
                  ),
                  Text('Brasil',textAlign: TextAlign.center, style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/bulgaria.png'), onPressed: () {
                          themeNotifier.setTheme(bulgaria,'assets/bulgaria.png');
                    }),
                  ),
                  Text('Bulgaria',textAlign: TextAlign.center, style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/burkina_faso.png'),
                        onPressed: () {
                          themeNotifier.setTheme(burkinaFaso,'assets/burkina_faso.png');
                        }),
                  ),
                    FittedBox(fit:BoxFit.fitWidth,
                      child:
                          Text('Burkina Faso',textAlign: TextAlign.center,style:
                  Theme.of(context).textTheme.bodyText1,))
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/burundi.png'), onPressed: () {
                      themeNotifier.setTheme(burundi,'assets/burundi.png');
                    }),
                  ),
                  Text('Burundi', textAlign: TextAlign.center,style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/cameroun.png'), onPressed: () {
                      themeNotifier.setTheme(cameroun,'assets/cameroun.png');
                    }),
                  ),
                  Text('Cameroun',textAlign: TextAlign.center, style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/republique_centrafricaine.png'),
                        onPressed: () {
                          themeNotifier.setTheme(republicOfCentralAfrica, 'assets/republique_centrafricaine.png');
                        }),
                  ),
              Expanded(
              child:
                  Text('Republique Centrafricaine',textAlign: TextAlign.center, style:
                  Theme.of(context).textTheme.bodyText1,)
              )
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/chile.png'),
                        onPressed: () {
                          themeNotifier.setTheme(chile,'assets/chile.png');
                        }),
                  ),
                  Text('Chile',textAlign: TextAlign.center, style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/congo_brazzaville.png'),
                        onPressed: () {
                          themeNotifier.setTheme(congoBrazzaville,'assets/congo_brazzaville.png');
                        }),
                  ),
                  Expanded(
                     child:Text('Congo Brazzaville',textAlign: TextAlign.center, style:
                  Theme.of(context).textTheme.bodyText1,)
                  )
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/costa_rica.png'),
                        onPressed: () {
                          themeNotifier.setTheme(costaRica,'assets/costa_rica.png');
                        }),
                  ),
                  Text('Costa Rica',textAlign: TextAlign.center, style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/cote_divoire.png'),
                        onPressed: () {
                          themeNotifier.setTheme(coteDivoire,'assets/cote_divoire.png');
                        }),
                  ),
                FittedBox(fit:BoxFit.fitWidth,
                child:
                  Text('Cote D\'Ivoire',textAlign: TextAlign.center, style:
                  Theme.of(context).textTheme.bodyText1,))
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/croatia.png'),
                        onPressed: () {
                          themeNotifier.setTheme(croatia,'assets/croatia.png');
                        }),
                  ),
                  Text('Croatia', textAlign: TextAlign.center, style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/rd_congo.png'),
                        onPressed: () {
                          themeNotifier.setTheme(rdCongo,'assets/rd_congo.png');
                        }),
                  ),
                  Text('RD Congo',textAlign: TextAlign.center, style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),

            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/ecuador.png'),
                        onPressed: () {
                          themeNotifier.setTheme(ecuador,'assets/ecuador.png');
                        }),
                  ),
                  Text('Ecuador',textAlign: TextAlign.center, style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/el_salvador.png'),
                        onPressed: () {
                          themeNotifier.setTheme(elSalvador,'assets/el_salvador.png');
                        }),
                  ),
              FittedBox(fit:BoxFit.fitWidth,
              child:
                  Text('El Salvador', textAlign: TextAlign.center,style:
                  Theme.of(context).textTheme.bodyText1,))
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/eswatini.png'),
                        onPressed: () {
                          themeNotifier.setTheme(eswatini,'assets/eswatini.png');
                        }),
                  ),
                  Text('Eswatini', textAlign: TextAlign.center,style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),

            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/france.png'),
                        onPressed: () {
                          themeNotifier.setTheme(france,'assets/france.png');
                        }),
                  ),
                  Text('France', textAlign: TextAlign.center,style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/fsm.png'),
                        onPressed: () {
                          themeNotifier.setTheme(fsm,'assets/fsm.png');
                        }),
                  ),
                  Text('FSM', textAlign: TextAlign.center,style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/the_gambia.png'),
                        onPressed: () {
                          themeNotifier.setTheme(theGambia,'assets/the_gambia.png');
                        }),
                  ),
                  FittedBox(fit:BoxFit.fitWidth,
                    child: Text('The Gambia',textAlign: TextAlign.center, style:
                    Theme.of(context).textTheme.bodyText1,),
                  )
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/ghana.png'),
                        onPressed: () {
                          themeNotifier.setTheme(ghana,'assets/ghana.png');
                        }),
                  ),
                  Text('Ghana', textAlign: TextAlign.center,style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/guatemala.png'),
                        onPressed: () {
                          themeNotifier.setTheme(guatemala,'assets/guatemala.png');
                        }),
                  ),
                  Text('Guatemala', textAlign: TextAlign.center,style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/guinee.png'),
                        onPressed: () {
                          themeNotifier.setTheme(guinee,'assets/guinee.png');
                        }),
                  ),
                  Text('Guinee',textAlign: TextAlign.center, style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/haiti.png'),
                        onPressed: () {
                          themeNotifier.setTheme(haiti,'assets/guatemala.png');
                        }),
                  ),
                  Text('Haiti', textAlign: TextAlign.center,style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/honduras.png'),
                        onPressed: () {
                          themeNotifier.setTheme(honduras,'assets/honduras.png');
                        }),
                  ),
                  Text('Honduras',textAlign: TextAlign.center, style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/india.png'),
                        onPressed: () {
                          themeNotifier.setTheme(india,'assets/india.png');
                        }),
                  ),
                  Text('India', textAlign: TextAlign.center,style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/lebanon.png'),
                        onPressed: () {
                          themeNotifier.setTheme(lebanonTheme,'assets/lebanon.png');
                        }),
                  ),
                  Text('Lebanon',textAlign: TextAlign.center, style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),

          ],
        ));
  }


}
