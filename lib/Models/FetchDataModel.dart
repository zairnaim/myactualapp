import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'WorkoutModel.dart';

class FetchDataModel {
  static Firestore db = Firestore.instance;
  static Map<String, Object> user = {
    'first': "Ada",
    'last': "lovelace",
    'born': 1895
  };

  static void addUser(String userid, String username) {
    var documents = db.collection("Users").getDocuments();

    print("HEYY" + documents.toString());
    print("Why aren't you printing??");
    //db.collection("Users");
    db.collection("Users").add({userid: username});
  }

  static void getExerciseList() {
    CollectionReference stronglifts = db.collection(
        "workouts"); //.document("Stronglifts");//  .getDocuments().ma;
    //QuerySnapshot query = await stronglifts.where("name", isNull: false ).getDocuments();

    //query.documents.forEach((document) {
    print("LJKJLKJLJL:" + stronglifts.toString());

    _getWorkoutListFromFireStore(stronglifts);
  }

  static Future<List<WorkoutModel>> _getWorkoutListFromFireStore(
      CollectionReference collection) async {
    QuerySnapshot querySnapshot = await collection.getDocuments();

    List<WorkoutModel> workoutlist = new List();
    querySnapshot.documents.forEach((doc) {
      workoutlist.add(new WorkoutModel(workoutname: doc['workoutname']));
    });

    workoutlist.forEach((f) {
      print(f.getworkoutname.toString());
    });

    return workoutlist;
  }
}
