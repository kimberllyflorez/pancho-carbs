import 'package:projects_study/data_user/helpers/preference_data_user/preference_const.dart';
import 'package:projects_study/data_user/helpers/preference_data_user/preference_utils.dart';
import 'package:projects_study/data_user/model/user_data_model.dart';
import 'package:projects_study/utils/extensions.dart';
import 'package:projects_study/utils/gender.dart';

class UserRepository {
  Future<UserDataModel> getUser() async {
    double height = await getHeight();
    double weight = await getWeight();
    int age = await getAge();
    int activity = await getLevelActivity();
    Gender gender = await getGender();
    return UserDataModel(
      age: age,
      weight: weight,
      height: height,
      activityLevel: activity,
      gender: gender,
    );
  }

  Future<double> getHeight() async {
    final data = await PreferenceUtils.getString(PreferenceConst.height);
    final value = double.parse(data);
    return value;
  }

  Future<double> getWeight() async {
    final data = await PreferenceUtils.getString(PreferenceConst.weight);

    return double.parse(data);
  }

  Future<int> getAge() async {
    final data = await PreferenceUtils.getString(PreferenceConst.age);
    return int.parse(data);
  }

  Future<Gender> getGender() async {
    final String gender =
        await PreferenceUtils.getString(PreferenceConst.gender);
    final data = gender.gender;
    return data;
  }

  Future<int> getLevelActivity() async {
    return await PreferenceUtils.getInt(PreferenceConst.activity);
  }
}
