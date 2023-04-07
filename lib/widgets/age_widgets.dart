import 'package:bmi_calculate/app/constants/app_box_decoration.dart';
import 'package:bmi_calculate/app/constants/app_paddings.dart';
import 'package:bmi_calculate/app/constants/app_text_style.dart';
import 'package:bmi_calculate/app/constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'operation_btn.dart';

class AgeWidgets extends StatelessWidget {
  const AgeWidgets({
    super.key,
    required this.age, required this.onTapAgeRm, required this.onTapAgeAdd,
  });
  final int age;
  final Function() onTapAgeRm;
  final Function() onTapAgeAdd;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.rlt40,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              AppTexts.age,
              style: AppTextStyles.whiteColor,
            ),
          ),
          Container(
            decoration: AppBoxDecoration.greyAll10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OperationBtn(
                  icon: Icons.remove_circle,
                  onTap: onTapAgeRm,
                ),
                Text(
                  age.toString(), style: AppTextStyles.b20,
                ),
                OperationBtn(
                  icon: Icons.add_circle,
                  onTap: onTapAgeAdd,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
