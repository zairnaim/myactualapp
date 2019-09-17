import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myactualapp/Models/WorkoutModel.dart';
import 'package:myactualapp/Views/Elements/SelectWorkoutCell.dart';
import 'package:myactualapp/Models/Database/FetchDataModel.dart';

class SelectWorkoutView extends StatefulWidget {
  const SelectWorkoutView({Key key}) : super(key: key);

  @override
  _SelectWorkoutViewState createState() => new _SelectWorkoutViewState();
}

class _SelectWorkoutViewState extends State<SelectWorkoutView> {
  StreamController<WorkoutModel> streamController;
  List<String> _listofworkouts = ["hi", "bye"];
  List<Widget> _listofSelectWorkoutViews = new List();

  @override
  void initState() {
    super.initState();
    // streamController = StreamController.broadcast();
    // // _listofworkouts = FetchDataModel.getExerciseList();
    // streamController.stream
    //     .listen((p) => setState(() => _listofworkouts.add(p)));
    // _listofworkouts.add(placeholder);
    //_listofworkouts = FetchDataModel.getExerciseList();

    _listofworkouts = new List();

    _listofworkouts.addAll(["dasi", "bdsadye"]);

    createworkoutcells();
  }

  @override
  Widget build(BuildContext context) {
    //super.build(context);

    // return Column(
    //   children: <Widget>[
    //     RaisedButton(
    //       child: Text("sdfdsf"),
    //       onPressed: createworkoutcells,
    //     ),
    //     Container(
    //       height: 500,
    //       child: ListView(children: _listofSelectWorkoutViews),
    //     ),
    //   ],
    // );

    // [SelectWorkoutCell(title: "Hi")]);
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text("sdfdsf"),
          onPressed: createworkoutcells,
        ),
        Flexible(
          child: FutureBuilder<Object>(
              future: FetchDataModel.getExerciseListFromFireStore(),
              builder: (context, snapshot) {
                if (!snapshot.hasData)
                  return new Container();
                List content = snapshot.data;
                  return ListView.builder(
                    itemCount: content.length,
                    itemBuilder: (context, index) {
                        return SelectWorkoutCell(
                          title: content.elementAt(index),
                        );
                    },
                  );
              }),
        ),
      ],
    );
  }

  void createworkoutcells() {
    setState(() {
      print("raragaege");
    });
    var hi = FetchDataModel.getExerciseListFromFireStore();

  }
}
