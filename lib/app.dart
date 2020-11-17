import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ureport_app/navigation/UReportAppBar.dart';
import 'package:ureport_app/stories/OpinionsWebview.dart';
import 'package:ureport_app/stories/StoryListView.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
    OpinionsWebView(),
    StoryListView(),
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
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.equalizer),
            label: 'Opinions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Stories',

          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).accentColor,
        onTap: _onItemTapped,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          UReportAppBar(),
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

  void displayRegistrationError(String title, String errorMessage) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(title),
          content:
          new Text(errorMessage),
          actions: <Widget>[
            new FlatButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future registerUser(String mobile, BuildContext context) async{

    // Firebase.initializeApp();
    FirebaseAuth _auth = FirebaseAuth.instance;

    // in the future, to adapt to varying app languages
    // _auth.setLanguageCode("fr"); or _auth.useAppLanguage();

    _auth.verifyPhoneNumber(
        phoneNumber: mobile,
        timeout: Duration(seconds: 60),

        verificationCompleted: (AuthCredential credential){
          _auth.signInWithCredential(credential).then((result){
            Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => TabScreen()
            ));
          }).catchError((e){
            print(e);
            const eMessage = "Something went wrong while auto-retrieving"
                "your verification code. Please try again.";
            displayRegistrationError("Verification Error", eMessage);
            _codeController.clear();
          });
        },

        verificationFailed: (FirebaseAuthException authException) {
          print(authException.code);
          const eMessage = "The format of the phone number provided is incorrect. "
            "Please enter the phone number in the following format:\n\n"
            "[+][country code][# including area code]";
          displayRegistrationError("Registration Error", eMessage); // may remain authException.message instead
          _phoneController.clear();
          print(authException);

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

                      AuthCredential _credential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: smsCode);

                      auth.signInWithCredential(_credential).then((result){
                        Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) => TabScreen()
                        ));

                      }).catchError((e){
                        print("VERIFICATION ERROR LOCATION 2");
                        Navigator.of(context).pop();
                        const eMessage = "The SMS verification code "
                            "input to authenticate your device is invalid. "
                            "Please send another verification code via SMS and "
                            "try again.";
                        displayRegistrationError("Invalid Verification Code",
                            eMessage);
                        _codeController.clear();
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
          print("Auto-Retrieval Verification Timeout.");
          /*
          const eMessage = "The verification code that was sent has timed out. "
              "Please send another verification code via SMS and "
              "try again.";
          displayRegistrationError("Verification Code Timeout",
              eMessage);
           */

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
          Firebase.initializeApp();
          registerUser(mobile, context);
        },
        child: Text("Sign Up",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.black, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              new Container(
              width: 155.0,
                height: 155.0,
                alignment: Alignment.center,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/LargeUreportIcon.png'),
                      fit: BoxFit.fill
                  ),
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


