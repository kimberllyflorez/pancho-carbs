import 'package:flutter/material.dart';
import 'package:projects_study/data_user/helpers/helpers.dart';
import 'package:projects_study/data_user/helpers/validated_date_user/validate_gender_user.dart';
import 'package:projects_study/data_user/ui/widgets/welcome_custom_appbar.dart';
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
          const CustomAppBar(
            topPadding: 100,
            bottomPadding: 100,
            question: 'Please, select your gender',
          ),
          Expanded(child: Container()),
          SelectButtonWd(
            nameButton: 'Women',
            function: () => validateGender(
                Gender.woman, value, create(Gender.woman), context),
            select: value == Gender.woman,
          ),
          SelectButtonWd(
            nameButton: 'man',
            function: () => validateGender(Gender.man, value, create(Gender.man), context),
            select: value == Gender.man,
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }

  create(Gender gender) {
    setState(() {
      value = gender;
    });
  }

  //Future<void> selectGender(Gender gender) async {
  //  print(gender.index);
  //  await PreferenceUtils.setString(PreferenceConst.gender, gender.name);
//
  //  if (gender == Gender.none) {
  //    const ValidatedData(
  //      messageTitle: 'Gender',
  //      messageSubtitle: 'please, double check to gender',
  //    );
  //  } else {
  //    navigator();
  //  }
  //  setState(() {
  //    value = gender;
  //  });
  //}

  void navigator() {
    Navigator.pushNamed(context, 'activity');
  }
}
