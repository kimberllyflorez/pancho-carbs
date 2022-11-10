import 'package:flutter/material.dart';
import 'package:projects_study/data_user/helpers/helpers.dart';

class HeightPg extends StatefulWidget {
  const HeightPg({Key? key}) : super(key: key);

  @override
  State<HeightPg> createState() => _HeightPgState();
}

class _HeightPgState extends State<HeightPg> {
  late final TextEditingController heightController;

  @override
  void initState() {
    heightController = TextEditingController(text: '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InputTextWd(
            controllerData: heightController,
            questionPg: 'What is your height',
          ),
          SaveInfoButton(
            function: () {
              Navigator.pushNamed(context, 'genderPg');
            },
          ),
        ],
      ),
    );
  }
}
