import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';



class ScaffoldParameter extends StatelessWidget {
  const ScaffoldParameter({super.key});

  @override
  Widget build(context){
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'The \'Rock Paper Scissors\' game',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height: 100,
          child: BottomAppBar(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1, vertical: 11),
              child: Text(
                "made by Sauhard Jadhav",
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.right,
              ),
            ),
          ),
        ),
        body: SizedBox(
          child: GradientContainer(
            Color.fromARGB(255, 33, 5, 109),
            Color.fromARGB(255, 68, 21, 149),
          ),
        ),
      );
  }
}