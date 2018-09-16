import 'package:flutter/material.dart';
import 'package:myactualapp/Views/WorkoutView.dart';

class HistoryView extends MaterialPageRoute<Null> {
  HistoryView() : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 1.0,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
            context, MaterialPageRoute( builder:  (context) => WorkoutView()));
          },
          child: Text("Go to Page Three"),
        ),
      ),
    );
  });
}
