import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utapes_app/themes.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Register',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            DView.spaceHeight(2),
            Text(
              'Register and Happy Shopping',
              style: subtitleTextStyle,
            )
          ],
        ),
      );
    }

    Widget input(String title, String icon, String hint, bool isPassword) {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            DView.spaceHeight(12),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: bgColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      icon,
                      width: 17,
                    ),
                    DView.spaceWidth(16),
                    Expanded(
                      child: TextFormField(
                        obscureText: isPassword,
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                        ),
                        decoration: InputDecoration.collapsed(
                          hintText: hint,
                          hintStyle: subtitleTextStyle,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: biruBarca,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Sign in',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account? ',
              style: subtitleTextStyle,
            ),
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Text(
                'Sign Up',
                style: purpleTextStyle.copyWith(
                  fontWeight: medium,
                  color: biruBarca,
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgColor1,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              DView.spaceHeight(50),
              input(
                'Full Name',
                'assets/fullname.png',
                'Your Full Name',
                false,
              ),
              DView.spaceHeight(20),
              input(
                'Username',
                'assets/username.png',
                'Your Username',
                false,
              ),
              DView.spaceHeight(20),
              input(
                'Email Address',
                'assets/email.png',
                'Your Email Address',
                false,
              ),
              DView.spaceHeight(20),
              input(
                'Password',
                'assets/password.png',
                'Your Password',
                true,
              ),
              DView.spaceHeight(30),
              button(),
              Spacer(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
