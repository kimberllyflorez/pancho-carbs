import 'package:flutter/material.dart';
import 'package:projects_study/data_user/helpers/helpers.dart';
import 'package:projects_study/data_user/ui/widgets/appbar_question_datauser.dart';

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
            const CustomBackGround(
              question: 'What is your \n weight',
            ),
            InputTextWd(
              hintText: 'Put your weight in here',
              controllerData: weightController,
              keyValue: PreferenceConst.weight,
            ),
            SaveInfoButton(
              textButton: 'Save data',
              function: () => Navigator.pushNamed(context, 'heightPg'),
            ),
          ],
        ),
      ),
    );
  }
}
