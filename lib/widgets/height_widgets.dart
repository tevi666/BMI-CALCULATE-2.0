import 'package:bmi_calculate/app/constants/app_box_decoration.dart';
import 'package:bmi_calculate/app/constants/app_paddings.dart';
import 'package:bmi_calculate/app/constants/app_sized_box.dart';
import 'package:bmi_calculate/app/constants/app_texts.dart';
import 'package:bmi_calculate/widgets/operation_btn.dart';
import 'package:bmi_calculate/widgets/selected_input.dart';
import 'package:bmi_calculate/widgets/title_top_right.dart';
import 'package:flutter/material.dart';
import 'title_text_widgets.dart';

class HeightWidgets extends StatelessWidget {
  const HeightWidgets({
    super.key,
    required this.height,
    required this.onTapHeightRm, required this.onTapHeightAdd,
  });
  final int height;
  final Function() onTapHeightRm;
  final Function() onTapHeightAdd;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.rlt40,
      child: Column(
        children: [
          const TitleText(title: AppTexts.height),
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
                        onTap: onTapHeightRm,
                      ),
                      ValueTitle(
                        title: height.toString(),
                      ),
                      OperationBtn(
                        icon: Icons.add_circle,
                        onTap: onTapHeightAdd,
                      ),
                    ],
                  ),
                ),
              ),
              AppSizedBox.w10,
              const SelectedInput(
                title: AppTexts.cm,
              ),
            ],
          )
        ],
      ),
    );
  }
}
