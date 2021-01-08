import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_auth/firebase_auth.dart' as auth;

class AuthService{

  // firebase.initializeApp();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign in anonymously
  Future signInAnon() async {
    try{
      auth.UserCredential result = await _auth.signInAnonymously();
      auth.User user = result.user;
      return user;
    } catch(e){
      print(e.toString());
      return null;
    }
  }

  //sign in email and password

  //register with email and password
  //sign out

}