import 'package:projects_study/data_user/helpers/preference_const.dart';
import 'package:projects_study/data_user/helpers/preference_utils.dart';
import 'package:projects_study/data_user/model/user_data_model.dart';


class UserRepository {

  Future<UserDataModel> getUser() async {
    double height = await getHeight();
    double weight = await getWeight();
    int age = await getAge();
    int activity = await getLevelActivity();
    //Gender gender = await getGender().
    return UserDataModel(
      age: age,
      weight: weight,
      height: height,
      activityLevel: activity

    );
  }

  Future<double> getHeight() async {
    final data = await PreferenceUtils.getString(PreferenceConst.height);
    return double.parse(data);
  }

  Future<double> getWeight() async {
    final data = await PreferenceUtils.getString(PreferenceConst.weight);
    return double.parse(data);
  }

  Future<int> getAge() async {
    final data = await PreferenceUtils.getString(PreferenceConst.age);
    return int.parse(data);
  }

  Future<String> getGender() async {
    return await PreferenceUtils.getString(PreferenceConst.gender);
  }

  Future<int> getLevelActivity() async {
    return await PreferenceUtils.getInt(PreferenceConst.activity);
  }
}
