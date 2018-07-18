import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
          // counter didn't reset back to zero; the application is not restarted.
          primarySwatch: Colors.blue,
          primaryColor: Colors.black,
          accentColor: Colors.red[800]),
      home: new MyHomePage(title: 'Aryan is a little birch'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

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

        title: new Center(
            child: new Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[new Text(widget.title)],
        )),
        toolbarOpacity: 1.0,
        //preferredSize: new Size(0.0, 100.0),
        bottom: PreferredSize(
            preferredSize: Size(0.0, 50.0), child: new Container()),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),

      bottomNavigationBar: new BottomAppBar(
        // BottomNavigationBarItem(title: new Text("hi"), icon: new Icon(Icons.shop), backgroundColor: Colors.amber),
        hasNotch: true,
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
                            icon: new Icon(Icons.bubble_chart, color: Colors.red),
                            tooltip: 'Increase volume by 10%',
                          ),
                          new IconButton(
                            icon: new Icon(Icons.share, color: Colors.red),
                            tooltip: 'Increase volume by 10%',
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
                            icon: new Icon(Icons.shop, color: Colors.red),
                            tooltip: 'Increase volume by 10%',
                          ),
                          new IconButton(
                            icon: new Icon(Icons.settings, color: Colors.red),
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
      ),

      body: new Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: new Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug paint" (press "p" in the console where you ran
          // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
          // window in IntelliJ) to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              'Elon musk tokens:',
            ),
            new Text(
              '23',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      // floatingActionButton: new FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: new Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
