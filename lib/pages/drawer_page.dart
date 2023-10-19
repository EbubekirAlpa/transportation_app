import 'package:flutter/material.dart';

import '../widgets/custom_drawer_list.dart';
import '../widgets/custom_drawer_logout.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('JOHN D'),
              accountEmail: Text('johnd@gmail.com'),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/user_picture.jpg')),
            ),
            CustomDrawerListItem(icon: Icons.layers, title: 'Tırlarım'),
            CustomDrawerListItem(
                icon: Icons.plus_one_sharp, title: 'Yeni Tır Oluştur'),
            CustomDrawerListItem(icon: Icons.info, title: 'Hizmet Koşulları'),
            CustomDrawerListItem(icon: Icons.settings, title: 'Ayarlar'),
            SizedBox(
              height: 220,
            ),
            CustomLogoutButton(
              icon: Icon(Icons.login_outlined),
              text: 'Çıkış',
              iconColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
