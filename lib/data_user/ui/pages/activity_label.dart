import 'package:flutter/material.dart';
import 'package:projects_study/data_user/helpers/helpers.dart';
import 'package:projects_study/data_user/ui/widgets/select_button_wd.dart';
import 'package:projects_study/data_user/ui/widgets/welcome_custom_appbar.dart';

class ActivityLabelPg extends StatefulWidget {
  const ActivityLabelPg({
    Key? key,
  }) : super(key: key);

  @override
  State<ActivityLabelPg> createState() => _ActivityLabelPgState();
}

class _ActivityLabelPgState extends State<ActivityLabelPg> {
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
        children: [
          const CustomAppBar(
            question: 'Please, select your gender',
          ),
          Expanded(
            child: Container(),
          ),
          SelectButtonWd(
            nameButton: 'i do not exercise',
            function: () => selectActivityLabel(0),
            select: value == 0,
          ),
          SelectButtonWd(
            nameButton: ' i do exercise between one to three days a week',
            function: () => selectActivityLabel(1),
            select: value == 1,
          ),
          SelectButtonWd(
            nameButton: 'i do exercise more then three timer a week  ',
            function: () => selectActivityLabel(2),
            select: value == 2,
          ),
          Expanded(
            child: Container(),
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
