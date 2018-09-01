import 'package:flutter/material.dart';
import 'package:myactualapp/Resources/MyColors.dart';

class WorkoutCell extends StatelessWidget {
  final String title;

  WorkoutCell({this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: MyColors.stroke,
        // borderRadius: BorderRadius.all(Radius.circular(10.0)),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: new Material(
            color: MyColors.red,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            child: Container(
              // margin: EdgeInsets.all(2.0),
              child: Stack(
                children: <Widget>[
                  Padding(
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
                  Align(
                    heightFactor: 1.5,
                    alignment: Alignment.bottomLeft,
                    child: Material(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Container(
                            margin: const EdgeInsets.all(16.0),
                            child: new CircleAvatar(
                              radius: 16.0,
                              child: new Text('5'),
                            ),
                          ),
                          new Container(
                            margin: const EdgeInsets.all(16.0),
                            child: new CircleAvatar(
                              radius: 16.0,
                              child: new Text('5'),
                            ),
                          ),
                          new Container(
                            margin: const EdgeInsets.all(16.0),
                            child: new CircleAvatar(
                              radius: 16.0,
                              child: new Text('5'),
                            ),
                          ),
                          new Container(
                            margin: const EdgeInsets.all(16.0),
                            child: new CircleAvatar(
                              radius: 16.0,
                              child: new Text('5'),
                            ),
                          ),
                          new Container(
                            margin: const EdgeInsets.all(16.0),
                            child: new CircleAvatar(
                              radius: 16.0,
                              child: new Text('5'),
                            ),
                          ),
                        ],
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
