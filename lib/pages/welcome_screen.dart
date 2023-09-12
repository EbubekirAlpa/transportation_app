import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transportation_app/pages/login_screen.dart';
import 'package:transportation_app/pages/register_screen.dart';
import 'package:transportation_app/widgets/CustomizedElevatedButton.dart';
import 'package:transportation_app/widgets/CustomText.dart';

final class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  //Hocam burada Anasayfadaki resmi tanımladım,arkaplanı ekrana sığdırdım.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/welcome_screen_container.png'),
            fit: BoxFit.cover,
          ),
        ),

        //Burada Logoyu ekledim.

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('images/transportation_icon.svg'),
                  ],
                ),
              ),

              //Burada logo altına gelen yazıyı ekledim.

              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CustomText(
                      text: 'Let'
                          's transfer your package in a comfortable and easy way !',
                      textColor: Color(0xffEEEEFE)),
                ),
              ),
              const SizedBox(
                height: 250,
              ),

              //Component yapısı ile butonları oluşturdum.
              //Birinci kısım Login

              CustomizedElevatedButton(
                buttonText: 'Login',
                textColor: const Color(0xffEEEEFE),
                buttonColor: const Color(0xff5550F2),
                foregroundColor: Colors.blue.withOpacity(0.01),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ));
                },
              ),
              const SizedBox(
                height: 30,
              ),

              //İkinci kısım Register

              CustomizedElevatedButton(
                buttonText: 'Register',
                textColor: const Color(0xffEEEEFE),
                buttonColor: const Color(0xff5550F2),
                foregroundColor: Colors.blue.withOpacity(0.01),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ));
                },
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
