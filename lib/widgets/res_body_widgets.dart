
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
    required this.bmi, required this.category, required this.color,
  });

  final String bmi;
  final String category;
  final TextStyle color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ResTitleResultCenter(),
        ResBigBoxContainer(
          bmi: bmi,
        ),

        const ResTitleOne(),
        ResTitleTwo(bmi: bmi, category: category, color: color,),
        const ResTitleThree(),
        const ReCalcBtnWidgets(),
      ],
    );
  }
}
