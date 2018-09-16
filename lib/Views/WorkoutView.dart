import 'package:flutter/material.dart';
import 'package:myactualapp/Views/Elements/WorkoutCell.dart';

class WorkoutView extends StatefulWidget {

  const WorkoutView({Key key}) : super(key: key);

  @override
  _WorkoutViewState createState() => new _WorkoutViewState();
}

class _WorkoutViewState extends State<WorkoutView> with AutomaticKeepAliveClientMixin<WorkoutView>{
  int _counter = 0;

  final List<WorkoutCell> _messages = <WorkoutCell>[]; // new
  final TextEditingController _textController = new TextEditingController();
  final addKey = GlobalKey();

  @override
  bool get wantKeepAlive => true;

  _handleSubmitted(String text) {
    _textController.clear();
    WorkoutCell message = new WorkoutCell(
      //new
      title: text, //new
    ); //new
    setState(() {
      //new
      _messages.insert(0, message); //new
    }); //new
  }

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
    super.build(context);
    return new Column(
      //modified
      children: <Widget>[
        FlatButton(
          key: addKey,
          color: Colors.red,
          child: new Text("Button"),
          onPressed: () => _handleSubmitted("DEADLIFTS"),
          disabledColor: Colors.black,
        ),
        new Flexible(
          //new
          child: new ListView.builder(
            //new
            padding: new EdgeInsets.all(8.0), //new
            reverse: false, //new
            itemBuilder: (_, int index) => _messages[index], //new
            itemCount: _messages.length, //new
          ), //new
        ), //new
        new Divider(height: 1.0), //new
        new Container(
          //new
          decoration: new BoxDecoration(color: Theme.of(context).cardColor),
          //modified
        ),
        //new
      ], //new
    );
  }


}



class WorkOutFAB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (FloatingActionButton(
      child: const Icon(Icons.check),
      // onPressed: () {_WorkOutViewState().incrementCounter();},
    ));
  }
}
