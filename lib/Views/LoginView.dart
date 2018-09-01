import 'package:flutter/material.dart';
import 'MainScaffoldView.dart';
import 'package:myactualapp/Models/LoginModel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myactualapp/Models/FetchData.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => new _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    // return new Material(
    //   color:Colors.greenAccent,
    //   child:new InkWell(
    //     onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new BottomNavBar())),
    //     child: new Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         new Text("Let's Quiz", style: new TextStyle(color: Colors.white, fontFamily: "Times New Roman", fontSize: 40.0),),
    //         new Text("Tap To Start!", style: new TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold))

    //       ],
    //     )
    //   )
    // );
    return new Scaffold(
      backgroundColor: Colors.redAccent,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
            image: new AssetImage("lib/Resources/wordwallpaper.png"),
            fit: BoxFit.cover,
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlutterLogo(
                size: 80.0,
              ),
              new Form(
                child: new Theme(
                  data: new ThemeData(
                    brightness: Brightness.dark,
                    primaryColor: Colors.black,
                    inputDecorationTheme: new InputDecorationTheme(
                      hintStyle: new TextStyle(
                        color: Colors.white,
                      ),
                      labelStyle: new TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration:
                              new InputDecoration(labelText: "Enter username"),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        TextFormField(
                          decoration:
                              new InputDecoration(labelText: "Enter password"),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: MaterialButton(
                            height: 40.0,
                            minWidth: 100.0,
                            color: Colors.red,
                            textColor: Colors.white,
                            child: new Icon(Icons.airline_seat_legroom_extra),
                            onPressed: () => LoginModel()
                                .handleSignIn()
                                .then((FirebaseUser user) => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => new MainScaffoldView(
                                            title: user.displayName))))
                                .catchError((e) => print(e)), //,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: MaterialButton(
                            height: 40.0,
                            minWidth: 100.0,
                            color: Colors.red,
                            textColor: Colors.white,
                            child: new Icon(Icons.cancel),
                            onPressed: () => LoginModel().signOut(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
