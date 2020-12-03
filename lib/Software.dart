import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Software extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Lottie.network(
          'https://assets4.lottiefiles.com/packages/lf20_m6cuL6.json',
          repeat:  true,
          reverse: false,
          animate: true,
        ),
      ),
    );
  }
}
