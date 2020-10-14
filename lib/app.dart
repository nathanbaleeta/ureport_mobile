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
          // leadingWidth: 100,
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

          title: Text('',
          style: TextStyle(color: Colors.black)),
          centerTitle: false,
          floating: true,
          pinned: false,
          snap: false,
          flexibleSpace: Container(
            decoration:
            BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/appBarBackground.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,

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

class RegistrationScreen extends StatefulWidget {
  RegistrationScreen({Key key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  final myPhone = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myPhone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final phoneField = TextField(
      controller: myPhone,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Phone",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final signUpButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.yellow,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          print("User Phone is " + myPhone.text);
          TabScreen();
        },
        child: Text("Sign Up",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Image.asset(
                    "assets/UIcon.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 45.0),
                phoneField,
                SizedBox( height: 35.0),
                signUpButton,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
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