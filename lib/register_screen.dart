import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  //3 adet Textfield tanımladım.

  var uncontroller = TextEditingController();
  var pccontroller = TextEditingController();
  var eccontroller = TextEditingController();


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
              child: Image.asset("images/img_ba.png"),
            ),

            //Register yazısını burada tanımladım.

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Register",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff191849)),
              ),
            ),

            //Username butonunu burada tanımladım.

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

            //Email butonunu burada tanımladım.

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: eccontroller,
                decoration: InputDecoration(
                  fillColor: const Color(0xffEEEEFE),
                  filled: true,
                  helperText: "E-Mail",
                  hintText: "example@example.com",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),

            //Password butonunu burada tanımladım.

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
              ),
            ),

            //Or register with butonunu burada tanımladım,altında sosyal medya logoları da bulunuyor.

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Or Register With",
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

            //Sosyal medya altındaki yazıyı burda tanımladım.

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "All ready have an account  ?",
                    style: TextStyle(fontSize: 15,
                        color: Color(0xff191849),
                        fontWeight: FontWeight.bold),
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
                        "Register",
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
