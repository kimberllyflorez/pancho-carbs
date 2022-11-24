
import 'package:flutter/material.dart';
import 'package:projects_study/data_user/calculation_ecuation/calculate_calorie.dart';
import 'package:projects_study/data_user/calculation_ecuation/user_data.dart';

class GetDataUser extends ChangeNotifier{
GetDataUser(){
  userInformation;
  calUser;
}
final userInformation =  UserRepository().getUser();
final calUser = CalculateCalorie().dataCalorie();
//dataCalorie();
}

