import 'package:bmi_calculate/app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class NavIcon extends StatelessWidget {
  const NavIcon({Key? key, required this.icon}) : super(key: key);
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: AppColors.whiteColor,
    );
  }
}
