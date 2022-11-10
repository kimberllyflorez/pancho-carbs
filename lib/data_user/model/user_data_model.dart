
import 'package:projects_study/data_user/ui/pages/gender_pg.dart';

class UserDataModel {

  final double weight;
  final Gender gender;
  final double height;
  final int age;
  final int activityLevel;
  final int goalWeight;


  UserDataModel({
    this.weight = 0.0,
    this.gender = Gender.none,
    this.height = 0.0,
    this.age = 0,
    this.activityLevel = 0,
    this.goalWeight = 0,

  });

  factory UserDataModel.fromMap(Map<String, dynamic> json) => UserDataModel(
    weight: json["weight"],
    gender: json["gender"],
    height: json["height"],
    age: json["age"],
    activityLevel: json["activity_level"],
    goalWeight: json["goal_weight"],

  );

  Map<String, dynamic> toMap() => {
    "weight": weight,
    "gender":  gender,
    "height": height,
    "age": age,
    "activity_level": activityLevel,
    "goal_weight": goalWeight,

  };
}
