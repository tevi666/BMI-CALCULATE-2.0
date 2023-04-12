import 'package:bmi_calculate/app/constants/app_paddings.dart';
import 'package:bmi_calculate/app/constants/app_text_style.dart';
import 'package:flutter/material.dart';
import '../app/constants/app_texts.dart';
import '../screens/bmi_screens.dart';
import 'gender_widgets.dart';

class GenderBoxes extends StatelessWidget {
  final Gender gender;
  final Function() onTapMale;
  final Function() onTapFemale;

  const GenderBoxes({
    Key? key,
    required this.gender,
    required this.onTapMale,
    required this.onTapFemale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.t40,
      child: Column(
        children: [
          Align(alignment: const Alignment(-0.9,0.9), child: Text(AppTexts.gender, style: AppTextStyles.w15,),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GenderWidgets(
                title: AppTexts.male,
                icon: Icons.man,
                onTap: onTapMale,
                width: gender == Gender.male ? 2 : 0,
                borderColor: gender == Gender.male ? Colors.green : Colors.grey,
                iconColor: gender == Gender.male ? Colors.green : null,
              ),
              const SizedBox(width: 10),
              GenderWidgets(
                title: AppTexts.female,
                icon: Icons.woman,
                onTap: onTapFemale,
                width: gender == Gender.female ? 2 : 0,
                borderColor: gender == Gender.female ? Colors.green : Colors.grey,
                iconColor: gender == Gender.female ? Colors.green : null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
