import 'package:flutter/material.dart';
import 'package:projects_study/data_user/helpers/helpers.dart';
import 'package:projects_study/data_user/helpers/validated_date_user/validated_weight_user.dart';
import 'package:projects_study/data_user/ui/widgets/appbar_question_wd.dart';

import 'package:projects_study/palette/palette.dart';

class WeightPg extends StatefulWidget {
  const WeightPg({Key? key}) : super(key: key);

  @override
  State<WeightPg> createState() => _WeightPgState();
}

class _WeightPgState extends State<WeightPg> {
  late final TextEditingController weightController;

  @override
  void initState() {
    weightController = TextEditingController(text: '');
    super.initState();
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
                    'What is your \n weight',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 36,
                      color: Palette.write,
                    ),
                  ),
                ),
              ],
            ),
            InputTextWd(
              hintText: 'Put your weight in here',
              controllerData: weightController,
              keyValue: PreferenceConst.weight,
            ),
            SaveInfoButton(
              function: () => validatedWeight(
                PreferenceConst.weight,
                weightController.text,
                context,
                  'heightPg'
              ),
            ),
          ],
        ),
      ),
    );
  }
}
