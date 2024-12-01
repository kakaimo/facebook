import 'dart:async';

import 'package:facebook/face_screen.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  static const String routeName = 'splash';

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => FaceScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: Image.asset('assets/images/facelogo.png'),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const Text('from'),
                  Image.asset('assets/images/meta.png'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
