import 'package:flutter/material.dart';
import 'globalkey.dart';
class boody extends StatefulWidget {
  const boody({super.key});


  @override
  State<boody> createState() => _boodyState();
}

class _boodyState extends State<boody> {
  @override
  Widget build(BuildContext context) {

    return Form(
      key: formstate,
      child: Column(
        children: [
          Spacer(
            flex: 1,
          ),

           Image.asset('images/week 3_ image.png',),

          TextFormField(

            validator: (text){
              if (text!.length<1){
                return "Username cannot be embty";
              }return null ;
            },
            decoration: InputDecoration(
              labelText: 'Username',
              labelStyle: TextStyle(fontSize: 22,color: Colors.teal.shade700,fontWeight: FontWeight.bold),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.teal
                ),
              ),
            ),
          ),
          SizedBox(height: 40,),
          TextFormField(
            validator: (text){
              if (text!.length < 1){
                return "password cannot be embty";
              }return null ;
            },
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              labelStyle: TextStyle(fontSize: 22,color: Colors.teal.shade700,fontWeight: FontWeight.bold),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.teal
                ),
              ),
            ),
          ),
          Spacer(flex: 1,),

        ],

      ),
    );
  }
}

