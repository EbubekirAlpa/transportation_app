import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transportation_app/widgets/custom_color.dart';
import 'package:transportation_app/widgets/custom_text.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_tfield_button.dart';

final class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

final class _RegisterScreenState extends State<RegisterScreen> {
  //3 adet Textfield tanımladım.

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),

            //Logoyu burda tanımladım.

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset('images/transportation_miniicon.svg'),
            ),

            //Register yazısını burada tanımladım.

            const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomText(
                  text: 'Register',
                  textColor: CustomColors.navyblue,
                )),

            //Username butonunu burada tanımladım.

            CustomizedTextFieldButton(
              myController: _usernameController,
              hintText: 'Username',
              helperText: 'Enter your username',
              hintColor: CustomColors.white,
            ),

            //Password butonunu burada tanımladım.

            CustomizedTextFieldButton(
              myController: _passwordController,
              hintText: 'Password',
              helperText: 'Enter your password',
              isPassword: true,
              hintColor: CustomColors.white,
            ),

            //E-mail butonunu burada tanımladım.

            CustomizedTextFieldButton(
              myController: _emailController,
              hintText: 'E-Mail',
              helperText: 'Enter your E-Mail',
              isPassword: true,
              hintColor: CustomColors.white,
            ),

            //Or register with butonunu burada tanımladım,altında sosyal medya logoları da bulunuyor.

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: 'Or Register With',
                  textColor: CustomColors.navyblue,
                )
              ],
            ),
            const SizedBox(height: 20),
            Center(child: Image.asset('images/socialmedia_icon.png')),
            const SizedBox(height: 20),

            //Sosyal medya altındaki yazıyı burda tanımladım.

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'All ready have an account  ?',
                    textColor: CustomColors.navyblue,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),

            //Register Butonunu burada tanımladım.

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomizedElevatedButton(
                  buttonText: 'Register',
                  textColor: CustomColors.white,
                  buttonColor: CustomColors.lightblue,
                  foregroundColor: Colors.blue.withOpacity(0.01),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
