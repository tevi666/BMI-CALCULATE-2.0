import 'package:bmi_calculate/widgets/res_bmi_calc_widgets.dart';
import 'package:bmi_calculate/widgets/res_bmi_top_title_widgets.dart';
import 'package:flutter/material.dart';

import '../app/constants/app_paddings.dart';
import '../app/themes/app_colors.dart';
import 'bottom_wave_clipper.dart';

class ResBigBoxContainer extends StatelessWidget {
  const ResBigBoxContainer({
    super.key,
    required this.bmi,
  });

  final String? bmi;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppPaddings.t20,
      height: 300,
      width: 385,
      color: AppColors.yellow,
      child: Column(
        children: [
          const ResBmiTopBoxTitle(),
          ResBmiCalc(bmi: bmi),
          const BottomWave(
            color: AppColors.blue,
            height: 100,
          ),
        ],
      ),
    );
  }
}
