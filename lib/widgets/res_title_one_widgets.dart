import 'package:bmi_calculate/app/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import '../app/constants/app_paddings.dart';
import '../app/constants/app_texts.dart';

class ResTitleOne extends StatelessWidget {
  const ResTitleOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.t50rl20,
      child: Text(
        AppTexts.resTitle1,
        style: AppTextStyles.w20b,
      ),
    );
  }
}
