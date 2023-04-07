import 'package:bmi_calculate/app/constants/app_border_radius.dart';
import 'package:bmi_calculate/app/constants/app_paddings.dart';
import 'package:bmi_calculate/app/constants/app_sized_box.dart';
import 'package:flutter/material.dart';
import 'gender_icon_widgets.dart';
import 'gender_text_widgets.dart';

class GenderWidgets extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color? color;
  final Color? borderColor;
  final Color? iconColor;
  final double? width;
  final Function() onTap;

  const GenderWidgets({
    super.key,
    required this.title,
    required this.icon,
    this.color = Colors.pink,
    this.width = 0,
    this.borderColor = Colors.green,
    this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.t20,
      child: Row(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              width: 170,
              decoration: BoxDecoration(
                color: color,
                borderRadius: AppBorderRadius.all10,
                border: Border.all(width: width!, color: borderColor!),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        AppSizedBox.h10,
                        Padding(
                          padding: AppPaddings.r10,
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.check_circle,
                              color: iconColor,
                            ),
                          ),
                        ),
                        GenderIconWidgets(icon: icon),
                        AppSizedBox.h10,
                        GenderTextWidgets(title: title),
                        AppSizedBox.h20,
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
