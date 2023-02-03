import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reab_luy/screens/data_page.dart';
import 'package:reab_luy/screens/home_page.dart';
import 'package:reab_luy/screens/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = [const Home(), const DataPage(), const ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.bookmark), label: 'Data'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person), label: 'Account')
          ]),
    );
  }
}
