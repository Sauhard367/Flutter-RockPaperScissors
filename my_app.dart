import 'package:flutter/material.dart';
import 'package:first_app/scaffold.dart';

class RockPaperScissor extends StatelessWidget {
  const RockPaperScissor({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 154, 124, 237),
        ),
        textTheme: TextTheme(bodyMedium: TextStyle()),
      ),
      home: ScaffoldParameter(),
    );
  }
}
