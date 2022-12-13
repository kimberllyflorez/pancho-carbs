
import 'package:projects_study/utils/gender.dart';

extension GenderString on String {
  Gender get gender {
    Map<String, Gender> genders = {
      "woman": Gender.woman,
      "man": Gender.man,
    };
    return genders[this] ?? Gender.none;
  }
}