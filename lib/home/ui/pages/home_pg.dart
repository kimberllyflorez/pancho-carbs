import 'package:flutter/material.dart';
import 'package:projects_study/home/ui/widget/custom_background.dart';

class HomePg extends StatelessWidget {
  const HomePg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeBackGround(
            widgets: [],
          )
        ],
      ),
    );
  }
}
