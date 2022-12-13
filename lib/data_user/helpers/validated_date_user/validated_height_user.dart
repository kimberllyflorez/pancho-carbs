import 'package:flutter/material.dart';
import 'package:projects_study/data_user/helpers/preference_data_user/preference_utils.dart';
import 'package:projects_study/data_user/ui/widgets/popup_validated.dart';

class ValidateHeight {

  validatedHeight(String key, String value, BuildContext context,
      String route) {
    final height = double.tryParse(value);
    if (height == null) {
      showDialog<void>(
        context: context,
        builder: (BuildContext context) =>
        const ValidatedData(messageTitle: 'Enter you height'),
      );
    } else if (height <= 20 || height >= 300) {
      showDialog<void>(
        context: context,
        builder: (BuildContext context) =>
        const ValidatedData(
          messageTitle:
          'Please, double check the value enter in your height if that '
              'is correct you should attend a professional attention',
        ),
      );
    } else {
      saveData(key, value);
      Navigator.pushNamed(context, route);
    }
    print(height);
  }

  Future<void> saveData(String key, String value) async {
    await PreferenceUtils.setString(key, value);
    final cosito = await PreferenceUtils.getString(key);
    print('El cosito : $cosito');
  }
}