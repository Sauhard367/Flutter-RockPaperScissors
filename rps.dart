import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class Play extends StatefulWidget {
  const Play({super.key});

  @override
  State<Play> createState() {
    return _PlayState();
  }
}

class _PlayState extends State<Play> {
  var currenthand1 = 1;
  var currenthand2 = 2;
  var counter1 = 0;
  var counter2 = 0;

  var pointsA = 0;
  var pointsB = 0;

  void changeHand1() {
    setState(() {
      currenthand1 = randomizer.nextInt(3) + 1;
      counter1++;
      cheaker();
    });
  }

  void changeHand2() {
    setState(() {
      currenthand2 = randomizer.nextInt(3) + 1;
      counter2++;
      cheaker();
    });
  }

  void cheaker() {
    if (counter1 == counter2) {
      if (currenthand1 == currenthand2) {
        
      } else if (
          (currenthand1 == 1 && currenthand2 == 2) ||
          (currenthand1 == 3 && currenthand2 == 1) ||
          (currenthand1 == 2 && currenthand2 == 3)) {
        pointsA++;
      }
      else{
        pointsB++;
      }

      // if (currenthand1 == currenthand2) {
      //   setState(() {
      //     pointsA++;
      //   });
      // }
    }
  }

  Widget winner() {
    if(counter2 == 30){
      resetButton();
    return Text("Draw", style: TextStyle(fontSize: 40, color: Colors.red),);
    }
    else {return Text(" ");}
    
    
    
  }

  void resetButton() {
    setState(() {
      counter1 = counter2 = 0;
      pointsA = pointsB = 0;
      currenthand1 = randomizer.nextInt(3) + 1; 
      currenthand2 = randomizer.nextInt(3) + 1; 
      });
}


  Widget printMsg(){
    if(pointsA  == 10){
      resetButton();
     return Text("PLAYER A WON", style: TextStyle(fontSize: 40, color: Colors.red),);
     
      
    }
    else if(pointsB == 10){

      resetButton();
      return Text("PLAYER B WON", style: TextStyle(fontSize: 40, color: Colors.red),);
    }
    return Text("Game On....",style: TextStyle(fontSize: 20, color: Colors.red),);
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        printMsg(),
        winner(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text(
              'Points: $pointsA',
              style: TextStyle(color: Colors.yellow, fontSize: 35),
            ),

            const SizedBox(width: 50),
            Text(
              'Points: $pointsB',
              style: TextStyle(color: Colors.yellow, fontSize: 35),
            ),
          ],
        ),
        Row(
          children: [
            
            Column(
              
              children: [
                Text(
                  'Player A',
                  style: TextStyle(fontSize: 30, color: Colors.redAccent),
                ),
                
                Image.asset(
                  'assets/images/rps-$currenthand1.png',
                  width: 200,
                ),
                Text(
                  'Counter: $counter1',
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                ),
                TextButton(
                  onPressed: changeHand1,
                  style: TextButton.styleFrom(
                    // padding: const EdgeInsets.only(
                    //   top: 20,
                    // ),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 28),
                  ),
                  child: const Text('Hand1'),
                ),
              ],
            ),

            Column(
              children: [
                Text(
                  'Player B',
                  style: TextStyle(fontSize: 30, color: Colors.redAccent),
                ),
                
                Image.asset(
                  'assets/images/rps-$currenthand2.png',
                  width: 200,
                ),
                Text(
                  'Counter: $counter2',
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                ),
                TextButton(
                  onPressed: changeHand2,
                  style: TextButton.styleFrom(
                    // padding: const EdgeInsets.only(
                    //   top: 20,
                    // ),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 28),
                  ),
                  child: const Text('Hand2'),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),

        TextButton(
          onPressed: resetButton,
          child: Text(
            "RESET",
            style: TextStyle(
              fontSize: 25,
              color: const Color.fromARGB(255, 61, 159, 64),
            ),
          ),
        ),
      ],
    );
  }
}
