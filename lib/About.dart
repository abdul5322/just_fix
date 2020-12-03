import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'About',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600
          ),
        ),
      ),
    );
  }
}
