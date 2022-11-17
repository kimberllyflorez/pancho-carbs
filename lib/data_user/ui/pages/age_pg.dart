import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projects_study/data_user/helpers/helpers.dart';
import 'package:projects_study/data_user/ui/widgets/appbar_question_datauser.dart';

import 'package:projects_study/palete/palette.dart';

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
        body: SingleChildScrollView(
      child: Column(
        children: [
         const CustomBackGround(
            question: ' What is your \n age',
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputTextWd(
                controllerData: ageController,
                keyValue: ageController.text,
                hintText: 'input your age',
                validate: [
                  LengthLimitingTextInputFormatter(3),
                ],
              ),
              SaveInfoButton(
                textButton: 'Save Data',
                function: () => Navigator.pushNamed(context, 'weightPg'),
              )
            ],
          ),
        ],
      ),
    ));
  }

  void saveAge(String key, String value) async {
    await PreferenceUtils.setString(key, value);
  }
}
