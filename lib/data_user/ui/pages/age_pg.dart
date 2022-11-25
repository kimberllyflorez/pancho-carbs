import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projects_study/data_user/helpers/helpers.dart';
import 'package:projects_study/data_user/helpers/validated_date_user/validated_age_User.dart';
import 'package:projects_study/data_user/ui/widgets/appbar_question_wd.dart';

import 'package:projects_study/palette/palette.dart';

class AgePg extends StatefulWidget {
  const AgePg({super.key});

  @override
  State<AgePg> createState() => _AgePgState();
}

class _AgePgState extends State<AgePg> {
  late final TextEditingController ageController;

  @override
  void initState() {
    ageController = TextEditingController();
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
              CustomBackGround(
                widgets: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100, bottom: 120),
                    child: Text(
                      ' What is your \n age',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 36,
                        color: Palette.write,
                      ),
                    ),
                  )
                ],
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
                    function: () =>
                        validatedDataUser(
                            PreferenceConst.age,
                            ageController.text,
                            context,

                        ),
                  )
                ],
              ),
            ],
          ),
        ));
  }

  Future<void> saveAge(String key, String value) async {
    await PreferenceUtils.setString(key, value);

    print('age: ${value}');
    final age = int.tryParse(value);

    if (age == null) {
      showDialog<void>(
        context: context,
        builder: (BuildContext context) =>
        const ValidatedData(
          messageSubtitle: 'enter your age',
        ),
      );
    } else if (age <= 18 || age >= 100) {
      showDialog<void>(
        context: context,
        builder: (BuildContext context) =>
        const ValidatedData(
          messageSubtitle: 'please validated your age ',
        ),
      );
    } else {
      navigator();
    }
    print(age);
  }

  void navigator() {
    Navigator.pushNamed(context, 'c');
  }
}
