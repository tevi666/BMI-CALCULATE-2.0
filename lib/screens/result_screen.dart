import 'package:flutter/material.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/res_body_widgets.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {Key? key,
      this.bmi,
      required this.color,
      required this.category,
      required this.colors})
      : super(key: key);
  final String? bmi;
  final String category;
  final TextStyle color;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(
        icon: Icons.arrow_back_ios,
      ),
      body: ResBody(
        bmi: bmi!,
        category: category,
        color: color,
        colors: colors,
      ),
    );
  }
}
