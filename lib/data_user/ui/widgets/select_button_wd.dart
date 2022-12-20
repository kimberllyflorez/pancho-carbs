import 'package:flutter/material.dart';
import 'package:projects_study/pancho_theme/pancho_theme.dart';

class SelectButtonWd extends StatelessWidget {
  final String nameButton;
  final Function()? function;
  final bool select;


  const SelectButtonWd({
    Key? key,
    this.select = false,
    this.function,
    required this.nameButton,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        splashColor: PanchoTheme.primary,
        color: select ? PanchoTheme.primary : Colors.white10,
        onPressed: change,
        //select = !select;
        //setState(() {});

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              nameButton,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            select ? const Icon(Icons.check) : const Text(''),
          ],
        ),
      ),
    );
  }

  change() {
    final change = function;
    if (change != null) {
      change();
    }
  }
}
