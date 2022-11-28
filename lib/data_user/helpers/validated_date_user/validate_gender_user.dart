import 'package:flutter/cupertino.dart';
import 'package:projects_study/data_user/helpers/helpers.dart';
import 'package:projects_study/utils/gender.dart';

validateGender(
  Gender gender,
  Gender value,
  Function? function,
  BuildContext context,
) {
  print(gender.index);

  if (gender == Gender.none) {
    const ValidatedData(
      messageTitle: 'Gender',
      messageSubtitle: 'please, double check to gender',
    );
  } else {
    save(PreferenceConst.gender, gender.name);
    Navigator.pushNamed(context, 'activity');
  }
  function;
}

Future save(String key, String value) async {
  await PreferenceUtils.setString(key, value);
}
