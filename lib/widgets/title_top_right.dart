import 'package:bmi_calculate/app/constants/app_text_style.dart';
import 'package:flutter/material.dart';

class ValueTitle extends StatelessWidget {
  const ValueTitle({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title, style: AppTextStyles.b20,);
  }
}
