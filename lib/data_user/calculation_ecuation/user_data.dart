import 'package:projects_study/data_user/helpers/preference_const.dart';
import 'package:projects_study/data_user/helpers/preference_utils.dart';
import 'package:projects_study/data_user/model/user_data_model.dart';


class UserRepository {
  /*double final double height;
  final double weight;
  final int age;
  final Gender gener;

  const UserData({
  required this.height,
  required this.weight,
})

  userData(){
    getHeight();
    getWeight();
    getAge();
    getGender();
  }
*/
  UserRepository();

  Future<UserDataModel> getUser() async {
    double height = await getHeight();
    double weight = await getWeight();
    int age = await getAge();
    int activity = await getLevelActivity();
    //Gender gender = await getGender().
    return getUser();
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
