import 'package:bmi_calculate/app/constants/app_paddings.dart';
import 'package:flutter/material.dart';

class OperationBtn extends StatelessWidget {
  const OperationBtn({Key? key, required this.icon, required this.onTap}) : super(key: key);
  final IconData icon;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: AppPaddings.a12,
        child: Icon(icon),
      ),
    );
  }
}
