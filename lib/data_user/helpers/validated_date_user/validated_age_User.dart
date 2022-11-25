
import 'package:flutter/material.dart';
import 'package:projects_study/data_user/helpers/preference_data_user/preference_utils.dart';
import 'package:projects_study/data_user/ui/widgets/popup_validated.dart';



void validatedDataUser(String key, String value, BuildContext context)  {
  
  print('age: ${value}');
  final age = int.tryParse(value);

  if (age == null) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) => const ValidatedData(
        messageSubtitle: 'enter your age',
      ),
    );
  } else if (age <= 18 || age >= 100) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) => const ValidatedData(
        messageSubtitle: 'please validated your age ',
      ),
    );
  } else {
     saveData(key, value);
     Navigator.pushNamed(context, 'weightPg');
  }
  print(age);
  
}

Future <void> saveData (String key, String value)async{
  await PreferenceUtils.setString(key, value);

}