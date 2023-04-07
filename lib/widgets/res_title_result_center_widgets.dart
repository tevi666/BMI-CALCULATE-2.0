import 'package:bmi_calculate/app/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import '../app/constants/app_paddings.dart';
import '../app/constants/app_texts.dart';

class ResTitleResultCenter extends StatelessWidget {
  const ResTitleResultCenter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.t30,
      child: Text(
        AppTexts.result,
        style: AppTextStyles.w30b,
      ),
    );
  }
}
