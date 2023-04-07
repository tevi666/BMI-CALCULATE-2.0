import 'package:bmi_calculate/app/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import '../app/constants/app_paddings.dart';

class ResBmiCalc extends StatelessWidget {
  const ResBmiCalc({
    super.key,
    required this.bmi,
  });

  final String? bmi;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.t20,
      child: Text(
        bmi!,
        style: AppTextStyles.w30b,
      ),
    );
  }
}
