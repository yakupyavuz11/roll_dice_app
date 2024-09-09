import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
   StyledText( this.text, {super.key});
  final text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:  TextStyle(
          color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
