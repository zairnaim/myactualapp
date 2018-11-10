import 'package:flutter/material.dart';
import 'package:myactualapp/Resources/MyColors.dart';
import 'package:myactualapp/Views/Elements/RepetitionsAvatar.dart';

class WorkoutCell extends StatelessWidget {
  final String title;

  WorkoutCell({this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: MyColors.stroke,
        //borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: new Material(
            color: MyColors.red,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 32.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Column(
                        children: <Widget>[
                          Text(
                            this.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    heightFactor: 1.0,
                    alignment: Alignment.bottomLeft,
                    child: Material(
                      color: MyColors.stroke,
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      child: new Container(
                        padding: EdgeInsets.only(top: 2.0),
                        //color: MyColors.stroke,
                        child: Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.elliptical(8.0, 12.0),
                              topRight: Radius.elliptical(8.0, 12.0),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              new RepetitionsAvatar(),
                              new RepetitionsAvatar(),
                              new RepetitionsAvatar(),
                              new RepetitionsAvatar(),
                              new RepetitionsAvatar(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
