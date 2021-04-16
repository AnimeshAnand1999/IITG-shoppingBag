import 'package:brewcrew/models/user.dart';
import 'package:brewcrew/screens/wrapper.dart';
import 'package:brewcrew/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Usr>.value(
      value: AuthService().user, //this is the fucnction returning stream
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
