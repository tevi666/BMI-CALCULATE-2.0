import 'package:bmi_calculate/app/constants/app_paddings.dart';
import 'package:bmi_calculate/app/constants/app_text_style.dart';
import 'package:bmi_calculate/app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class CalcBtn extends StatelessWidget {
  const CalcBtn({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.rl20t30,
      child: Container(
        height: 40,
        color: AppColors.pinkColor,
        child: Center(
          child: Text(
            title,
            style: AppTextStyles.w20,
          ),
        ),
      ),
    );
  }
}
