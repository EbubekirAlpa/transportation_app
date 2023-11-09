import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transportation_app/pages/home_pagescreen.dart';
import 'package:transportation_app/widgets/custom_color.dart';
import 'package:transportation_app/widgets/custom_elevated_button.dart';
import 'package:transportation_app/widgets/custom_text.dart';
import 'package:transportation_app/widgets/custom_tfield_button.dart';

final class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final class _LoginScreenState extends State<LoginScreen> {
  //2 adet Textfield tanımladım.

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

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
              text: 'Login',
              textColor: CustomColors.black,
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

            //Login With Text yazısını burada tanımladım,altında sosyal medya logoları da bulunuyor.

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: 'Login With',
                  fontSize: 16,
                  textColor: CustomColors.navyBlue,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset('assets/icons/logo_google_icon.svg'),
                  SvgPicture.asset('assets/icons/logo_apple_icon.svg'),
                  SvgPicture.asset('assets/icons/logo_facebook_icon.svg'),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            //Burada İki adet customText tanımladım.

            const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Row(
                children: [
                  CustomText(
                    text: 'Not Registered Yet? ',
                    textColor: CustomColors.black,
                    fontSize: 14,
                  ),
                  CustomText(
                      text: 'Register Now !',
                      textColor: CustomColors.lightBlue,
                      fontSize: 14)
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                      text: 'Forget Password ?',
                      textColor: CustomColors.lightBlue,
                      fontSize: 16)
                ],
              ),
            ),

            const SizedBox(
              height: 50,
            ),

            //Login Butonunu burada tanımladım.

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomizedElevatedButton(
                  buttonText: 'Login',
                  textColor: CustomColors.white,
                  buttonColor: CustomColors.lightBlue,
                  foregroundColor: Colors.blue.withOpacity(0.01),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePageScreen(),
                        ));
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
