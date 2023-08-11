import 'package:flutter/material.dart';
import 'package:transportation_app/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  //TextFieldları kontrol etmek için iki tane controller tanımladım.

  var uncontroller = TextEditingController();
  var pccontroller = TextEditingController();

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
              child: Image.asset("images/img_ba.png"),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Color(0xff191849)),),
            ),

            //Textfield'larda ilk önce Username kısmını tanımladım.

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: uncontroller,
                decoration: InputDecoration(
                  fillColor: const Color(0xffEEEEFE),
                  filled: true,
                  helperText: "Username",
                  hintText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            //Textfield'da Password kısmını tanımladım.

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: pccontroller,
                decoration: InputDecoration(
                  fillColor: const Color(0xffEEEEFE),
                  filled: true,
                  helperText: "Password",
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                obscureText: true,
                maxLength: 6,
              ),
            ),

           //Sosyal medya ile giriş yapılabilceğini burada tanımladım.

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login With",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/ic_sc.png"),
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
                  const Text(
                    "Not registered yet ?",
                    style: TextStyle(fontSize: 15,
                        color: Color(0xff191849),
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),

                  //Buradaki Register kısmından direkt Register sayfasına geçiş ekledim.

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegisterScreen()));
                    },
                    child: const Text(
                      "Register Now !",
                      style: TextStyle(color: Color(0xff7773F5),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding:EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Forget Password ?",
                    style: TextStyle(color: Color(0xff7773F5),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            //En son kısma ise LOGIN butonunu tanımlayıp diğer sayfaya geçiş yaptım.

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    width: 250,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff5550F2),
                        foregroundColor: const Color(0xffFFFFFF),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      onPressed: (){
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
