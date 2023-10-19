import 'package:flutter/material.dart';

class CustomDrawerList extends StatelessWidget {
  const CustomDrawerList({Key? key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CustomDrawerListItem(
          icon: Icons.layers_outlined,
          title: 'Tırlarım',
          onTap: () {},
        ),
        CustomDrawerListItem(
          icon: Icons.plus_one_sharp,
          title: 'Yeni Tır Oluştur',
          onTap: () {},
        ),
        CustomDrawerListItem(
          icon: Icons.info,
          title: 'Hizmet Koşulları',
          onTap: () {},
        ),
        CustomDrawerListItem(
          icon: Icons.settings,
          title: 'Ayarlar',
          onTap: () {},
        ),
      ],
    );
  }
}

class CustomDrawerListItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final void Function()? onTap;

  const CustomDrawerListItem({
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }
}
