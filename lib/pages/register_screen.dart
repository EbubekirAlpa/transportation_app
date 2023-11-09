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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            //Logoyu burda tanımladım.

            SvgPicture.asset('assets/icons/transportation_miniicon.svg'),
            //Register yazısını burada tanımladım.
            const CustomText(
              text: 'Register',
              textColor: CustomColors.navyBlue,
              fontSize: 32,
            ),

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
                  fontSize: 16,
                  textColor: CustomColors.navyBlue,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset('assets/icons/logo_google_icon.svg'),
                SvgPicture.asset('assets/icons/logo_apple_icon.svg'),
                SvgPicture.asset('assets/icons/logo_facebook_icon.svg'),
              ],
            ),
            //Sosyal medya altındaki yazıyı burda tanımladım.

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: 'All ready have an account  ?',
                  fontSize: 16,
                  textColor: CustomColors.lightPurple,
                ),
              ],
            ),

            //Register Butonunu burada tanımladım.

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomizedElevatedButton(
                  buttonText: 'Register',
                  textColor: CustomColors.white,
                  buttonColor: CustomColors.lightBlue,
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
