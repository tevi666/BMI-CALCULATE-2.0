import 'package:flutter/material.dart';

class BottomWave extends StatelessWidget {
  const BottomWave({
    Key? key,
    required this.color,
    required this.height,
  }) : super(key: key);
  final Color color;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Align(
      alignment: Alignment.bottomCenter,
      child: ClipPath(
        clipper: BottomWaveClipper(),
        child: Container(
          color: color,
          height: height,
        ),
      ),
    ));
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.lineTo(0.0, size.height + 5);
    var secondControlPoint = Offset(size.width - (size.width / 6), size.height);
    var secondEndPoint = Offset(size.width, 0.0);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
