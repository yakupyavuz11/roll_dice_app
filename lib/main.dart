import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';
import 'package:roll_dice_app/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          color1: Color.fromARGB(31, 0, 255, 251),
          color2: Color.fromARGB(255, 112, 3, 255),
        ),
      ),
    ),
  );
}

class GradientContainer extends StatefulWidget {
  const GradientContainer({
    super.key,
    required this.color1,
    required this.color2,
  });

  final Color color1;
  final Color color2;

  @override
  _GradientContainerState createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [widget.color1, widget.color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
   child:const Center(child: DiceRoller(),
   ),
    );

  }
}
