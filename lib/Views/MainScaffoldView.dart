import 'package:flutter/material.dart';
import 'WorkoutView.dart';
import 'SelectWorkoutView.dart';
import 'AccountView.dart';
import 'package:myactualapp/Resources/MyColors.dart';
import 'package:myactualapp/Models/Authentication/LoginModel.dart';

class MainScaffoldView extends StatefulWidget {
  MainScaffoldView({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MainScaffoldViewState createState() => new _MainScaffoldViewState();
}

class _MainScaffoldViewState extends State<MainScaffoldView> {
  int _counter = 0;
  Widget _currentBodyWidget = WorkoutView();
  Widget _currentFAB = WorkOutFAB();

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        // automaticallyImplyLeading: false,
        title: new Center(
            child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[new Text(widget.title)],
        )),
        toolbarOpacity: 1.0,
        //preferredSize: new Size(0.0, 100.0),
        // bottom: PreferredSize(
        //     preferredSize: Size(0.0, 50.0), child: new Container()),
      ),

      bottomNavigationBar: new BottomAppBar(
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
                            icon: new Icon(Icons.bubble_chart,
                                color: MyColors.red),
                            tooltip: 'Increase volume by 10%',
                            onPressed: () {
                              setState(() {
                                _currentBodyWidget = AccountView();
                                _currentFAB = AccountViewFAB();
                              });
                            },
                          ),
                          new IconButton(
                            icon: new Icon(Icons.share, color: MyColors.red),
                            tooltip: 'Increase volume by 10%',
                            onPressed: () {
                              setState(() {
                                _currentBodyWidget = WorkoutView();
                                _currentFAB = WorkOutFAB();
                              });
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
                            tooltip: 'Increase volume by 10%',
                            onPressed: () => _incrementCounter,
                          ),
                          new IconButton(
                            icon: new Icon(Icons.settings, color: MyColors.red),
                            tooltip: 'Increase volume by 10%',
                            onPressed: () {
                              setState(() {
                                _currentBodyWidget = SelectWorkoutView();
                                _currentFAB = WorkOutFAB();
                              });
                            },
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
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _currentFAB,

      body: _currentBodyWidget,
      // floatingActionButton: new FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: new Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
