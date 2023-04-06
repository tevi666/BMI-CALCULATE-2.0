import 'package:bmi_calculate/app/constants/app_text_style.dart';
import 'package:flutter/material.dart';

import '../app/constants/app_paddings.dart';
import '../app/constants/app_texts.dart';

class ResBmiTopBoxTitle extends StatelessWidget {
  const ResBmiTopBoxTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.t20,
      child: Text(
        AppTexts.yourBmiIs,
        style: AppTextStyles.y20,
      ),
    );
  }
}
