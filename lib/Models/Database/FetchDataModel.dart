import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../WorkoutModel.dart';

class FetchDataModel {
  static Firestore db = Firestore.instance;
  static Map<String, Object> user = {
    'first': "Ada",
    'last': "lovelace",
    'born': 1895
  };

  static void addUser(String userid, String username) {
    String UID = "UID";
    String USERNAME = "Username";

    // var documents = db.collection("Users").getDocuments();

    // print("HEYY" + documents.toString());
    // print("Why aren't you printing??");
    //db.collection("Users");

    print("HELLOO");

    void foo() async {
      final bool user = await doesNameAlreadyExist(userid);
      print("the aync thingy even run???");
      if (user == false) {
        db.collection("Users").add({UID: userid, USERNAME: username});
      }
    }

    foo();
    //db.collection("Users").add({UID: username, userid: username});
    // await doesNameAlreadyExist(userid).then((value)  {value == false})
    // {
    //   db.collection("Users").add({UID: username, USERNAME: username});
    // }
  }

  static Future<bool> doesNameAlreadyExist(String userid) async {
    print("DID THIS EVEN RUN???");
    final QuerySnapshot result = await Firestore.instance
        .collection('Users')
        .where('UID', isEqualTo: userid)
        .limit(1)
        .getDocuments();
    final List<DocumentSnapshot> documents = result.documents;
    print(documents.length);
    return documents.length == 1;
  }

////////////////////////////////////////////////

  // static List<String> getExerciseList() {
  //   CollectionReference stronglifts = db.collection("workouts");
  //   //.document("Stronglifts");//  .getDocuments().ma;
  //   //QuerySnapshot query = await stronglifts.where("name", isNull: false ).getDocuments();

  //   //query.documents.forEach((document) {
  //   print("LJKJLKJLJL:" + stronglifts.toString());

  //   List<String> workoutmodellist;
  //   void convertfuturetolist() async {
  //     workoutmodellist = await getWorkoutListFromFireStore();
  //   }

  //   convertfuturetolist();
  //   return workoutmodellist;
  // }

  ///returns the list of all the workouts.
  static Future<List<String>> getWorkoutListFromFireStore() async {
    var collection = db.collection("workouts");
    QuerySnapshot querySnapshot = await collection.getDocuments();

    List<String> workoutlist = new List();
    querySnapshot.documents.forEach((doc) {
      workoutlist.add((doc['workoutname']));
    });

    workoutlist.forEach((f) {
      print(f);
    });

    return workoutlist;
  }

  ///returns the list of all the workouts.
  static Future<List<String>> getExerciseListFromFireStore(
      {String workout = "Omar's 6 Day Lean Mass"}) async {

    var collection = db.collection("workouts").document(workout).collection('Exercises');
    QuerySnapshot querySnapshot = await collection.getDocuments();

    List<String> workoutlist = new List();
    querySnapshot.documents.forEach((doc) {
      if (doc.documentID.toString() == 'Day1'){
        var data = doc.data.values;

        var sets = data.toSet();
        var list = data.toList();
                print("");
         //doc.data.forEach((f) => {workoutlist.add(f)});
      }
      // workoutlist.add([(doc.data.values)]);
    });

    workoutlist.forEach((f) {
      print(f);
    });

    return workoutlist;
  }
}
