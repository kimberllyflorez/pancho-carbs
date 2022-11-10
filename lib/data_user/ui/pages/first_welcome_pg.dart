import 'package:flutter/material.dart';

class FirstWelcomePg extends StatelessWidget {
  const FirstWelcomePg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xFF9c88ff),
              Color(0xFFa8c0ff),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter calorie app ',
              style: TextStyle(
                fontSize: 27,
              ),
              textAlign: TextAlign.center,
            ),
            const Expanded(
              child: Text(
                'Welcome to counter calorie, if you want to improve your fysical'
                ' state this is the correct aplication',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'agePg');
              },
              child: const Text(
                'Are you have 18 year or old',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
