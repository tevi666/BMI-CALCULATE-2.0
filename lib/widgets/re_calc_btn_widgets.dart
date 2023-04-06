import 'package:bmi_calculate/app/constants/app_texts.dart';
import 'package:flutter/material.dart';

import '../screens/bmi_screens.dart';
import 'calc_btn_widgets.dart';

class ReCalcBtnWidgets extends StatelessWidget {
  const ReCalcBtnWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(
          context,
          MaterialPageRoute(
            builder: (context) => const BmiScreens(),
          ),
        );
      },
      child: const CalcBtn(title: AppTexts.reCalculate),
    );
  }
}
