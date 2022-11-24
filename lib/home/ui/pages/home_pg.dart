import 'package:flutter/material.dart';
import 'package:projects_study/data_user/provider/get_data_provider.dart';
import 'package:projects_study/home/ui/widget/custom_background.dart';
import 'package:provider/provider.dart';

class HomePg extends StatelessWidget {
  const HomePg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeBackGround(
            widgets: [
              CalorieObject(),
            ],
          )
        ],
      ),
    );
  }
}

class CalorieObject extends StatelessWidget {
  const CalorieObject({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Text('put in here the calories');
  }
}
