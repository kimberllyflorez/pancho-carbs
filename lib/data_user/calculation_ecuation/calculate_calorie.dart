import 'package:projects_study/data_user/calculation_ecuation/user_data.dart';
import 'package:projects_study/utils/gender.dart';

import 'constant_ecuation.dart';

Future CalculateCalorie() async {
  final repository = UserRepository();
  final dataUser = await repository.getUser();

  final geb = gebCal(dataUser);
  final eta = etaCal(geb);
  final get = getCal(eta, dataUser);

}
gebCal(dataUser) {
    if (dataUser.gender == Gender.woman) {
    final cal = ConstantsCalorieEquation.constantWoman +
        (ConstantsCalorieEquation.heightWoman * dataUser.height) +
        (ConstantsCalorieEquation.weightWoman * dataUser.weight) -
        (ConstantsCalorieEquation.ageWoman * dataUser.age);
    return cal;
  } else {
    final cal = ConstantsCalorieEquation.constantMan +
        (ConstantsCalorieEquation.heightMan * dataUser.height) +
        (ConstantsCalorieEquation.weightMan * dataUser.weight) -
        (ConstantsCalorieEquation.ageMan * dataUser.age);
    return cal;
  }
}
etaCal (get){
  final eta = get * ConstantsCalorieEquation.eta;

}
getCal (eta, dataUser){
  final geb = eta * dataUser.activity;
  return geb ;
}

