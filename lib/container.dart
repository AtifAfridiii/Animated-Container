import 'dart:math';

import 'package:flutter/material.dart';


class Week extends StatefulWidget {
  const Week({super.key});

  @override
  State<Week> createState() => _WeekState();
}


class _WeekState extends State<Week> {

 double Height = 100;
 double Width = 200;
Color color = Colors.pink;
BorderRadius radius = BorderRadius.circular(1);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: const Text('Widget of the week'),
    backgroundColor: Colors.blue.shade300,),

    body: Center(
      child: AnimatedContainer(
       alignment: Alignment.center,
        height: Height,
        width: Width,
      decoration: BoxDecoration(
        borderRadius: radius,
         color: color,
         boxShadow: [
           BoxShadow(
            blurRadius:9,
           color: Colors.black,
           spreadRadius: 3,
           ),

         ],
      ),
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastEaseInToSlowEaseOut,
      ),
    ),

    floatingActionButton: FloatingActionButton(
      onPressed: (){

         final random = Random();
         Height = random.nextInt(500).toDouble();
         Width = random.nextInt(300).toDouble();
         color = Color.fromRGBO(
          random.nextInt(300),
          random.nextInt(300),
          random.nextInt(300),
          1
         );
      radius = BorderRadius.circular( random.nextInt(101).toDouble());

      setState(() {
        
      });
    },child: const Icon(Icons.refresh_sharp,),
    backgroundColor: Colors.brown,
    ),
    );
  }
}