import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:brew_crew/models/user.dart' as usermodel;


class AuthService{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create a user object based on firebase user
  usermodel.User _userFromFirebaseUser(auth.User user){
    return user != null ? usermodel.User(uid: user.uid) : null;
  }

  // auth change user stream
  Stream<usermodel.User> get user{
    return _auth.authStateChanges().map(
      (auth.User user){
        return _userFromFirebaseUser(user);
      }
    );
  }

  //sign in anonymously
  Future signInAnon() async {
    try{
      auth.UserCredential result = await _auth.signInAnonymously();
      auth.User user = result.user;
      return _userFromFirebaseUser(user);
    } catch(e){
      print(e.toString());
      return null;
    }
  }

  //sign in email and password

  //register with email and password
  //sign out

  Future signOut() async{
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }

}