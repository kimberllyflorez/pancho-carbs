import 'package:flutter/material.dart';
import 'package:projects_study/data_user/calculation_ecuation/calculate_calorie.dart';
import 'package:projects_study/data_user/calculation_ecuation/user_data.dart';
import 'package:projects_study/data_user/model/user_data_model.dart';

class GetDataUserProvider extends ChangeNotifier {

GetDataUserProvider(){
calorieUser();
}
  Future<double> calorieUser() async {
    final calorie = await CalculateCalorie().dataCalorie();
    return calorie;
  }

  Future<UserDataModel> getDataUser() async {
    final getDaraUser = await UserRepository().getUser();
    return getDaraUser;
  }
}
