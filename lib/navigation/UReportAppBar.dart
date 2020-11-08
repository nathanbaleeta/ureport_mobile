import 'package:flutter/material.dart';
import 'package:ureport_app/theme/theme_changer_page.dart';

class UReportAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SliverAppBar(
      leadingWidth: 100,
      leading: Row(mainAxisSize: MainAxisSize.max, children: [
        IconButton(
          icon: Image.asset('lib/media/LargeUreportIcon.png'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ThemeChangerPage()),
            );
          },
        ),
        InkWell(
            child: SizedBox(
          height: 20,
          width: 30,
          child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
              ),
              child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
                    'ENG',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Theme.of(context).backgroundColor,
                    ),
                  ))),
        ))
      ]),
      title: Text('', style: TextStyle(color: Colors.black)),
      centerTitle: false,
      floating: true,
      pinned: false,
      snap: false,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/media/appBarBackground.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.settings),
          tooltip: 'Settings',
          onPressed: () {},
        ),
      ],
    );

    throw UnimplementedError();
  }
}
