import 'package:flutter/material.dart';
import 'package:myactualapp/Resources/MyColors.dart';
import 'package:numberpicker/numberpicker.dart';

class RepetitionsAvatar extends StatefulWidget {
  @override
  _RepetitionsAvatarState createState() => _RepetitionsAvatarState();
}

class _RepetitionsAvatarState extends State<RepetitionsAvatar> {
  bool _canAdjustWeight = true;
  bool _isAdjustingWeight = false;
  int _maxReps = 5;
  int _currentCount;
  int _setWeight = 160;
  int _stepAmount = 5;

  void _decrementReps() {
    setState(() {
      if (--_currentCount < 0) _currentCount = _maxReps;
    });
  }

  _RepetitionsAvatarState() {
    _currentCount = 0;
  }

  @override
  Widget build(BuildContext context) { 
    return Container(
      child: (!_isAdjustingWeight)
          ? Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    _decrementReps();
                  },
                  child: new Container(
                    padding: const EdgeInsets.only(
                        top: 16.0, bottom: 8.0, right: 8.0, left: 8.0),
                    child: CircleAvatar(
                      radius: 18.0,
                      backgroundColor: MyColors.stroke,
                      child: new CircleAvatar(
                        backgroundColor: ((_currentCount != 0)
                            ? ((_currentCount == _maxReps)
                                ? MyColors.red
                                : MyColors.redlight)
                            : MyColors.stroke),
                        foregroundColor: MyColors.white,
                        radius: 16.0,
                        child: new Text(_currentCount.toString()),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: (_canAdjustWeight)
                        ? (() => setState(() => (_isAdjustingWeight)
                            ? _isAdjustingWeight = false
                            : _isAdjustingWeight = true))
                        : null,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 16.0, bottom: 16.0, right: 8.0, left: 8.0),
                      child: new Text(
                        _setWeight.toString() + " lb",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    )),
              ],
            )
          : weightAdjuster()
    );
  }

  Widget weightAdjuster() {
    return Column(
      children: <Widget>[
        new IconButton(
          icon: new Icon(Icons.check, color: MyColors.red, size: 32.0,),
          onPressed: () {
            setState(() {
              _isAdjustingWeight = false;
            });
          },
        ),
        Container(
          // color: Colors.black12,
          child: NumberPicker.integer(
            listViewWidth: 48.0,
            initialValue: _setWeight,
            maxValue: 1000,
            minValue: 0,
            step: _stepAmount,
            onChanged: (newValue) => setState(() => _setWeight = newValue),
          ),
        ),
      ],
    );
  }
}
