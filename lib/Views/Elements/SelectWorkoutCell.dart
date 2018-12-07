import 'package:flutter/material.dart';
import 'package:myactualapp/Resources/MyColors.dart';
import 'package:myactualapp/Views/Elements/RepetitionsAvatar.dart';

class SelectWorkoutCell extends StatelessWidget {
  final String title;

  SelectWorkoutCell({this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Material(
        color: MyColors.red,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title, style: TextStyle(fontSize: 50.0, color: Colors.black)),
            ),
          ],
        ),
        //borderRadius: BorderRadius.all(Radius.circular(10.0)),
        // child:Column([
        //         Padding(padding: const EdgeInsets.all(8.0),
        //         child: Text(title),
        //   )
        // ]),
      ),
    );
  }
}
