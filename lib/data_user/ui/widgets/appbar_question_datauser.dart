import 'package:flutter/material.dart';
import 'package:projects_study/palete/palette.dart';

class CustomBackGround extends StatelessWidget {
  final List<Widget>? widgets;
  final String? question;

  const CustomBackGround({

    Key? key,  this.widgets, this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipPath(),
      child: Container(
        alignment: Alignment.center,
        color: Palette.primary,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.7,
        child: Stack(
            children: [

              Text(
                question ??
                ' ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36,
                  color: Palette.write,
                ),
              )
            ]
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {

    var path = Path();
    path.lineTo(0, size.height / 1.3);

    path.quadraticBezierTo(
        size.width/2 , size.height, size.width, size.height / 1.3);
    path.lineTo(size.width, 0);
    //path.moveTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
