import 'package:bmi_calculate/app/constants/app_texts.dart';
import 'package:flutter/material.dart';

import '../app/constants/app_paddings.dart';

class ResDateDay extends StatelessWidget {
  const ResDateDay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: AppPaddings.t10,
      child: Text(
        AppTexts.date,
      ),
    );
  }
}
