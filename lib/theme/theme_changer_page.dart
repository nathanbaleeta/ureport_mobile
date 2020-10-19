
import 'package:ureport_app/theme/theme_notifier.dart';
import 'package:ureport_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class ThemeChangerPage extends StatelessWidget {
  var _mainTheme = true;

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
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
                     title: Text("Your Country"),
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
                 body:  Container(
                     child: gridIcons(themeNotifier, context)
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
                        icon: Image.asset('assets/argentina.png'), onPressed: () {}),
                  ),
                  Text('Argentina', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/bangladesh.png'), onPressed: () {}),
                  ),
                  Text('Bangladesh', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/belize.png'),
                        onPressed: () {
                          themeNotifier.setTheme(belizeTheme);
                        }),
                  ),
                  Text('Belize', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/bolivia.png'), onPressed: () {}),
                  ),
                  Text('Bolivia', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/bosnia_and_herzegovina.png'),
                        onPressed: () {}),
                  ),
                  FittedBox(fit:BoxFit.fitWidth,
                    child:
                    Text('Bosnia and Herzegovina', style:
                  Theme.of(context).textTheme.bodyText1,),)

                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/botswana.png'), onPressed: () {}),
                  ),
                  Text('Botswana', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/brasil.png'), onPressed: () {}),
                  ),
                  Text('Brasil', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/bulgaria.png'), onPressed: () {}),
                  ),
                  Text('Bulgaria', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/burkina_faso.png'),
                        onPressed: () {}),
                  ),
                    FittedBox(fit:BoxFit.fitWidth,
                      child:
                          Text('Burkina Faso', style:
                  Theme.of(context).textTheme.bodyText1,))
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/burundi.png'), onPressed: () {}),
                  ),
                  Text('Burundi', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/cameroun.png'), onPressed: () {}),
                  ),
                  Text('Cameroun', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/republique_centrafricaine.png'),
                        onPressed: () {}),
                  ),
              FittedBox(fit:BoxFit.fitWidth,
              child:
                  Text('Republique Centrafricaine', style:
                  Theme.of(context).textTheme.bodyText1,)
              )
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/chile.png'),
                        onPressed: () {}),
                  ),
                  Text('Chile', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/congo_brazzaville.png'),
                        onPressed: () {}),
                  ),
                  FittedBox(fit:BoxFit.fitWidth,
                     child:Text('Congo Brazzaville', style:
                  Theme.of(context).textTheme.bodyText1,)
                  )
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/costa_rica.png'),
                        onPressed: () {}),
                  ),
                  Text('Costa Rica', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/cote_divoire.png'),
                        onPressed: () {}),
                  ),
                FittedBox(fit:BoxFit.fitWidth,
                child:
                  Text('Cote D\'Ivoire', style:
                  Theme.of(context).textTheme.bodyText1,))
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/croatia.png'),
                        onPressed: () {}),
                  ),
                  Text('Croatia', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/rd_congo.png'),
                        onPressed: () {}),
                  ),
                  Text('RD Congo', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),

            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/ecuador.png'),
                        onPressed: () {}),
                  ),
                  Text('Ecuador', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/el_salvador.png'),
                        onPressed: () {}),
                  ),
              FittedBox(fit:BoxFit.fitWidth,
              child:
                  Text('El Salvador', style:
                  Theme.of(context).textTheme.bodyText1,))
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/eswatini.png'),
                        onPressed: () {}),
                  ),
                  Text('Eswatini', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),

            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/france.png'),
                        onPressed: () {}),
                  ),
                  Text('France', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/fsm.png'),
                        onPressed: () {}),
                  ),
                  Text('FSM', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/the_gambia.png'),
                        onPressed: () {}),
                  ),
                  Text('The Gambia', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/ghana.png'),
                        onPressed: () {}),
                  ),
                  Text('Ghana', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/guatemala.png'),
                        onPressed: () {}),
                  ),
                  Text('Guatemala', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/guinee.png'),
                        onPressed: () {}),
                  ),
                  Text('Guinee', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/haiti.png'),
                        onPressed: () {}),
                  ),
                  Text('Haiti', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/honduras.png'),
                        onPressed: () {}),
                  ),
                  Text('Honduras', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/india.png'),
                        onPressed: () {}),
                  ),
                  Text('India', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            Column(
                children: <Widget>[
                  Container(
                    child: IconButton(
                        icon: Image.asset('assets/lebanon.png'),
                        onPressed: () {
                          themeNotifier.setTheme(lebanonTheme);
                        }),
                  ),
                  Text('Lebanon', style:
                  Theme.of(context).textTheme.bodyText1,)
                ]
            ),
            // Column(
            //     children: <Widget>[
            //
            //       Text('', style:
            //       Theme.of(context).textTheme.bodyText1,)
            //     ]
            // ),            Column(
            //     children: <Widget>[
            //
            //       Text('', style:
            //       Theme.of(context).textTheme.bodyText1,)
            //     ]
            // ),





          ],
        ));
  }


}

// Column(
// children: <Widget>[
//
// Text('', style:
// Theme.of(context).textTheme.bodyText1,)
// ]
// ),
