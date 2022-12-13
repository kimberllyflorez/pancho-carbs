import 'package:flutter/material.dart';
import 'package:projects_study/data_user/helpers/preference_data_user/preference_const.dart';
import 'package:projects_study/data_user/helpers/preference_data_user/preference_utils.dart';
import 'package:projects_study/data_user/ui/widgets/popup_validated.dart';

void validatedWeight(
    String key, String value, BuildContext context, String route) {
  print('weight: $value');
  final weight = double.tryParse(value);

  if (weight == null) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) => const ValidatedData(
        messageSubtitle: 'Please, enter your weight',
      ),
    );
  } else if (weight < 30 || weight > 200) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) => const ValidatedData(
        messageSubtitle: ' In your you should  attend professional attention',
      ),
    );
  } else {
    saveData(key, value);
    Navigator.pushNamed(context, route);
  }
  print(weight);
}

Future<void> saveData(String key, String value) async {
  await PreferenceUtils.setString(key, value);
  final weightcosito =   await PreferenceUtils.getString(key);
  print('weight cosito: $weightcosito');

}
