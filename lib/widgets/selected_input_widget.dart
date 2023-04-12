import 'package:bmi_calculate/app/constants/app_paddings.dart';
import 'package:bmi_calculate/widgets/selected_input.dart';
import 'package:flutter/material.dart';

import '../app/constants/app_box_decoration.dart';

class SelectedInputWidget extends StatelessWidget {
  const SelectedInputWidget({
    super.key,
    required this.selectedTitle,
  });

  final String? selectedTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.t74r20,
      child: Container(
        width: 100,
        decoration: AppBoxDecoration.greyAll10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SelectedInput(
              title: selectedTitle!,
            ),
          ],
        ),
      ),
    );
  }
}
