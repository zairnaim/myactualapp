import 'package:flutter/material.dart';
import 'package:myactualapp/Views/Elements/SelectWorkoutCell.dart';

class SelectWorkoutView extends StatefulWidget {
  const SelectWorkoutView({Key key}) : super(key: key);

  @override
  _SelectWorkoutViewState createState() => new _SelectWorkoutViewState();
}

class _SelectWorkoutViewState extends State<SelectWorkoutView> {
  @override
  Widget build(BuildContext context) {
    //super.build(context);
    return new Column(
      children: <Widget>[
        // new Flexible(
        //   child: ListView.builder(),
        // )
        new SelectWorkoutCell(title: "hi"),
      ],
    );
  }
}
