import 'package:bmi_calculate/app/constants/app_texts.dart';
import 'package:bmi_calculate/app/themes/app_colors.dart';
import 'package:bmi_calculate/app/themes/app_themes.dart';
import 'package:bmi_calculate/screens/splash_screens.dart';
import 'package:flutter/material.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({Key? key}) : super(key: key);

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppTexts.appTitle,
      theme: AppThemes.appTheme,
      color: AppColors.backgroundColor,
      home: const Splash(),
    );
  }
}
