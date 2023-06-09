import 'package:bmi_calculate/app/constants/app_box_decoration.dart';
import 'package:bmi_calculate/app/constants/app_text_style.dart';
import 'package:flutter/material.dart';

class SelectedInput extends StatelessWidget {
  const SelectedInput({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: AppBoxDecoration.greyAll10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppTextStyles.b20,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_arrow_down_sharp),
          ),
        ],
      ),
    );
  }
}
