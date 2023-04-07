import 'package:bmi_calculate/app/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import '../app/constants/app_paddings.dart';

class ResYourKg extends StatelessWidget {
  const ResYourKg({
    super.key, this.yourKg = 58,
  });
  final int yourKg;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.t10,
      child: Text(
        yourKg as String,
        style: AppTextStyles.green20,
      ),
    );
  }
}
