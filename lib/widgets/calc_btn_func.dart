import 'package:bmi_calculate/app/constants/app_texts.dart';
import 'package:bmi_calculate/app/themes/app_colors.dart';
import 'package:flutter/material.dart';

import '../screens/result_screen.dart';
import 'calc_btn_widgets.dart';

class CalcBtnFunc extends StatelessWidget {
   CalcBtnFunc({
    super.key,
    required this.height,
    required this.weight,
  });

  final int? height;
  final int? weight;
  Color? color;
  String? category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final heightSquared = height! / 100;
        final res = weight! / (heightSquared * heightSquared);
        if (res < 16) {
          color = Colors.grey;
          category = AppTexts.marketDeficitBody;
        } else if (res >= 16 && res < 17) {
          color = AppColors.lightBlueGrey;
          category = AppTexts.bodyMassDeficit;
        } else if (res >= 17 && res < 18.5) {
          color = AppColors.lightGreenAccent;
          category = AppTexts.insufficientBody;
        } else if (res >= 18.5 && res < 25) {
          color = AppColors.green;
          category = AppTexts.normalBodyMass;
        } else if (res >= 25 && res < 30) {
          color = AppColors.orangeAccent;
          category = AppTexts.excessBodyMass;
        } else if (res >= 30 && res < 35) {
          color = AppColors.orange;
          category = AppTexts.obesity1;
        } else if (res >= 35 && res < 40) {
          color = AppColors.redAccent;
          category = AppTexts.obesity2;
        } else {
          color = AppColors.red;
          category = AppTexts.obesity3;
        }
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(
              bmi: res.toStringAsFixed(1),
              color: TextStyle(color: color),
              category: category!,
            ),
          ),
        );
      },
      child: const CalcBtn(
        title: AppTexts.calculate,
      ),
    );
  }
}
