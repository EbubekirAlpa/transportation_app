import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transportation_app/widgets/customized_text.dart';
import 'widgets/customized_elevatedbutton.dart';
import 'widgets/customized_textfieldbutton.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  //3 adet Textfield tanımladım.

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),

            //Logoyu burda tanımladım.

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset("images/transportation_miniicon.svg"),
            ),

            //Register yazısını burada tanımladım.

             Padding(
              padding: const EdgeInsets.all(8.0),
              child: customizedText(text: "Register", textcolor: const Color(0xff191849),)
            ),

            //Username butonunu burada tanımladım.

            CustomizedTextField(
              myController: usernameController,
              hintText: "Username",
              helperText: "Enter your username",
              isPassword: false,
              hintColor: const Color(0xffCCCBFB),
            ),

            //Password butonunu burada tanımladım.

            CustomizedTextField(
              myController: passwordController,
              hintText: "Password",
              helperText: "Enter your password",
              isPassword: true,
              hintColor: const Color(0xffCCCBFB),
            ),

            //E-mail butonunu burada tanımladım.

            CustomizedTextField(
              myController: emailController,
              hintText: "E-Mail",
              helperText: "Enter your E-Mail",
              isPassword: true,
              hintColor: const Color(0xffCCCBFB),
            ),

            //Or register with butonunu burada tanımladım,altında sosyal medya logoları da bulunuyor.

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customizedText(text: "Or Register With", textcolor: const Color(0xff191849),)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/socialmedia_icon.png"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),

            //Sosyal medya altındaki yazıyı burda tanımladım.

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customizedText(text: "All ready have an account  ?", textcolor: const Color(0xff191849),),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),

            //Register Butonunu burada tanımladım.

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomizedButton(
                  buttonText: "Register",
                  textColor: const Color(0xffEEEEFE),
                  buttonColor: const Color(0xff5550F2),
                  foregroundColor: Colors.blue.withOpacity(0.01),
                  onPressed: () {

                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
