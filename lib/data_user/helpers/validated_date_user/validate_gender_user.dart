import 'package:flutter/cupertino.dart';
import 'package:projects_study/data_user/helpers/helpers.dart';
import 'package:projects_study/utils/gender.dart';

Future<void> selectGender(String key, Gender gender, String value,
    BuildContext context, Function setState) async {
  print(gender.index);
  await PreferenceUtils.setString(PreferenceConst.gender, gender.name);

  if (gender == Gender.none) {
    const ValidatedData(
      messageTitle: 'Gender',
      messageSubtitle: 'please, double check to gender',
    );
  } else {
    Navigator.pushNamed(context, 'activity');
    save(key, value);
  }
  setState(() {
    //value = gender;
  });

}

Future<void> save(String key, String value)async {
  await PreferenceUtils.setString(key, value);

}