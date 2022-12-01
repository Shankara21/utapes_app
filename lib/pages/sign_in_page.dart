import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utapes_app/themes.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            DView.spaceHeight(2),
            Text(
              'Sign In to Countinue',
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
          color: primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextButton(
          onPressed: () {},
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
              'Don\'t have an account? ',
              style: subtitleTextStyle,
            ),
            Text(
              'Sign Up',
              style: purpleTextStyle.copyWith(
                fontWeight: medium,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              DView.spaceHeight(70),
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
