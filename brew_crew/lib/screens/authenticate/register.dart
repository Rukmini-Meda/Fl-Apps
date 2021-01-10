import 'package:brew_crew/services/auth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {

  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: Text("Sign Up to Brew Crew"),
        actions: <Widget>[
          FlatButton.icon(icon: Icon(Icons.person, color: Colors.white,),label: Text("Sign In",style: TextStyle(color: Colors.white),),
          onPressed: (){
            widget.toggleView();
          }
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          child: Column(
            children: <Widget>[
                SizedBox(height: 20,),
                TextFormField(
                  onChanged: (val){
                      setState((){
                        email = val;
                      });
                  },
                ),
                SizedBox(height: 20,),
                TextFormField(
                  obscureText: true,
                  onChanged: (val){
                      setState((){
                        password = val;
                      });
                  },
                ),
                SizedBox(height: 20,),
                RaisedButton(
                  onPressed: () async{
                      print(email);
                      print(password);
                  },
                  color: Colors.pink[400],
                  child: Text("Sign Up", style: TextStyle(color: Colors.white)),
                )
            ],
          )
        ),  
      ),
    );
  }
}