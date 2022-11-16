import 'package:flutter/material.dart';
import 'package:projects_study/pallete/palette.dart';
class CustomBackGround extends StatelessWidget {
  const CustomBackGround({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        alignment: Alignment.center,
        child: Text('AQUI VA UN STACK'),
        color: Palette.primary,
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.7,
      ),
      clipper: CustomClipPath(),
    );
  }
}
class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height /1.5);

    path.quadraticBezierTo(size.width/2 ,size.height,   size.width, size.height/1.5);
    path.lineTo(size.width, 0);
    //path.moveTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}