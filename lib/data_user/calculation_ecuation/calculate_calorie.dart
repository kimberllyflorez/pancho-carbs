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
        );
  } else {
    geb = baseEquation(
        ConstantsCalorieEquation.constantMan,
        ConstantsCalorieEquation.heightMan,
        ConstantsCalorieEquation.weightMan,
        ConstantsCalorieEquation.ageMan,
        );
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

double baseEquation(constGender, constHeight, constWeight, constAge) {
final height = UserRepository().getHeight();
final weight = UserRepository().getHeight();
final age = UserRepository().getHeight();

 return (constGender * (constHeight * height) +
      (constWeight * weight ) -
      (constAge * age)
  );
}