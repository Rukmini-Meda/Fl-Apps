import 'package:brew_crew/screens/authenticate/register.dart';
import 'package:brew_crew/screens/authenticate/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  bool showSignIn = true;
  void toggleView(){
    setState(() {
          showSignIn = !showSignIn;
        });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if(showSignIn == true){
          return SignIn(toggleView: toggleView);
        }
        else{
          return Register(toggleView: toggleView);
        }
      },
    );
  }
}