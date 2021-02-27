import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Text(
        questionText,
        style: TextStyle(fontFamily: 'Times New Roman', fontSize: 25.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}
