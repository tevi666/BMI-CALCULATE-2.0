import 'package:flutter/material.dart';

class CheckIconWidgets extends StatelessWidget {
  const CheckIconWidgets({Key? key, required this.iconColor}) : super(key: key);
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Icon(
        Icons.check_circle,
        color: iconColor,
      ),
    );
  }
}
