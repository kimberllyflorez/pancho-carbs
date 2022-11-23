import 'package:flutter/material.dart';
import 'package:projects_study/data_user/helpers/helpers.dart';
import 'package:projects_study/data_user/ui/widgets/popup_validated.dart';
import 'package:projects_study/data_user/ui/widgets/welcome_custom_appbar.dart';
import 'package:projects_study/palette/palette.dart';

class FirstWelcomePg extends StatelessWidget {
  const FirstWelcomePg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.write,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomAppBar(),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, right: 10.0),
              child: Text(
                'If you want to improve your fysical'
                    ' state \n this is the correct aplication',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Palette.gray),
              ),
            ),
            Image.asset('assets/cal.jpg'),
            InkWell(
              onTap: ()=>validatedCondition(context),
              child: Container(
                decoration: BoxDecoration(
                    color: Palette.write,
                    borderRadius: BorderRadius.circular(16)),
                child: Text(
                  'CONTINUE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Palette.gray,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> validatedCondition(BuildContext context) async {

    Navigator.pushNamed(context, 'agePg');

    //todo: implement the validation that i want  //

  }


}