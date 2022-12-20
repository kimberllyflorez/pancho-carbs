import 'package:flutter/material.dart';
import 'package:projects_study/pancho_theme/pancho_theme.dart';

class CustomAppBar extends StatelessWidget {
  final String? question;
  final double? topPadding;
  final double? bottomPadding;
  const CustomAppBar({
    Key? key,
    this.question,
    this.topPadding,
    this.bottomPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomClipPath(),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        color: PanchoTheme.primary,
        child: Padding(
          padding:  EdgeInsets.only(
            top:topPadding ?? 60.0,
            bottom: bottomPadding ?? 40.0,
          ),
          child: Text(
            question ??
            'WELCOME TO \n CALORIE COUNTER ',
            style: TextStyle(
                color: PanchoTheme.write, fontSize: 26,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height / 3);
    path.cubicTo((size.width / 5),
        3 * (size.height / 2), 2 * (size.width / 3),
        size.height / 2, size.width, size.height * 0.9);

    path.lineTo(size.width, 0);
    //path.moveTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
