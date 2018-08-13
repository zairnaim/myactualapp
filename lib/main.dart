import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myactualapp/Views/MainScaffoldView.dart';
import 'package:myactualapp/Views/LoginView.dart';

void main() => runApp(new MyApp());




class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
          primarySwatch: Colors.red,
          primaryColor: Colors.black,
          accentColor: Colors.red[800]),
      home: new LoginView(),
    );
  }
}

