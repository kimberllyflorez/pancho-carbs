import 'package:flutter/material.dart';

class ValidatedDataUser extends StatelessWidget {
  const ValidatedDataUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('double check yout data'),
      actions: [
        FloatingActionButton(
          onPressed: () {},
          child: const Text('UNDERSTAND'),
        ),
      ],
    );
  }
}
