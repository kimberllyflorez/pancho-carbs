import 'package:flutter/material.dart';
import 'package:projects_study/palette/palette.dart';

class SaveInfoButton extends StatelessWidget {
  final String? textButton;
  final Function()? function;

  const SaveInfoButton({
    Key? key,
    this.textButton,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: function,
      child: Container(
        decoration: BoxDecoration(
          color: Palette.gray,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.all(6),
        child: Text(
          textButton ?? 'Continue',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
