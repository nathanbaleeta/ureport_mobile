import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ureport_app/theme/theme_changer_page.dart';
import 'package:ureport_app/app.dart';


class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: new Column(
            children: <Widget>[
              SizedBox(height: 80),

              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [

                    Container(
                  width: 300.0,
                  height: 150.0,
                  alignment: Alignment.center,
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/mapRegistration.png'),
                        fit: BoxFit.fill
                    ),
                  ),
                ),
                    Container(
                        alignment: Alignment.center,
                        child: Flexible(
                          child: Text(
                            '''U-Report operates
                            in 70 countries''',
                            style: TextStyle(color:Colors.white, fontSize: 20.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
                          ),
                        )),
                  ]
                ),
              ),

              SizedBox(height: 30),
              new Container(
                  alignment: Alignment.center,
                  child: Flexible(
                    child: Text(
                      "Join 12 million U-Reporters \n to improve local policy and \n help UNICEF help you.",
                      style: TextStyle(color:Colors.black, fontSize: 22.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.w500, height: 1.5),
                    ),
                  )
              ),
              SizedBox(height: 20),
              new Container(
                width: 300.0,
                height: 70.0,
                alignment: Alignment.center,
                decoration: new BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/userImageRegister.png'),
                      fit: BoxFit.fill
                  ),
                ),
              ),
              SizedBox(height: 20),
                FlatButton(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text("Select Your Country Here",
                    style: TextStyle(color:Colors.white, fontSize: 20.0, fontWeight: FontWeight.w500)),
                  ),
                  textColor: Colors.white,
                  color: Theme.of(context).accentColor,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThemeChangerPage()),
                    );
                  }),
                Text("or"),
                FlatButton(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text("Continue to the app",
                        style: TextStyle(color:Colors.white, fontSize: 20.0, fontWeight: FontWeight.w500)),
                  ),
                  textColor: Colors.white,
                  color: Theme.of(context).accentColor,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TabScreen()),
                    );
                  })
         ]
        )
      )
    );
  }
}
