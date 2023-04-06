import 'package:bmi_calculate/app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class GenderIconWidgets extends StatelessWidget {
  const GenderIconWidgets({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: AppColors.whiteColor,
      size: 100,
    );
  }
}
