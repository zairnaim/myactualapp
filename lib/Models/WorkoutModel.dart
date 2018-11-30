import 'package:meta/meta.dart';

class WorkoutModel {

  final String workoutname;
  final List<String> workoutnames;

  String get getworkoutname => workoutname;

  WorkoutModel({
    @required this.workoutname,
    this.workoutnames,
    });
  
  
}