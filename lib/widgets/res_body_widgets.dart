import 'package:bmi_calculate/app/constants/app_sized_box.dart';
import 'package:bmi_calculate/widgets/re_calc_btn_widgets.dart';
import 'package:bmi_calculate/widgets/res_big_box_container_widgets.dart';
import 'package:bmi_calculate/widgets/res_title_one_widgets.dart';
import 'package:bmi_calculate/widgets/res_title_result_center_widgets.dart';
import 'package:bmi_calculate/widgets/res_title_three_widgets.dart';
import 'package:bmi_calculate/widgets/res_title_two_widgets.dart';
import 'package:flutter/material.dart';

class ResBody extends StatelessWidget {
   ResBody({
    super.key,
    required this.bmi, required this.category, required this.color, required this.colors,
  });

  final String bmi;
  final String category;
  final TextStyle color;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResTitleResultCenter(),
        ResBigBoxContainer(
          bmi: bmi, category: category, color: colors,
        ),
        AppSizedBox.h20,
        const ResTitleOne(),
        ResTitleTwo(bmi: bmi, category: category, color: color,),
        const ResTitleThree(),
        const ReCalcBtnWidgets(),
      ],
    );
  }
}
