import 'package:bmi_calculate/app/constants/app_box_decoration.dart';
import 'package:bmi_calculate/app/constants/app_paddings.dart';
import 'package:bmi_calculate/app/constants/app_text_style.dart';
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
      padding: AppPaddings.t60,
      child: Container(
        decoration: AppBoxDecoration.br10pink,
        height: 40,
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
