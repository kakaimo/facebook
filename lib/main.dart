import 'package:facebook/face_screen.dart';
import 'package:facebook/login.dart';
import 'package:facebook/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Login.routeName,
      routes: {
        FaceScreen.routeName: (context) => FaceScreen(),
        Splash.routeName: (context) => Splash(),
        Login.routeName: (context) => Login(),
      },
    );
  }
}
