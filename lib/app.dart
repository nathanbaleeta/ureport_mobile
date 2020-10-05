import 'package:flutter/material.dart';
import 'package:ureport_app/stories/StoryListView.dart';

class TabScreen extends StatefulWidget {
  TabScreen({Key key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Text('Polls'),
    StoryListView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.equalizer),
            title: Text('Poll'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('Stories'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
        SliverAppBar(
          leadingWidth: 100,
          leading: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
            IconButton(
              icon: Image.asset('assets/UIcon.png'),
              onPressed: () {},
            ),
                InkWell(
                    child:SizedBox(
                      height: 20,
                      width:30,
                      child: Container(
                        decoration: BoxDecoration(
                        color: Colors.blue,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(1.0),
                          child:Text(
                            'ENG',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Colors.white,

                            ),

                          ),
                        )

                    )
                  ),
                )
          ]),

          title: Text('U-Report',
          style: TextStyle(color: Colors.black)),
          centerTitle: true,
          floating: true,
          pinned: false,
          snap: false,
          backgroundColor: Colors.grey[50],


          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              tooltip: 'Settings',
              onPressed: (){},
            ),
          ],
        ),


        SliverFillRemaining(
          child: _widgetOptions.elementAt(_selectedIndex),

        ),
        ],



      ),


    );
  }
}
//Center(child: _widgetOptions.elementAt(_selectedIndex),
//         ),

// appBar: AppBar(
// title: const Text('U-Report',
// style: TextStyle(color: Colors.black)),
// backgroundColor: Colors.grey[400],
// ),