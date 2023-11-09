import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:transportation_app/pages/create_page_homescreen.dart';
import 'package:transportation_app/pages/home_page_main.dart';
import 'package:transportation_app/pages/profile_page_homescreen.dart';
import 'package:transportation_app/pages/search_page_homescreen.dart';
import 'package:transportation_app/widgets/custom_color.dart';
import 'package:transportation_app/widgets/custom_drawer.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  var pageList = [
    const HomePage(),
    const CreatePage(),
    const SearchPage(),
    const ProfilePage(),
  ];

  int choosedpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFF9FAFB),
        leading: SvgPicture.asset("assets/icons/transportation_miniicon.svg"),
        actions: [
          SvgPicture.asset("assets/icons/vector_flash.svg"),
          const SizedBox(width: 20),
          SvgPicture.asset("assets/icons/ringbell.svg"),
          const SizedBox(width: 20),
          SvgPicture.asset("assets/icons/settings.svg"),
        ],
      ),
      drawer: const CustomDrawer(),
      body: _buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: CustomColors.lightBlue,
        unselectedItemColor: CustomColors.grey,
        showUnselectedLabels: true,
        currentIndex: choosedpage,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/home.svg'), label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/create.svg'),
              label: 'Create'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/user.svg',
              ),
              label: 'Profile'),
        ],
        onTap: (index) {
          setState(() {
            choosedpage = index;
          });
        },
      ),
    );
  }

  Widget _buildBody() {
    switch (choosedpage) {
      case 0:
        return const HomePage();
      case 1:
        return const CreatePage();
      case 2:
        return const SearchPage();
      case 3:
        return const ProfilePage();
      default:
        return Container();
    }
  }
}
