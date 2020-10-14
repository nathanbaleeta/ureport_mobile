import 'package:ureport_app/theme/theme_notifier.dart';
import 'package:ureport_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ureport_app/theme/theme_notifier.dart';
import 'package:provider/provider.dart';

class ThemeChangerPage extends StatelessWidget {
  var _mainTheme = true;

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return Scaffold(
        body:
        Container(
            child: GridView.count(
            crossAxisCount: 5,
            children: <Widget>[
              Container(
                child: IconButton(
                    icon: Image.asset('assets/argentina.png'), onPressed: () {}),
              ),
              Container(
                child: IconButton(
                    icon: Image.asset('assets/bangladesh.png'), onPressed: () {}),
              ),
              Container(
                child: IconButton(
                    icon: Image.asset('assets/belize.png'),
                    onPressed: () {
                      themeNotifier.setTheme(belizeTheme);
                    }),
              ),
              Container(
                child: IconButton(
                    icon: Image.asset('assets/bolvia.png'), onPressed: () {}),
              ),
              Container(
                child: IconButton(
                    icon: Image.asset('assets/bosnia_and_herzegovina.png'),
                    onPressed: () {}),
              ),
              Container(
                child: IconButton(
                    icon: Image.asset('assets/botswana.png'), onPressed: () {}),
              ),
              Container(
                child: IconButton(
                    icon: Image.asset('assets/brasil.png'), onPressed: () {}),
              ),
              Container(
                child: IconButton(
                    icon: Image.asset('assets/bulgaria.png'), onPressed: () {}),
              ),
              Container(
                child: IconButton(
                    icon: Image.asset('assets/burkina_faso.png'), onPressed: () {}),
              ),
              Container(
                child: IconButton(
                    icon: Image.asset('assets/burundi.png'), onPressed: () {}),
              ),
              Container(
                child: IconButton(
                    icon: Image.asset('assets/cameroun.png'), onPressed: () {}),
              ),
              Container(
                child: IconButton(
                    icon: Image.asset('assets/republique_centrafricaine.png'),
                    onPressed: () {}),
              ),
              Container(
                child: IconButton(
                    icon: Image.asset('assets/chile.png'), onPressed: () {}),
              ),
              Container(
                child: IconButton(
                    icon: Image.asset('assets/congo_brazzaville.png'),
                    onPressed: () {}),
              ),
              Container(
                child: Transform.scale(
                  scale: 0.67,
                  child: IconButton(
                    icon: Image.asset('assets/lebanon.png'), onPressed: () {
                       themeNotifier.setTheme(lebanonTheme);
                    }),
          ),
        ),
      ],
    )));
  }
}
