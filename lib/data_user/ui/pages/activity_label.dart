import 'package:flutter/material.dart';
import 'package:projects_study/data_user/helpers/helpers.dart';
import 'package:projects_study/data_user/ui/widgets/select_button_wd.dart';

class ActivityLabel extends StatefulWidget {
  const ActivityLabel({
    Key? key,
  }) : super(key: key);

  @override
  State<ActivityLabel> createState() => _ActivityLabelState();
}

class _ActivityLabelState extends State<ActivityLabel> {
  late bool women = true;
  late int value;

  @override
  void initState() {
    value = -1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Please select your gender',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          SelectButtonWd(
            nameButton: 'i do not exercise',
            funtion: () => selectActivityLabel(0),
            select: value == 0,
          ),
          SelectButtonWd(
            nameButton: ' i do exercise between one to three days a week',
            funtion: () => selectActivityLabel(1),
            select: value == 1,
          ),
          SelectButtonWd(
            nameButton: 'i do exercise more then three timer a week  ',
            funtion: () => selectActivityLabel(2),
            select: value == 2,
          ),
        ],
      ),
    );
  }

  selectActivityLabel(int data) async {
    Navigator.pushNamed(context, 'home');
    await PreferenceUtils.setInt(PreferenceConst.activity, data);
    print('$PreferenceConst.activity');
    setState(() {
      value = data;
    });
  }
}
