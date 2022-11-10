import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projects_study/data_user/helpers/helpers.dart';

class AgePg extends StatefulWidget {
  const AgePg({super.key});

  @override
  State<AgePg> createState() => _AgePgState();
}

class _AgePgState extends State<AgePg> {
  late final TextEditingController ageController;

  @override
  void initState() {
    ageController = TextEditingController(text: '');
    super.initState();
  }

  @override
  void dispose() {
    //clean
    ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InputTextWd(
            questionPg: 'What is your age',
            controllerData: ageController,
            keyValue: ageController.text,
            hintText: 'input your age',
            validate: [LengthLimitingTextInputFormatter(3)],
          ),
          SaveInfoButton(
            textButton: 'Save Data',
            function: () => Navigator.pushNamed(context, 'weightPg'),
          )
        ],
      ),
    );
  }

  void saveAge(String key, String value) async {
    await PreferenceUtils.setString(key, value);
  }
}
