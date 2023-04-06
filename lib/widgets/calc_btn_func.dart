import 'package:bmi_calculate/app/constants/app_texts.dart';
import 'package:flutter/material.dart';

import '../screens/result_screen.dart';
import 'calc_btn_widgets.dart';

class CalcBtnFunc extends StatelessWidget {
   CalcBtnFunc({
    super.key,
    required this.height,
    required this.weight,
  });

  final int? height;
  final int? weight;
  Color? color;
  String? category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final heightSquared = height! / 100;
        final res = weight! / (heightSquared * heightSquared);
        if (res < 16) {
          color = Colors.grey;
          category = 'Marked deficit of body mass';
        } else if (res >= 16 && res < 17) {
          color = Colors.lightBlueAccent;
          category = 'High body mass deficit';
        } else if (res >= 17 && res < 18.5) {
          color = Colors.lightGreenAccent;
          category = "Insufficient body mass";
        } else if (res >= 18.5 && res < 25) {
          color = Colors.green;
          category = "Normal body mass";
        } else if (res >= 25 && res < 30) {
          color = Colors.orangeAccent;
          category = "Excess body mass";
        } else if (res >= 30 && res < 35) {
          color = Colors.orange;
          category = "Obesity 1st degree";
        } else if (res >= 35 && res < 40) {
          color = Colors.redAccent;
          category = "Obesity of the 2nd degree";
        } else {
          color = Colors.red;
          category = "Obesity 3rd degree";
        }
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(
              bmi: res.toStringAsFixed(1),
              color: TextStyle(color: color),
              category: category!,
            ),
          ),
        );
      },
      child: const CalcBtn(
        title: AppTexts.calculate,
      ),
    );
  }
}
