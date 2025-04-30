import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      startTimer();
    });
  }

  startTimer() {
    var duration = Duration(seconds: 4);
    Timer(duration, () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.redAccent,
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Lottie.asset(
              'assets/animation3.json',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'B L O O D',
              style: TextStyle(fontSize: 49, fontFamily: 'Schyler'),
            )
          ],
        ),
      ),
    );
  }
}
