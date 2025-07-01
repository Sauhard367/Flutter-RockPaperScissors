import 'package:flutter/material.dart';

import 'package:first_app/rps.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
          stops: [0.4, 0.8],
        ),
      ),
      child: const Center(
        child: Play(),
      ),
    );
  }
}

