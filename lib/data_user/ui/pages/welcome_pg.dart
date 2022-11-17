import 'package:flutter/material.dart';
import 'package:projects_study/data_user/ui/widgets/welcom_custom_appbar.dart';
import 'package:projects_study/palete/palette.dart';

class FirstWelcomePg extends StatelessWidget {
  const FirstWelcomePg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.write,
      body: Column(
        children: [
          const CustomAppBar(),
          const SizedBox(height: 60),
           Padding(
             padding: const EdgeInsets.only(left: 10.0,right: 10.0),
             child: Text(
              'If you want to improve your fysical'
              ' state \n this is the correct aplication',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Palette.gray
              ),

          ),
           ),
            Image.asset('assets/cal.jpg'),

          Container(
            decoration: BoxDecoration(
              color: Palette.write,
              borderRadius: BorderRadius.circular(16)
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'agePg');
              },
              child:   Container(
                width: double.infinity,
                child:  Text(
                  'CONTINUE',textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Palette.gray,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

