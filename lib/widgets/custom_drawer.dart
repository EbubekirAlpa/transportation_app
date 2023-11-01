import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transportation_app/widgets/custom_color.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    margin: const EdgeInsets.only(
                      top: 30,
                    ),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('images/user_picture.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  const Text(
                    'John D.',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF191849)),
                  ),
                  const Text(
                    'george@gmail.com',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF191849)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/check_circle.svg'),
                      const Text(
                        'Truck Driver',
                        style: TextStyle(color: CustomColors.lightpurple),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              width: 170,
              height: 375,
              margin: const EdgeInsets.all(15),
              child: const Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.layers),
                    title: Text(
                      'Tırlarım',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: null,
                  ),
                  ListTile(
                    leading: Icon(Icons.plus_one),
                    title: Text(
                      'Yeni Tır Oluştur',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: null,
                  ),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text(
                      'Hizmet Koşulları',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: null,
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text(
                      'Ayarlar',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: null,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.login,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Çıkış Yap',
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
