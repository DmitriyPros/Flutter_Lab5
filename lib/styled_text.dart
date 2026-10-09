import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  const StyledText(this.text, {super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.greenAccent,
          fontSize: 32,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
