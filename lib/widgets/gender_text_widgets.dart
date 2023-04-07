import 'package:bmi_calculate/app/constants/app_text_style.dart';
import 'package:flutter/material.dart';

class GenderTextWidgets extends StatelessWidget {
  const GenderTextWidgets({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.whiteColorfz,
    );
  }
}
