import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../Database/FetchDataModel.dart';
import 'dart:async';


class LoginModel{

  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser user;

  // LoginModel(){
  // _handleSignIn();
  // }

  Future<FirebaseUser> handleSignIn() async {
    GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    user = await _auth.signInWithGoogle(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    print("signed in " + user.displayName + "token" + user.uid);
    FetchDataModel.addUser(user.uid.toString(), user.displayName);
    return user;
  }

  void signOut(){
    _googleSignIn.signOut();
    print("User Signed Out!");
  }

  bool isLoggedIn(){
    return user == null;
  }

}
