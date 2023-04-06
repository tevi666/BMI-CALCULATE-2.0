import 'package:bmi_calculate/widgets/res_bmi_calc_widgets.dart';
import 'package:bmi_calculate/widgets/res_bmi_top_title_widgets.dart';
import 'package:flutter/material.dart';

import '../app/constants/app_paddings.dart';
import '../app/constants/app_texts.dart';
import '../app/themes/app_colors.dart';
import 'bottom_wave_clipper.dart';
import 'indicator.dart';

class ResBigBoxContainer extends StatelessWidget {
  const ResBigBoxContainer({
    super.key,
    required this.bmi, this.category, required this.color,
  });

  final String? bmi;
  final String? category;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppPaddings.t20,
      height: 300,
      width: 385,
      color: AppColors.pinkColor,
      child: Column(
        children: [
          const ResBmiTopBoxTitle(),
          ResBmiCalc(bmi: bmi),
          Indicator(category: category!, color: color, colorsTitle: color,),
          const BottomWave(
            color: AppColors.blue,
            height: 100,
          ),
        ],
      ),
    );
  }
}

