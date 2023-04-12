import 'package:bmi_calculate/app/constants/app_box_decoration.dart';
import 'package:bmi_calculate/app/constants/app_paddings.dart';
import 'package:bmi_calculate/app/constants/app_sized_box.dart';
import 'package:bmi_calculate/app/constants/app_texts.dart';
import 'package:bmi_calculate/widgets/operation_btn.dart';
import 'package:bmi_calculate/widgets/selected_input.dart';
import 'package:bmi_calculate/widgets/selected_input_widget.dart';
import 'package:bmi_calculate/widgets/title_text_widgets.dart';
import 'package:bmi_calculate/widgets/title_top_right.dart';
import 'package:flutter/material.dart';

class GeneralWidget extends StatelessWidget {
  const GeneralWidget({
    super.key,
    required this.onTapMinus, required this.onTapPlus, this.general, this.selectedTitle, required this.title,
  });
  final int? general;
  final String? selectedTitle;
  final String title;
  final Function() onTapMinus;
  final Function() onTapPlus;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.rl20t40,
      child: Column(
        children: [
           Align(
            alignment: Alignment.topLeft,
            child: TitleText(
              title: title,
            ),
          ),
          Padding(
            padding: AppPaddings.t20,
            child: Container(
              decoration: AppBoxDecoration.greyAll10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OperationBtn(
                    icon: Icons.remove_circle,
                    onTap: onTapMinus,
                  ),
                  ValueTitle(
                    title: general.toString(),
                  ),
                  OperationBtn(
                    icon: Icons.add_circle,
                    onTap: onTapPlus,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

