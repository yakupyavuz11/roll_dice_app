import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GraddientContainer(
        color1:  Color.fromARGB(31, 0, 255, 251),
        color2: Color.fromARGB(54, 112, 3, 255),
      )),
    ),
  );
}

class GraddientContainer extends StatelessWidget {
  const GraddientContainer({
    super.key,
    required this.color1,
    required this.color2,
  });
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: StyledText("selam,dunya"),
      ),
    );
  }
}
