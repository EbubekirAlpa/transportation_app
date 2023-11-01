import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
            color: Colors.white,
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                          image: AssetImage('assets/images/user_picture.jpg'),
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
                        style: TextStyle(color: Color(0xFF5550F2)),
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
              child: Column(
                children: [
                  ListTile(
                    leading:
                        SvgPicture.asset('assets/icons/versionslabels.svg'),
                    title: const Text(
                      'Tırlarım',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: null,
                  ),
                  ListTile(
                    leading: SvgPicture.asset('assets/icons/plus.svg'),
                    title: const Text(
                      'Yeni Tır Oluştur',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: null,
                  ),
                  ListTile(
                    leading: SvgPicture.asset('assets/icons/warning_info.svg'),
                    title: const Text(
                      'Hizmet Koşulları',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: null,
                  ),
                  ListTile(
                    leading: SvgPicture.asset('assets/icons/substracts.svg'),
                    title: const Text(
                      'Ayarlar',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: null,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset('assets/icons/exit_right.svg'),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
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
