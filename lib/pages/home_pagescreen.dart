import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:transportation_app/pages/create_page_homescreen.dart';
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
    const CreatePage(),
    const SearchPage(),
    const ProfilePage(),
  ];

  int choosedpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset("assets/icon/transportation_icon.svg"),
        actions: [
          SvgPicture.asset("assets/icons/vector_flash.svg"),
        ],
        backgroundColor: Colors.white70,
      ),
      drawer: const CustomDrawer(),
      body: ListView(
        children: [
          Card(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Center(
                    child: SizedBox(
                      width: 400,
                      height: 325,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Image.asset('images/user_picture.jpg'),
                              const SizedBox(
                                width: 30,
                              ),
                              const Text(
                                'John D.',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Text('Lets transfer your packages'),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'From',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Ankara,TR',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Departure',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      '15 June,2022',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Icon(
                                      Icons.arrow_right_alt_sharp,
                                      size: 75,
                                      color: Colors.blueAccent,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'To',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'İstanbul,TR',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Center(
                    child: SizedBox(
                      width: 400,
                      height: 325,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Image.asset('images/user_picture.jpg'),
                              const SizedBox(
                                width: 30,
                              ),
                              const Text(
                                'John D.',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Text('Lets transfer your packages'),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'From',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Ankara,TR',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'Departure',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      '15 June,2022',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Icon(
                                      Icons.arrow_right_alt_sharp,
                                      size: 75,
                                      color: Colors.blueAccent,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'To',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'İstanbul,TR',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.plus_one_sharp), label: 'Create'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.man), label: 'Profile'),
          ],
          backgroundColor: CustomColors.navyblue,
          selectedItemColor: CustomColors.lightpurple,
          unselectedItemColor: CustomColors.black,
          currentIndex: choosedpage,
          onTap: (index) {
            setState(() {
              choosedpage = index;
            });
          },
        ),
      ),
    );
  }
}
