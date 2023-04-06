import 'package:flutter/material.dart';

import '../app/constants/app_text_style.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        title,
        style: AppTextStyles.whiteColor,
      ),
    );
  }
}
