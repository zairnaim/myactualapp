import 'package:flutter/material.dart';
import 'package:myactualapp/Views/WorkoutView.dart';
import 'package:myactualapp/Views/AccountView.dart';
import 'package:myactualapp/Resources/MyColors.dart';
import 'package:myactualapp/Views/Elements/MainBottomBar.dart';


class MainBottomBar extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return BottomAppBar(
        // BottomNavigationBarItem(title: new Text("hi"), icon: new Icon(Icons.shop), backgroundColor: Colors.amber),
        shape: CircularNotchedRectangle(),
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new IconButton(
                            icon:
                                new Icon(Icons.bubble_chart, color: MyColors.red),
                            tooltip: 'Increase volume by 10%',
                            onPressed: () {
                              // setState(() {
                                // _currentBodyWidget = AccountView();
                                // _currentFAB = AccountViewFAB();
                              // });
                            },
                          ),
                          new IconButton(
                            icon: new Icon(Icons.share, color: MyColors.red),
                            tooltip: 'Increase volume by 10%',
                            onPressed: () {

                              // setState(() {
                              //   // _currentBodyWidget = WorkOutView();
                              //   // _currentFAB = WorkOutFAB();
                              // });
                            },
                          ),
                        ],
                      )
                    ],
                    // BottomNavigationBarItem(title: new Text("hi"), icon: new Icon(Icons.shop), backgroundColor: Colors.amber),
                  ),
                ),
                new Expanded(
                  flex: 1,
                  child: new Column(),
                ),
                new Expanded(
                  flex: 2,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          new IconButton(
                            icon: new Icon(Icons.shop, color: MyColors.red),
                            tooltip: 'Increase volume by 10%'
                          ),
                          new IconButton(
                            icon: new Icon(Icons.settings, color: MyColors.red),
                            tooltip: 'Increase volume by 10%',
                          ),
                        ],
                      )
                    ],
                    // BottomNavigationBarItem(title: new Text("hi"), icon: new Icon(Icons.shop), backgroundColor: Colors.amber),
                  ),
                ),
              ],
            ),
          ],
        ),
      )    ;
  }
} 