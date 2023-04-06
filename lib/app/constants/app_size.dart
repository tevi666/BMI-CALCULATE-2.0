import 'package:flutter/material.dart';

class AppSize {
  AppSize._();

  static double fullHeight(context) => MediaQuery.of(context).size.height;
  static double fullWidth(context) => MediaQuery.of(context).size.width;
}
