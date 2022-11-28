


import 'package:projects_study/data_user/helpers/preference_data_user/preference_utils.dart';

Future validatedActivityUser(int data, String key,Function? funtion ) async {
  await Future.delayed(const Duration(milliseconds: 200));
  await PreferenceUtils.setInt(key, data);
  funtion;


}