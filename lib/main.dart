import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(child: Text('Ask me everything'),

      )
     
      ),
        body: everyThing(
          

        ),
      ),
    )
  );
}

class everyThing extends StatefulWidget {
  const everyThing({ Key? key }) : super(key: key);

  @override
  State<everyThing> createState() => _everyThingState();
}

class _everyThingState extends State<everyThing> {
  var askThings = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        
        child: TextButton(
          
          onPressed:() {
          setState(() {
            askThings=Random().nextInt(5)+ 1;
          });
          
        }, child: Image.asset('images/ball$askThings.png')),
      ),
    );
  }
}