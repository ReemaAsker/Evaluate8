import 'dart:developer';
import 'dart:ffi';

import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:evaluate8/constant.dart';
import 'package:evaluate8/pages/FollowingPage.dart';
import 'package:evaluate8/pages/HomePage.dart';
import 'package:evaluate8/pages/SearchPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  // GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          // key: _bottomNavigationKey,
          index: 0,
          items: const [
            CurvedNavigationBarItem(
              child: Image(
                image: AssetImage('images/logo.png'),
                color: primaryColor,
                height: 24,
                width: 24,
              ),
              label: 'Main',
            ),
            CurvedNavigationBarItem(
              child: Icon(
                Icons.search,
                color: primaryColor,
              ),
              label: 'Search',
            ),
            CurvedNavigationBarItem(
              child: Icon(
                Icons.check_circle,
                color: primaryColor,
              ),
              label: 'Follwing',
            ),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: secoundaryColor,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: _page == 0
            ? HomePage()
            : _page == 1
                ? SearchPage()
                : FollowingPage(),
      ),
    );
  }
}
