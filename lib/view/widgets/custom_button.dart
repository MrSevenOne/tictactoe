import 'package:flutter/material.dart';
import 'package:tictactoe/utils/style_constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
  });
  final VoidCallback onPressed;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Text(
            buttonText,
            style: StyleConstant.buttonText,
          ),
        ));
  }
}
