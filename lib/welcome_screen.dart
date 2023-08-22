import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transportation_app/login_screen.dart';
import 'package:transportation_app/register_screen.dart';
import 'package:transportation_app/widgets/customized_elevatedbutton.dart';
import 'package:transportation_app/widgets/customized_text.dart';

class WelcomeScreen extends StatelessWidget {
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
            image: AssetImage("images/welcomescreen_container.png"),
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
                    SvgPicture.asset("images/transportation_icon.svg"),
                  ],
                ),
              ),

              //Burada logo altına gelen yazıyı ekledim.

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: customizedText(
                    text: "Let's transfer your package \n"
                        "in a comfortable and easy way !",
                    textcolor: const Color(0xffEEEEFE)),
              ),
              const SizedBox(
                height: 250,
              ),

              //Component yapısı ile butonları oluşturdum.
              //Birinci kısım Login

              CustomizedButton(
                buttonText: "Login",
                textColor: const Color(0xffEEEEFE),
                buttonColor: const Color(0xff5550F2),
                foregroundColor: Colors.blue.withOpacity(0.01),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const LoginScreen()));
                },
              ),
              const SizedBox(
                height: 30,
              ),

              //İkinci kısım Register

              CustomizedButton(
                buttonText: "Register",
                textColor: const Color(0xffEEEEFE),
                buttonColor: const Color(0xff5550F2),
                foregroundColor: Colors.blue.withOpacity(0.01),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const RegisterScreen()));
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
