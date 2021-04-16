//anonymous sign in

import 'package:brewcrew/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({this.toggleView}); // constructor

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,
        title: Text('Sign in to Shopping Bag'),
        centerTitle: true,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () {
                widget.toggleView();
              },
              icon: Icon(Icons.person),
              label: Text('Register'))
        ],
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Form(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  onChanged: (val) {
                    setState(() {
                      email = val;
                    });
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  onChanged: (val) {
                    setState(() {
                      password = val;
                    });
                  },
                  obscureText: true,
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  onPressed: () async {
                    dynamic result =
                        await _auth.signInWithEmailAndPassword(email, password);
                    if (result != null) print('Success');
                  },
                  color: Colors.pink,
                  child: Text(
                    'sign in',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
