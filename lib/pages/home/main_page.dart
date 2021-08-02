import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/home/home_page.dart';
import 'package:flutter_ui/pages/home/profile_page.dart';
// import 'package:flutter_ui/pages/penilaian_page.dart';
import 'package:flutter_ui/theme.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/penilaian-page');
        },
        child: Image.asset(
          'assets/icon_cart.png',
          width: 17,
        ),
      );
    }

    Widget customNavigationBar() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            // backgroundColor: backgroundColor7,
            currentIndex: currentIndex,
            onTap: (value) {
              print(value);
              setState(() {
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: Image.asset(
                    'assets/icon_home.png',
                    width: 21,
                    color: currentIndex == 0 ? bottomColor : Color(0xff808191),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icon_profile.png',
                  width: 21,
                  color: currentIndex == 1 ? bottomColor : Color(0xff808191),
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
          return ProfilePage();
        default:
          return HomePage();
      }
    }

    return Scaffold(
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customNavigationBar(),
      body: body(),
    );
  }
}
