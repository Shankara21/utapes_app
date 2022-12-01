import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      Duration(
        seconds: 3,
      ),
      () => Navigator.pushNamed(
        context,
        '/sign-in',
      ),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1F1D2B),
      body: Center(
        child: Image.asset('assets/logo.png'),
      ),
    );
  }
}
