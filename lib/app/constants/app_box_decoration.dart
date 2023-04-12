import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import 'app_border_radius.dart';

class AppBoxDecoration {
  AppBoxDecoration._();

  static get greyAll10 => BoxDecoration(
    color: AppColors.grey,
    borderRadius: AppBorderRadius.all10,
  );
  static get br10pink => BoxDecoration(
    color: AppColors.pinkColor,
    borderRadius: AppBorderRadius.all10,
  );
  static get br10white => BoxDecoration(
    borderRadius: AppBorderRadius.all10,
    color: AppColors.whiteColor,
  );
}