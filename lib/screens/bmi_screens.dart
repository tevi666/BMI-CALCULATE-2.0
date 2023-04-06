import 'package:bmi_calculate/app/constants/app_texts.dart';
import 'package:bmi_calculate/app/themes/app_colors.dart';
import 'package:bmi_calculate/widgets/age_widgets.dart';
import 'package:bmi_calculate/widgets/bottom_wave_clipper.dart';
import 'package:bmi_calculate/widgets/gender_widgets.dart';
import 'package:bmi_calculate/widgets/height_widgets.dart';
import 'package:bmi_calculate/widgets/navbar_widgets.dart';
import 'package:bmi_calculate/widgets/title_widgets.dart';
import 'package:flutter/material.dart';
import '../widgets/calc_btn_func.dart';
import '../widgets/weight_widgets.dart';

enum Gender { male, female }

class BmiScreens extends StatefulWidget {
  const BmiScreens({Key? key}) : super(key: key);
  @override
  State<BmiScreens> createState() => _BmiScreensState();
}

class _BmiScreensState extends State<BmiScreens> {
  Gender? gender;
  int weight = 58;
  int height = 173;
  int age = 25;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          const NavbarWidgets(),
          const TitleWidgets(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GenderWidgets(
                title: AppTexts.male,
                icon: Icons.man,
                onTap: () {
                  gender = Gender.male;
                  setState(() {});
                },
                width: gender == Gender.male ? 2 : 0,
                borderColor: gender == Gender.male ? Colors.green : Colors.grey,
                iconColor: gender == Gender.male ? Colors.green : null,
              ),
              const SizedBox(width: 10),
              GenderWidgets(
                title: AppTexts.female,
                icon: Icons.woman,
                onTap: () {
                  gender = Gender.female;
                  setState(() {});
                },
                width: gender == Gender.female ? 2 : 0,
                borderColor:
                    gender == Gender.female ? Colors.green : Colors.grey,
                iconColor: gender == Gender.female ? Colors.green : null,
              ),
            ],
          ),
          WeightWidgets(
            weight: weight,
            onTapWeightAdd: onTapWeightAdd,
            onTapWeightRm: onTapWeightRm,
          ),
          HeightWidgets(
            height: height,
            onTapHeightAdd: onTapHeightAdd,
            onTapHeightRm: onTapHeightRm,
          ),
          AgeWidgets(
            age: age,
            onTapAgeAdd: onTapAgeAdd,
            onTapAgeRm: onTapAgeRm,
          ),
          CalcBtnFunc(height: height, weight: weight),
          const BottomWave(color: Colors.white, height: 100)
        ],
      ),
    );
  }
}
