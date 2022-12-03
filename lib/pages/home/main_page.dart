import 'package:flutter/material.dart';
import 'package:utapes_app/pages/home/chat_page.dart';
import 'package:utapes_app/pages/home/home_page.dart';
import 'package:utapes_app/pages/home/profile_page.dart';
import 'package:utapes_app/pages/home/wishlist_page.dart';
import 'package:utapes_app/themes.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff185ADB),
        child: Image.asset(
          'assets/shop.png',
          width: 20,
        ),
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            backgroundColor: bgColor4,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 15,
                    bottom: 5,
                  ),
                  child: Image.asset(
                    'assets/home.png',
                    width: 20,
                    color: currentIndex == 0 ? biruBarca : greyColor,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 15,
                    bottom: 5,
                  ),
                  child: Image.asset(
                    'assets/chat_bar.png',
                    width: 20,
                    color: currentIndex == 1 ? biruBarca : greyColor,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 15,
                    bottom: 5,
                  ),
                  child: Image.asset(
                    'assets/love.png',
                    width: 20,
                    color: currentIndex == 2 ? biruBarca : greyColor,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(
                    top: 15,
                    bottom: 5,
                  ),
                  child: Image.asset(
                    'assets/Profile.png',
                    width: 20,
                    color: currentIndex == 3 ? biruBarca : greyColor,
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 2:
          return WishlistPage();
          break;
        case 3:
          return ProfilePage();
          break;
        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: currentIndex == 0 ? bgColor1 : bgColor3,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body(),
    );
  }
}
