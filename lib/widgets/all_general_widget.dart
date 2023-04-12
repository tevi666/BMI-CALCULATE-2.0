import 'package:bmi_calculate/widgets/selected_input_widget.dart';
import 'package:flutter/material.dart';
import 'general_widgets.dart';

class AllGeneralWidget extends StatelessWidget {
  const AllGeneralWidget({Key? key, required this.num, required this.onTapRm, required this.onTapAdd, required this.title, required this.selectedTitle}) : super(key: key);
  final int num;
  final Function() onTapRm;
  final Function() onTapAdd;
  final String title;
  final String selectedTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: GeneralWidget(
            general: num,
            onTapMinus: onTapRm,
            onTapPlus: onTapAdd,
            title: title,
          ),
        ),
        SelectedInputWidget(selectedTitle: selectedTitle),
      ],
    );
  }
}
