import 'package:flutter/material.dart';
import 'package:projects_study/pallete/palette.dart';

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
              child:  Container(
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



class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ClipPath(
      clipper: CustomClipPath(),
      child:  Container  (
        alignment: Alignment.center,

        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.3,
        color: Palette.primary,
        child: Text(
          'WELCOME TO  \n CALORIE COUNTER ',
          style: TextStyle(
              color: Palette.write,
              fontSize: 26,
              fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height/3 );
    path.cubicTo(
        ( size.width/5),
        3*(size.height/2),
        2*(size.width/3),
        size.height/2,
        size.width,
        size.height * 0.9);


    path.lineTo(size.width, 0);
    //path.moveTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}