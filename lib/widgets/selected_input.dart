import 'package:bmi_calculate/app/constants/app_box_decoration.dart';
import 'package:flutter/material.dart';

class SelectedInput extends StatelessWidget {
  const SelectedInput({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: AppBoxDecoration.greyAll10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(title),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.keyboard_arrow_down_sharp),
            ),
          ],
        ),
      ),
    );
  }
}
