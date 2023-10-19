import 'package:flutter/material.dart';
import 'package:transportation_app/pages/create_page_homescreen.dart';
import 'package:transportation_app/pages/profile_page_homescreen.dart';
import 'package:transportation_app/pages/search_page_homescreen.dart';
import 'package:transportation_app/widgets/custom_color.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  var pageList = [
    const CreatePage(),
    const SearchPage(),
    const ProfilePage(),
  ];

  int choosedpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[choosedpage],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.plus_one_sharp), label: 'Create'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.man), label: 'Profile'),
        ],
        backgroundColor: CustomColors.navyblue,
        selectedItemColor: CustomColors.white,
        unselectedItemColor: CustomColors.white,
        currentIndex: choosedpage,
        onTap: (index) {
          setState(() {
            choosedpage = index;
          });
        },
      ),
    );
  }
}
