import 'package:flutter/material.dart';
import 'package:projects_study/pancho_theme/pancho_theme.dart';

class ValidatedData extends StatelessWidget {
  final String? messageTitle;
  final String? messageSubtitle;
  final String? messageButton;

  const ValidatedData({
    Key? key,
    this.messageSubtitle,
    this.messageTitle,
    this.messageButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: PanchoTheme.primary,
      title: Text(messageTitle ?? 'Information is entered is not valid'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(messageSubtitle ?? ''),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            messageButton ?? 'Understand',
            style: TextStyle(color: PanchoTheme.write),
          ),
        ),
      ],
    );
  }
}
