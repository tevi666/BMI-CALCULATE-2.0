import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle get bold18White => const TextStyle(
    color: AppColors.whiteColor,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static TextStyle get normal20Grey => const TextStyle(
    color: AppColors.greyColor,
    fontSize: 20,
  );

  static TextStyle get bold44White => const TextStyle(
    color: AppColors.whiteColor,
    fontSize: 44,
    fontWeight: FontWeight.w800,
  );
  static TextStyle get whiteColor => const TextStyle(
    color: AppColors.whiteColor,
  );static TextStyle get whiteColorfz => const TextStyle(
    color: AppColors.whiteColor,
    fontSize: 20
  );
  static TextStyle get w30b => const TextStyle(
      color: AppColors.whiteColor,
      fontSize: 30,
      fontWeight: FontWeight.bold
  );
  static TextStyle get y20 => const TextStyle(
      color: AppColors.yellow,
      fontSize: 20,
  );static TextStyle get w20b => const TextStyle(
      color: AppColors.whiteColor,
      fontSize: 20,
      fontWeight: FontWeight.bold
  );
  static TextStyle get w20 => const TextStyle(
      color: AppColors.whiteColor,
      fontSize: 20,
  );
  static TextStyle get green20 => const TextStyle(
      color: AppColors.green,
      fontSize: 20,
  );static TextStyle get b20 => const TextStyle(
      color: AppColors.backgroundColor,
      fontSize: 20,
      fontWeight: FontWeight.bold
  );
}
