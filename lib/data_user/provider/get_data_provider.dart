import 'package:flutter/material.dart';
import 'package:projects_study/data_user/calculation_ecuation/calculate_calorie.dart';
import 'package:projects_study/data_user/calculation_ecuation/user_data.dart';
import 'package:projects_study/data_user/model/user_data_model.dart';
import 'package:projects_study/utils/gender.dart';

class GetDataUserProvider extends ChangeNotifier {
  double calorieObjective = 0.0;
  UserDataModel dataModel = UserDataModel(
    gender: Gender.none,
    activityLevel: 3,
    age: 0,
    height: 0.0,
    weight: 0.0,
  );

  GetDataUserProvider() {
    getCalorieObjective();
    getDataUser();
  }

  Future<void> getCalorieObjective() async {
    calorieObjective = await CalculateCalorie().dataCalorie();
    notifyListeners();
  }

  Future<void> getDataUser() async {
    dataModel = await UserRepository().getUser();
    notifyListeners();
  }
}
