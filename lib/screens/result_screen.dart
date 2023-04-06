import 'package:bmi_calculate/app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import '../widgets/icon_btn_result_widgets.dart';
import '../widgets/res_body_widgets.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key, this.bmi, required this.color, required this.category}) : super(key: key);
  final String? bmi;
  final String category;
  final TextStyle color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        actions: const [
          IconBtnResult(),
        ],
      ),
      backgroundColor: AppColors.backgroundColor,
      body: ResBody(
        bmi: bmi!, category: category, color: color,
      ),
    );
  }
}
