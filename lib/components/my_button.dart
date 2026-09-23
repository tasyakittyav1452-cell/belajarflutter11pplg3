import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  
  const MainButton({
    super.key,
    required this.text,
    required this.onPressed, required bool isOutlined,
});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed, 
        child: Text(text),
    );
  }
}