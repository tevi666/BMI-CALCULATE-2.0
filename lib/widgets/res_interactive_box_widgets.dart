import 'package:bmi_calculate/app/themes/app_colors.dart';
import 'package:bmi_calculate/widgets/res_date_day_widgets.dart';
import 'package:bmi_calculate/widgets/res_your_kg_widgets.dart';
import 'package:flutter/material.dart';

class ResInteractiveBox extends StatelessWidget {
  const ResInteractiveBox({
    super.key,
    required this.indicatorLevel,
    required this.color,
  });

  final double indicatorLevel;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blueGrey,
      width: 100,
      height: 75,
      child: Column(
        children: [
          const ResYourKg(),
          const ResDateDay(),
        ],
      ),
    );
  }
}
