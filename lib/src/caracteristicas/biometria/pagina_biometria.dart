
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

import 'package:appcine/src/centro/constantes/constantes.dart';

class BiometricsPage extends StatelessWidget {
  const BiometricsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          faceIDLottie,
          width: 250,
          height: 250,
          frameRate: FrameRate(250),
          repeat: false, 
        ),
      ),
    );
  }
}