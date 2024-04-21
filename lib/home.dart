import 'package:flutter/material.dart';
import 'body.dart';
import 'globalkey.dart';
class task3 extends StatefulWidget {
  const task3({super.key});

  @override
  State<task3> createState() => _task3State();
}

class _task3State extends State<task3> {
  bool _swi = false;
  ThemeData _dark = ThemeData(brightness: Brightness.dark);
  ThemeData _light = ThemeData(brightness: Brightness.light);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: _swi ? _dark : _light,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(child: Text('Sign IN',style: TextStyle(color: Colors.white,fontSize: 26,fontWeight: FontWeight.w700),)),

          leading: Switch(
            activeColor: Colors.black,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Colors.grey.shade800,
            value: _swi,onChanged: (_newvalue){
            setState(() {
              _swi = _newvalue;
            });},),),

        body: boody(),

        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          onPressed: (){
            var formdata = formstate.currentState;
            if (formdata!.validate()){
              print('valid');
            }else{
              print('not valid');
            }
          },
          child: Icon(Icons.lock_open,size: 32,color: Colors.white,),
        ),
      ),

    );
  }
}
