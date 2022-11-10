import 'package:projects_study/data_user/helpers/preference_const.dart';
import 'package:projects_study/data_user/helpers/preference_utils.dart';

class UserData {

  userData(){
    getHeight();
    getWeight();
    getAge();
    getGender();
  }

  Future getHeight() async {
    final data = await PreferenceUtils.getString(PreferenceConst.height);
    return int.parse(data);
  }

  Future getWeight() async {
   final data =  await PreferenceUtils.getString(PreferenceConst.weight);
    return int.parse(data);
  }

  Future getAge() async {
    final data = await PreferenceUtils.getString(PreferenceConst.age);
    return int.parse(data);
  }
  Future getGender()async{
    await PreferenceUtils.getString(PreferenceConst.gender);
  }
}
