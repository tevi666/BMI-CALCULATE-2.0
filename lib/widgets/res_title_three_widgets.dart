import 'package:bmi_calculate/app/constants/app_text_style.dart';
import 'package:flutter/material.dart';

import '../app/constants/app_paddings.dart';
import '../app/constants/app_texts.dart';

class ResTitleThree extends StatelessWidget {
  const ResTitleThree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.t30rl20,
      child: Text(
        AppTexts.resTitle3,
        style: AppTextStyles.w20,
      ),
    );
  }
}
