import 'package:bmi_calculate/app/constants/app_texts.dart';
import 'package:bmi_calculate/app/themes/app_colors.dart';
import 'package:flutter/material.dart';

import '../screens/bmi_screens.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTexts.appTitle,
      color: AppColors.backgroundColor,
      home: BmiScreens(),
    );
  }
}
