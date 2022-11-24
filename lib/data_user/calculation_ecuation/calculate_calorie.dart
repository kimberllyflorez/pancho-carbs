import 'package:projects_study/data_user/calculation_ecuation/user_data.dart';
import 'package:projects_study/utils/gender.dart';

import 'constant_equation.dart';

class CalculateCalorie {
  CalculateCalorie() {
    dataCalorie();
  }

  Future dataCalorie() async {
    final repository = UserRepository();
    final dataUser = await repository.getUser();
    final geb = gebValue(dataUser);
    final eta = etaValue(geb);
    final get = getValue(eta, dataUser);
    return get;
  }
}

gebValue(dataUser) {
  double geb = 0.0;
  if (dataUser.gender == Gender.woman) {
    geb = baseEquation(
        ConstantsCalorieEquation.constantWoman,
        ConstantsCalorieEquation.heightWoman,
        ConstantsCalorieEquation.weightWoman,
        ConstantsCalorieEquation.ageWoman,
        dataUser);
  } else {
    geb = baseEquation(
        ConstantsCalorieEquation.constantMan,
        ConstantsCalorieEquation.heightMan,
        ConstantsCalorieEquation.weightMan,
        ConstantsCalorieEquation.ageMan,
        dataUser);
  }
  print('CALORIE: ${geb}');
  return geb;
}

etaValue(get) {
  return get * ConstantsCalorieEquation.eta;
}

getValue(eta, dataUser) {
  return eta * dataUser.activity;
}

baseEquation(constGender, constAge, constHeight, constWeight, dataUser) {
  (constGender * (constHeight * dataUser.height) +
      (constWeight * dataUser.weight) -
      (constAge * dataUser.age)
  );
}