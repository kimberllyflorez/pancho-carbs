import 'package:flutter/material.dart';
import 'package:projects_study/data_user/helpers/helpers.dart';
import 'package:projects_study/data_user/ui/widgets/welcom_custom_appbar.dart';
import 'package:projects_study/utils/gender.dart';

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
        children: [
          CustomAppBar(
            question: 'Please, select your gender',
          ),
          SizedBox(height: 20,),
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
    print(gender.index);
    Navigator.pushNamed(context, 'activity');
    await PreferenceUtils.setString(PreferenceConst.gender, gender.name);
    setState(() {
      value = gender;
    });
  }
}
