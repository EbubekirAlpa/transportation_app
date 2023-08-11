import 'package:flutter/material.dart';
import 'package:transportation_app/login_screen.dart';
import 'package:transportation_app/register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
                                                                              //Hocam burada Anasayfadaki resmi tanımladım,arkaplanı ekrana sığdırdım.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/im_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
                                                     //Burada Logoyu eklemeye çalıştım fakat SVG olarak bir türlü yapamadım hocam,bu şekilde yapabildim.
        child: Column(
          mainAxisAlignment : MainAxisAlignment.end,
          children: [
            const SizedBox(
            height: 100,
            width: 350,
               child: Image(image: AssetImage("images/ab.png"),),
           ),
           const Padding(
             padding: EdgeInsets.all(10.0),
             child: Text(
               "Let's transfer your package in a comfortable and easy way !",
               style: TextStyle(fontSize: 25,
                   color: Color(0xffFFFFFF)),
             ),
           ),
          const SizedBox(
            height: 250,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 50,
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff5550F2),
                  foregroundColor: const Color(0xffFFFFFF),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                },
                            //Burada TextButton'da kullanabilirdim hocam fakat ElevatedButton Kullandım,sayfa geçişleri daha kolay olur diye düşündüm.
                             //İlk önce Login butonunu tanımladım.
                child: const Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
            ),
          ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.withOpacity(0.01),
                    side: const BorderSide(width: 1,color:Color(0xff5550F2),),
                    foregroundColor: const Color(0xffFFFFFF),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
                    },
                                                            //Burada da Register butonunu tanımladım,yine aynı şekilde Elevated Button kullanımı yaptım.
                  child: const Text(
                    "Register",
                    style: TextStyle(color:Color(0xffFFFFFF),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,),),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
