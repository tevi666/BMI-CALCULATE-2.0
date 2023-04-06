import 'package:bmi_calculate/app/constants/app_box_decoration.dart';
import 'package:bmi_calculate/app/constants/app_paddings.dart';
import 'package:bmi_calculate/app/constants/app_sized_box.dart';
import 'package:bmi_calculate/app/constants/app_texts.dart';
import 'package:bmi_calculate/widgets/operation_btn.dart';
import 'package:bmi_calculate/widgets/selected_input.dart';
import 'package:bmi_calculate/widgets/title_text_widgets.dart';
import 'package:bmi_calculate/widgets/title_top_right.dart';
import 'package:flutter/material.dart';

class WeightWidgets extends StatelessWidget {
  const WeightWidgets({
    super.key,
    required this.weight, required this.onTapWeightRm, required this.onTapWeightAdd,
  });
  final int? weight;
  final Function() onTapWeightRm;
  final Function() onTapWeightAdd;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.rlt40,
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: TitleText(
              title: AppTexts.weight,
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: AppBoxDecoration.greyAll10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OperationBtn(
                        icon: Icons.remove_circle,
                        onTap: onTapWeightRm,
                      ),
                      ValueTitle(
                        title: weight.toString(),
                      ),
                      OperationBtn(
                        icon: Icons.add_circle,
                        onTap: onTapWeightAdd,
                      )
                    ],
                  ),
                ),
              ),
              AppSizedbox.w10,
              Expanded(
                flex: 1,
                child: Container(
                  decoration: AppBoxDecoration.greyAll10,
                  child: Row(
                    children: const [
                      SelectedInput(
                        title: AppTexts.kg,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
