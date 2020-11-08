import 'package:firebase_auth/firebase_auth.dart';
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
  // utilize controllers to extract state of information and test validity/error messages
  final _phoneController = TextEditingController();
  final _codeController = TextEditingController();


  // modify this function with robust verification and phone input dialogue
  // phone number must contain country code, area code, all in +13035501234 format
  // passcode was incorrectly entered, either prompt for new code or try entering again
  // case 1: timeout, would you like to try verifying again, case 2: try again
  Future registerUser(String mobile, BuildContext context) async{

    FirebaseAuth _auth = FirebaseAuth.instance;

    _auth.verifyPhoneNumber(
        phoneNumber: mobile,
        timeout: Duration(seconds: 60),
        verificationCompleted: (AuthCredential credential){
          _auth.signInWithCredential(credential).then((AuthResult result){
            Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => TabScreen()
            ));
          }).catchError((e){
            print(e);
          });
        },
        verificationFailed: (AuthException authException){
          print(authException.message); // display to user instead of console
        },
        codeSent: (String verificationId, [int forceResendingToken]) {
          // grab input from the user
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => AlertDialog(
                title: Text("Enter SMS Verification Code:"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextField(
                      controller: _codeController,
                    ),
                  ],
                ),
                actions: <Widget>[
                  FlatButton(
                    child: Text("Done"),
                    textColor: Colors.white,
                    color: Colors.blueAccent,
                    onPressed: () {
                      final smsCode = _codeController.text.trim();

                      FirebaseAuth auth = FirebaseAuth.instance;

                      AuthCredential _credential = PhoneAuthProvider.getCredential(verificationId: verificationId, smsCode: smsCode);

                      auth.signInWithCredential(_credential).then((AuthResult result){
                        Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) => TabScreen()
                        ));
                      }).catchError((e){
                        print(e);
                      });
                    },
                  )
                ],
              )
          );

        },
        codeAutoRetrievalTimeout: (String verificationId) {
          verificationId = verificationId;
          print(verificationId);
          print("Verification Timeout"); // here's the conditional logic for case 1 passcode message
        }
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    _phoneController.dispose();
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final phoneField = TextField(
      controller: _phoneController,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Mobile Phone: +13031234567",
          filled: true,
          fillColor: Colors.grey[100],
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
          final mobile = _phoneController.text.trim();
          registerUser(mobile, context);
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