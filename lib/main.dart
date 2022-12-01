import 'package:flutter/material.dart';
import 'package:utapes_app/pages/sign_in_page.dart';
import 'package:utapes_app/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignIn(),
      },
    );
  }
}
