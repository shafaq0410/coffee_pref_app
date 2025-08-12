import 'package:coffee_card/coffee_pref.dart';
import 'package:coffee_card/styled_body_text.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //return const Text('Hello !!');
    return Scaffold(
       appBar: AppBar(
         title: const Text('My Coffee ID' , style:TextStyle(
          color:Colors.white,
          fontWeight: FontWeight.bold,
         )),
         backgroundColor: Colors.brown[700],
         centerTitle: true,
       ),
       body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
         Container(
          color: Colors.brown[200],
          padding: const EdgeInsets.all(20),
          child: const StyledBodyText('How I Like my Coffee....'),
         ),
           Container(
          color: Colors.brown[100],
          padding: const EdgeInsets.all(20),
          child: const CoffeePref()
          // child: const Text('Coffee prefs')
         ) , 
         Expanded(
          child: Image.asset('assets/img/coffee_bg.jpg' , 
          fit: BoxFit.fitWidth ,
          alignment: Alignment.bottomCenter
          ),
         ),
       ],) //const Text('Hello'),
     );

     //  Container(
    //   color: Colors.orange,
    //   //width:200,
    // //  height: 100,
    // padding: EdgeInsets.all(20),
    // margin:const EdgeInsets.fromLTRB(10, 40, 0, 0),//left, top , right,bottom
    //   child: const Text('Hello !!',style:TextStyle(
    //     fontSize: 18,
    //     letterSpacing: 4,
    //     decoration:TextDecoration.underline,
    //     fontStyle: FontStyle.italic,

    //   )),
    // );
      }
}