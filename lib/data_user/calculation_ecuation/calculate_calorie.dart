import 'package:projects_study/data_user/calculation_ecuation/user_data.dart';
import 'package:projects_study/data_user/model/user_data_model.dart';

import '../ui/pages/gender_pg.dart';
import 'constant_ecuation.dart';

Future CalculateCalorie() async {

  final repository = UserRepository();

  final dataUser = await repository.getUser();

  if (dataUser.gender == Gender.woman) {
    final cal = (CounterCalorieConstants.constantWoman * dataUser.age)+
        (CounterCalorieConstants.constantWoman  * 1) -(7);
    return cal;
  }else{
  }
}

