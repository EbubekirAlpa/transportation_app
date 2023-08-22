import 'package:flutter/material.dart';
import 'package:transportation_app/login_screen.dart';
import 'package:transportation_app/register_screen.dart';

class CustomizedButton extends StatelessWidget {

  final String ? buttonText ;
  final Color ? buttonColor ;
  final Color ? textColor ;
  final Color ? foregroundColor;
  final VoidCallback ? onPressed ;


  const CustomizedButton({Key? key, this.buttonText, this.buttonColor,this.foregroundColor, this.textColor, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        height: 50,
        width: 325,
        child: InkWell(
          onTap: onPressed,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:  buttonColor,
              foregroundColor:  foregroundColor,
              side: BorderSide(width: 1,color: Color(0xff5550F2)),
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
            },
            child:Text(
                buttonText!,
              style: TextStyle(color: textColor,fontSize: 28),
            ),
          ),
        ),
      ),
    );
}
