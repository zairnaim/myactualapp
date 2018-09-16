import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FetchDataModel{

    
  static Firestore db = Firestore.instance;
  static Map<String, Object> user = { 'first' : "Ada", 'last': "lovelace", 'born': 1895 };
  

  static void addUser(String userid, String username){
    
    var documents = db.collection("Users").getDocuments();

    print("HEYY" + documents.toString());
    print("Why aren't you printing??");
    //db.collection("Users");
    db.collection("Users").add({userid : username});
  }

  static void getExerciseList(){
    var stronglifts = db.collection("workouts").getDocuments();
    
    print("LJKJLKJLJL:" + stronglifts.toString());
  }

}