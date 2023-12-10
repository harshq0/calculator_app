import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final color;
  final textColor;
  final String buttonText;
  final buttonPressed;

  const MyButton(
      {required this.color,
      required this.textColor,
      required this.buttonText,
      required this.buttonPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: color,
              child: Center(
                child: Text(
                  buttonText,
                  style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            )),
      ),
    );
  }
}
