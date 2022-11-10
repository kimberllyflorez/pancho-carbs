
import '../data_user/ui/pages/gender_pg.dart';

extension GenderString on String {
  Gender get gender {
    switch (this) {
      case 'woman':
        return Gender.woman;
      case 'man':
        return Gender.man;
      default:
        return Gender.none;
    }
  }
}