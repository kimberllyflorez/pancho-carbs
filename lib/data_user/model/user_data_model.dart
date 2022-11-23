import 'package:projects_study/utils/gender.dart';

class UserDataModel {
  final int age;
  final int activityLevel;
  final Gender gender;
  final double height;
  final double weight;
  final double? calories;

  //final int goalWeight;

  UserDataModel({
      this.gender = Gender.none,
      required this.weight,
      required this.height,
      required this.age,
      required this.activityLevel,
       this.calories
      //required this.goalWeight ,

      });

  factory UserDataModel.fromMap(Map<String, dynamic> json) => UserDataModel(
      weight: json["weight"],
      gender: json["gender"],
      height: json["height"],
      age: json["age"],
      activityLevel: json["activity_level"],
      calories: json["calorie"]
      //goalWeight: json["goal_weight"],
      );

  Map<String, dynamic> toMap() => {
        "weight": weight,
        "height": height,
        "gender": gender,
        "age": age,
        "activity_level": activityLevel,
        "calories": calories,
        //"goal_weight": goalWeight,
      };
}
