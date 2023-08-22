import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transportation_app/register_screen.dart';
import 'package:transportation_app/widgets/customized_elevatedbutton.dart';
import 'package:transportation_app/widgets/customized_text.dart';
import 'package:transportation_app/widgets/customized_textfieldbutton.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  //TextFieldları kontrol etmek için iki tane controller tanımladım.

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

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
              child: SvgPicture.asset("images/transportation_miniicon.svg"),
            ),
            customizedText(text: "Login", textcolor: const Color(0xff191849)),

            //Textfield'larda ilk önce Username kısmını tanımladım.

            CustomizedTextField(
              myController: usernameController,
              hintText: "Username",
              helperText: "Enter your username",
              isPassword: false,
            ),


            CustomizedTextField(
              myController: passwordController,
              hintText: "Password",
              helperText: "Enter your password",
              isPassword: true,
            ),

            //Sosyal medya ile giriş yapılabilceğini burada tanımladım.

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customizedText(
                    text: "Login With", textcolor: const Color(0xff191849)),
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

            //Sosyal medyadan sonra gelen textleri burda tanımladım.

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customizedText(
                    text: "Not registered yet ?",
                    textcolor: const Color(0xff191849),
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
                      child: customizedText(
                        text: "Register Now !",
                        textcolor: const Color(0xff7773F5),
                      )),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customizedText(
                    text: "Forget Password",
                    textcolor: const Color(0xff7773F5),
                  ),
                ],
              ),
            ),

            //En son kısma ise LOGIN butonunu tanımlayıp diğer sayfaya geçiş yaptım.
            CustomizedButton(
              buttonText: "Login",
              textColor: const Color(0xffEEEEFE),
              buttonColor: const Color(0xff5550F2),
              foregroundColor: Colors.blue.withOpacity(0.01),
              onPressed: () {
              },
            ),
          ],
        ),
      ),
    );
  }
}
