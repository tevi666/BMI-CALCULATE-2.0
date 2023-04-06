import 'package:bmi_calculate/app/constants/app_paddings.dart';
import 'package:bmi_calculate/app/constants/app_sized_box.dart';
import 'package:bmi_calculate/app/constants/app_text_style.dart';
import 'package:bmi_calculate/app/constants/app_texts.dart';
import 'package:flutter/material.dart';

class TitleWidgets extends StatelessWidget {
  const TitleWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.l40t50,
      child: Column(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              AppTexts.appTitle,
              style: AppTextStyles.w30b,
              textAlign: TextAlign.end,
            ),
          ),
          AppSizedBox.h60,
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              AppTexts.gender,
              style: AppTextStyles.whiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
