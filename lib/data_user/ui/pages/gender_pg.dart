import 'package:flutter/material.dart';
import 'package:projects_study/data_user/helpers/helpers.dart';

enum Gender {
  woman,
  man,
  none,
}

class GenderPg extends StatefulWidget {
  const GenderPg({
    Key? key,
  }) : super(key: key);

  @override
  State<GenderPg> createState() => _GenderPgState();
}

class _GenderPgState extends State<GenderPg> {
  late bool women = true;
  late Gender value;

  @override
  void initState() {
    value = Gender.none;
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
            nameButton: 'Women',
            funtion: () => selectGender(
              Gender.woman,
            ),
            select: value == Gender.woman,
          ),
          SelectButtonWd(
            nameButton: 'man',
            funtion: () => selectGender(
              Gender.man,
            ),
            select: value == Gender.man,
          ),
        ],
      ),
    );
  }

  Future<void> selectGender(Gender gender) async {
    Navigator.pushNamed(context, 'activity');
    await PreferenceUtils.setString(PreferenceConst.gender, gender.name);
    setState(() {
      value = gender;
    });
  }
}
