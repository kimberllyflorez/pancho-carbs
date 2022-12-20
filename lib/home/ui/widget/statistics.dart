import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:projects_study/data_user/provider/get_data_provider.dart';

import 'package:projects_study/pancho_theme/pancho_theme.dart';
import 'package:provider/provider.dart';

class Statistics extends StatelessWidget {
  const Statistics({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = context.watch<GetDataUserProvider>();
    final calorieObject = value.calorieObjective.toString();
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(14),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: PanchoTheme.primary,
      ),
      child: Column(
        children: [
           Align(
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
               const  Text(
                  'Statistics',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 18),
                ),
                Text('Cal objective: $calorieObject'),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CircularCaloriePercent(),
              LinerMacrosIndicator(),
            ],
          ),
        ],
      ),
    );
  }
}

class CircularCaloriePercent extends StatelessWidget {
  const CircularCaloriePercent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      center:const Text('value'),
      progressColor: Colors.cyanAccent,
      radius: 50,
      percent: 0.3,
    );
  }
}

class LinerMacrosIndicator extends StatelessWidget {
  const LinerMacrosIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LinerIndicatorWd(
          percentValue: 0.3,
          nameItemPercent: 'carbs',
        ),
        LinerIndicatorWd(
          nameItemPercent: 'protein',
          percentValue: 0.3,
        ),
        LinerIndicatorWd(
          nameItemPercent: 'Fat',
          percentValue: 0.3,
        ),
      ],
    );
  }
}

class LinerIndicatorWd extends StatelessWidget {
  String? nameItemPercent;
  double percentValue;
  Color? colorProgress;

  LinerIndicatorWd({
    this.colorProgress,
    this.nameItemPercent,
    required this.percentValue,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(nameItemPercent ?? ''),
        ),
        LinearPercentIndicator(
          padding: const EdgeInsets.only(left: 0),
          width: 200,
          percent: percentValue,
          progressColor: colorProgress ?? Colors.cyanAccent,
        ),
      ],
    );
  }
}
