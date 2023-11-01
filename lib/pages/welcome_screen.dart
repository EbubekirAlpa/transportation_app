import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transportation_app/pages/login_screen.dart';
import 'package:transportation_app/pages/register_screen.dart';
import 'package:transportation_app/widgets/custom_color.dart';
import 'package:transportation_app/widgets/custom_elevated_button.dart';
import 'package:transportation_app/widgets/custom_text.dart';

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
            image: AssetImage('assets/images/welcome_screen_container.png'),
            fit: BoxFit.cover,
          ),
        ),

        //Burada Logoyu ekledim.

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/transportation_icon.svg'),
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
                      textColor: CustomColors.white),
                ),
              ),
              const SizedBox(
                height: 200,
              ),

              //Component yapısı ile butonları oluşturdum.
              //Birinci kısım Login

              SizedBox(
                width: 280,
                child: CustomizedElevatedButton(
                  buttonText: 'Login',
                  textColor: CustomColors.white,
                  buttonColor: CustomColors.lightpurple,
                  foregroundColor: Colors.blue.withOpacity(0.01),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ));
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              //İkinci kısım Register

              SizedBox(
                width: 280,
                child: CustomizedElevatedButton(
                  buttonText: 'Register',
                  textColor: CustomColors.white,
                  buttonColor: CustomColors.lightblue.withOpacity(0.1),
                  foregroundColor: Colors.blue.withOpacity(0.01),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ));
                  },
                ),
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
