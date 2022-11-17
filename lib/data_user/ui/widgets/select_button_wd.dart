import 'package:flutter/material.dart';
import 'package:projects_study/palete/palette.dart';

class SelectButtonWd extends StatelessWidget {
  final String nameButton;
  final Function()? funtion;
  final bool select;


  const SelectButtonWd({
    Key? key,
    required this.nameButton,
    this.select = false,
    this.funtion,


  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        splashColor: Palette.primary,
        color: select ? Palette.primary: Colors.white10,
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

  change(){
    final change = funtion;
    if(change != null ){
      change();
    }
  }


}
