import 'package:bmi_calculate/app/constants/app_texts.dart';
import 'package:bmi_calculate/widgets/gender_boxes.dart';
import 'package:bmi_calculate/widgets/selected_input_widget.dart';
import 'package:flutter/material.dart';
import '../widgets/all_general_widget.dart';
import '../widgets/calc_btn_func.dart';
import '../widgets/general_widgets.dart';
import '../widgets/home_app_bar.dart';

enum Gender { male, female }

class BmiScreens extends StatefulWidget {
  const BmiScreens({Key? key}) : super(key: key);

  @override
  State<BmiScreens> createState() => _BmiScreensState();
}

class _BmiScreensState extends State<BmiScreens> {
  Gender gender = Gender.male;
  int weight = 58;
  int height = 173;
  int age = 25;

  void onTapWeightAdd() {
    if (weight < 130) {
      weight++;
      setState(() {});
    }
  }

  void onTapWeightRm() {
    if (weight > 40) {
      weight--;
      setState(() {});
    }
  }

  void onTapAgeAdd() {
    if (age < 100) {
      age++;
      setState(() {});
    }
  }

  void onTapAgeRm() {
    if (age > 13) {
      age--;
      setState(() {});
    }
  }

  void onTapHeightAdd() {
    if (height < 220) {
      height++;
      setState(() {});
    }
  }

  void onTapHeightRm() {
    if (height > 130) {
      height--;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(
        icon: Icons.menu,
      ),
      body: Column(
        children: [
          GenderBoxes(
            gender: gender,
            onTapMale: () => setState(() => gender = Gender.male),
            onTapFemale: () => setState(() => gender = Gender.female),
          ),
          AllGeneralWidget(
            num: weight,
            onTapAdd: onTapWeightAdd,
            onTapRm: onTapWeightRm,
            title: AppTexts.weight,
            selectedTitle: AppTexts.kg,
          ),
          AllGeneralWidget(
            num: height,
            onTapAdd: onTapHeightAdd,
            onTapRm: onTapHeightRm,
            title: AppTexts.height,
            selectedTitle: AppTexts.cm,
          ),
          GeneralWidget(
            general: age,
            onTapMinus: onTapAgeRm,
            onTapPlus: onTapAgeAdd,
            title: AppTexts.age,
          ),
          CalcBtnFunc(height: height, weight: weight),
        ],
      ),
    );
  }
}
