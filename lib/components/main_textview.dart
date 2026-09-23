import 'package:flutter/material.dart';

class MainTextview extends StatelessWidget {
  final String text;

  const MainTextview({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}