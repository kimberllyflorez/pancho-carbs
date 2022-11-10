import 'package:flutter/material.dart';
import 'package:projects_study/data_user/helpers/helpers.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InputTextWd(
            hintText: 'Put your weight in here',
            controllerData: weightController,
            keyValue: PreferenceConst.weight,
            questionPg: 'What is your actually weight',
          ),
           SaveInfoButton(
            textButton: 'Save data',
            function:()=> Navigator.pushNamed(context, 'heightPg'),
          ),

        ],
      ),
    );
  }
}
