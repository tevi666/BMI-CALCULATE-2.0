import 'package:bmi_calculate/app/constants/app_paddings.dart';
import 'package:flutter/material.dart';
import '../app/constants/app_texts.dart';
import '../app/themes/app_colors.dart';

class Indicator extends StatelessWidget {
  Indicator({Key? key, required this.category, required this.color, required this.colorsTitle})
      : super(key: key);
  final String category;
  Color color;
  final Color colorsTitle;
  @override
  Widget build(BuildContext context) {
    double indicatorLevel = 0;
    switch (category) {
      case AppTexts.marketDeficitBody:
        color = AppColors.grey;
        indicatorLevel = 0.13;
        break;
      case AppTexts.bodyMassDeficit:
        color = AppColors.lightBlueGrey;
        indicatorLevel = 0.26;
        break;
      case AppTexts.insufficientBody:
        color = AppColors.lightGreenAccent;
        indicatorLevel = 0.39;
        break;
      case AppTexts.normalBodyMass:
        color = AppColors.green;
        indicatorLevel = 0.52;
        break;
      case AppTexts.excessBodyMass:
        color = AppColors.orangeAccent;
        indicatorLevel = 0.65;
        break;
      case AppTexts.obesity1:
        color = AppColors.orange;
        indicatorLevel = 0.78;
        break;
      case AppTexts.obesity2:
        color = AppColors.redAccent;
        indicatorLevel = 0.91;
        break;
      case AppTexts.obesity3:
        color = AppColors.red;
        indicatorLevel = 1;
        break;
    }
    return Padding(
      padding: AppPaddings.a32,
      child: Container(
        color: AppColors.whiteColor,
        padding: AppPaddings.a8,
        child: Column(
          children: [
            Text(category, style: TextStyle(color: colorsTitle, fontSize: 30 ),textAlign: TextAlign.center,),
            Padding(
              padding: AppPaddings.t20,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: LinearProgressIndicator(
                      backgroundColor: AppColors.tealAccent,
                      value: indicatorLevel,
                      valueColor: AlwaysStoppedAnimation(color),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
