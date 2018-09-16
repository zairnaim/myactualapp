import 'package:flutter/material.dart';
import 'package:myactualapp/Models/FetchDataModel.dart';

class AccountView extends StatefulWidget {
  @override
  _AccountViewState createState() => new _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  static int _counter = 0;
  
  void incrementCounter(){
    setState(() {
          _counter++;
          print("Counter equals:" + _counter.toString());
        });
  }
  
  @override
  Widget build(BuildContext context) {
    return (new Center(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            'Account View:',
          ),
          new Text(
            '$_counter',
            style: Theme.of(context).textTheme.display1,
          ),
        ],
      ),
    ));
  }
}

class AccountViewFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (FloatingActionButton(
      child: const Icon(Icons.home),
      // onPressed: () {_AccountViewState().incrementCounter();},
      //  onPressed: () {FetchData.addUser();},
    ));
  }
}
