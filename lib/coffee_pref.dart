
import 'package:flutter/material.dart';

class CoffeePref extends StatefulWidget {
  const CoffeePref({super.key});

  @override
  State<CoffeePref> createState() => _CoffeePrefState();
}

class _CoffeePrefState extends State<CoffeePref> {

   int strength = 1;
   int sugars = 1;

  void increaseStrength(){
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
    
  }

  void increaseSugars(){
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }
  


  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
              children: [
               const Text('Strength: '),


               //Text('$strength'),
               for(int i=0; i<strength; i++)
                Image.asset('assets/img/coffee_beans.jpg' , 
                width: 25 ,
                color: Colors.brown[100] ,
                colorBlendMode: BlendMode.multiply,
                ),
              Expanded(child: const SizedBox()),
             //  const Text('+'),
             FilledButton(
              style:FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increaseStrength,
               child: const Text( '+'),
               ),
              ],
        ),
        Row(
           children: [
               const Text('Sugars: '),

               
               if(sugars==0)
               const Text('No Sugar'),
              // Text('$sugars'),
              for(int i=0; i<sugars; i++)
                  Image.asset('assets/img/sugar_cubes.jpg' ,
                width: 25 ,
                  color: Colors.brown[100] ,
                colorBlendMode: BlendMode.multiply,
                ),
                Expanded(child: const SizedBox()),
              //  const SizedBox(width:100),
              // const Text('+'),
              // TextButton(
              //   style:TextButton.styleFrom(
              //     foregroundColor: Colors.brown,
              //   ),
              //    onPressed: increaseSugars,
              //  child: const Text( '+'),
              //  ),
              FilledButton(
              style:FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increaseSugars,
               child: const Text( '+'),
               ),
              ]
        )
      ],
    );
  }
}
//   );