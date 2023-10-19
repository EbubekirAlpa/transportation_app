import 'package:flutter/material.dart';
import 'package:transportation_app/widgets/custom_color.dart';
import 'package:transportation_app/widgets/custom_drawer_list.dart';
import 'package:transportation_app/widgets/custom_drawer_logout.dart';
import 'package:transportation_app/widgets/custom_elevated_button.dart';
import 'package:transportation_app/widgets/custom_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'My Card'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

//Hocam burada App bar kısmını oluşturdum.

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          SizedBox(width: 20),
          Icon(Icons.flash_on),
          SizedBox(width: 20),
          Icon(Icons.doorbell),
        ],
        backgroundColor: Colors.blue,
        title: Text(widget.title),
      ),
      drawer: const MenuPage(), //

      //Burada Listview yapısını oluşturdum.

      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
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

                //ListViewde bulunan nesneleri ekledim.

                child: Column(
                  children: [
                    Center(
                      child: SizedBox(
                        height: 400,
                        width: 400,
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
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'From',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Ankara,TR',
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      CustomText(
                                        text: 'Departure',
                                        textColor: Colors.black,
                                      ),
                                      CustomText(
                                        text: '15 June,2022',
                                        textColor: Colors.black,
                                      ),
                                      Icon(
                                        Icons.arrow_right_alt_sharp,
                                        size: 75,
                                        color: Colors.blueAccent,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'To',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('Istanbul,TR'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Expanded(
                              child: Row(
                                children: [
                                  SizedBox(
                                    child: CustomizedElevatedButton(
                                        buttonText: 'Select',
                                        buttonColor: CustomColors.lightblue),
                                  ),
                                  CustomizedElevatedButton(
                                    buttonText: 'Details',
                                    buttonColor: Colors.teal,
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
          ),
        ],
      ),
    );
  }
}

//Drawer Kısımlarını burada hallettim hocam.

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
