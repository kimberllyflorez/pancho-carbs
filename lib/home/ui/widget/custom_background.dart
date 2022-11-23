import 'package:flutter/material.dart';
import 'package:projects_study/palette/palette.dart';

class HomeBackGround extends StatelessWidget {
  final List<Widget> widgets;

  const HomeBackGround({
    Key? key,
    required this.widgets,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: CustomClipPath(),
          child: Container(
            alignment: Alignment.center,
            color: Palette.primary,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
              children: widgets,
            ),
          ),
        ),

      ],
    );
  }
}


class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height / 1.5);

    path.quadraticBezierTo(
        size.width / 2, size.height/2, size.width, size.height / 1.5);
    path.lineTo(size.width, 0);
    //path.moveTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
