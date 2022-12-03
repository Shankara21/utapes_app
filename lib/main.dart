import 'package:flutter/material.dart';
import 'package:utapes_app/pages/detail_chat_page.dart';
import 'package:utapes_app/pages/edit_profile_page.dart';
import 'package:utapes_app/pages/home/main_page.dart';
import 'package:utapes_app/pages/sign_in_page.dart';
import 'package:utapes_app/pages/sign_up_page.dart';
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
        '/sign-up': (context) => SignUp(),
        '/home': (context) => MainPage(),
        '/detail-chat': (context) => DetailChatPage(),
        '/edit-profile': (context) => EditProfilePage()
      },
    );
  }
}
