import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transportation_app/pages/register_screen.dart';
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
  //TextFieldları kontrol etmek için iki tane controller tanımladım.

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

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

            //Önce logoyu tanımladım daha sonra Login yazısını tanımladım.

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset('images/transportation_miniicon.svg'),
            ),
            const CustomText(text: 'Login', textColor: CustomColors.navyblue),

            //Textfield'larda ilk önce Username kısmını tanımladım.

            CustomizedTextFieldButton(
              myController: _usernameController,
              hintText: 'Username',
              helperText: 'Enter your username',
            ),

            CustomizedTextFieldButton(
              myController: _passwordController,
              hintText: 'Password',
              helperText: 'Enter your password',
            ),

            //Sosyal medya ile giriş yapılabilceğini burada tanımladım.

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                    text: 'Login With', textColor: CustomColors.navyblue),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/socialmedia_icon.png'),
              ],
            ),
            const SizedBox(height: 20),

            //Sosyal medyadan sonra gelen textleri burda tanımladım.

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomText(
                    text: 'Not registered yet ?',
                    textColor: CustomColors.navyblue,
                  ),
                  const SizedBox(
                    width: 5,
                  ),

                  //Buradaki Register kısmından direkt Register sayfasına geçiş ekledim.

                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterScreen()));
                      },
                      child: const CustomText(
                        text: 'Register Now !',
                        textColor: CustomColors.white,
                      )),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Forget Password',
                    textColor: CustomColors.lightpurple,
                  ),
                ],
              ),
            ),

            //En son kısma ise LOGIN butonunu tanımlayıp diğer sayfaya geçiş yaptım.
            CustomizedElevatedButton(
              buttonText: 'Login',
              textColor: CustomColors.white,
              buttonColor: CustomColors.lightblue,
              foregroundColor: Colors.blue.withOpacity(0.01),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
