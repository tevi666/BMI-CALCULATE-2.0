import 'package:bmi_calculate/app/constants/app_text_style.dart';
import 'package:bmi_calculate/app/constants/app_texts.dart';
import 'package:flutter/material.dart';
import '../app/constants/app_paddings.dart';

class ResTitleTwo extends StatelessWidget {
  const ResTitleTwo({
    super.key,
    required this.bmi,
    required this.category,
    required this.color,
  });

  final String bmi;
  final String category;
  final TextStyle color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.t30rl20,
      child: RichText(
        text: TextSpan(style: AppTextStyles.w20, children: <TextSpan>[
          const TextSpan(text: AppTexts.yourBmi),
          TextSpan(text: bmi, style: color),
          const TextSpan(
            text: AppTexts.indicating,
          ),
          TextSpan(text: category, style: color),
          const TextSpan(
            text: AppTexts.category,
          ),
        ]),
      ),
    );
  }
}
