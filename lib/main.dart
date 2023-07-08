// // import 'package:evaluate8/widgets/list_card.dart';
import 'package:evaluate8/pages/FollowingPage.dart';
import 'package:evaluate8/pages/HomePage.dart';
import 'package:evaluate8/pages/SearchPage.dart';
import 'package:flutter/material.dart';

import 'widgets/nav_bar.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => BottomNavBar(),
        '/SearchPage': (context) => const SearchPage(),
        '/FollowingPage': (context) => const FollowingPage(),
      },
    );
  }
}
