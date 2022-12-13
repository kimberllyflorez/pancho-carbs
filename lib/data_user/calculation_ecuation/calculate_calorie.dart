import 'package:projects_study/data_user/calculation_ecuation/user_data.dart';
import 'package:projects_study/data_user/model/user_data_model.dart';
import 'package:projects_study/utils/gender.dart';

import 'constant_equation.dart';

class CalculateCalorie {
  Future<double> dataCalorie() async {
    final repository = UserRepository();
    final dataUser = await repository.getUser();
    final geb = gebValue(dataUser);
    final eta = etaValue(geb);
    final get = getValue(eta, dataUser);
    return get;
  }

  double gebValue(UserDataModel dataUser) {
    double geb = 0.0;
    if (dataUser.gender == Gender.woman) {
      geb = baseEquation(
        ConstantsCalorieEquation.constantWoman,
        ConstantsCalorieEquation.heightWoman,
        ConstantsCalorieEquation.weightWoman,
        ConstantsCalorieEquation.ageWoman,
        dataUser,
      );
    } else {
      geb = baseEquation(
        ConstantsCalorieEquation.constantMan,
        ConstantsCalorieEquation.heightMan,
        ConstantsCalorieEquation.weightMan,
        ConstantsCalorieEquation.ageMan,
        dataUser,
      );
    }
    print('CALORIE: ${geb}');
    return geb;
  }

  double etaValue(double get) {
    return get * ConstantsCalorieEquation.eta;
  }

  double getValue(double eta, UserDataModel dataUser) {
    return eta * dataUser.activityLevel;
  }

  double baseEquation(
    double constGender,
    double constHeight,
    double constWeight,
    double constAge,
    UserDataModel dataUser,
  ) {
    return (constGender * (constHeight * dataUser.height) +
        (constWeight * dataUser.weight) -
        (constAge * dataUser.age));
  }
}
