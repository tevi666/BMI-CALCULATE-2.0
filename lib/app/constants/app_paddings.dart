import 'package:flutter/material.dart';

class AppPaddings {
  AppPaddings._();

  static const EdgeInsets a8 = EdgeInsets.all(8);
  static const EdgeInsets a12 = EdgeInsets.all(12);
  static const EdgeInsets a16 = EdgeInsets.all(16);
  static const EdgeInsets a32 = EdgeInsets.all(32);

  static const EdgeInsets v32 = EdgeInsets.symmetric(vertical: 32);
  static const EdgeInsets v16 = EdgeInsets.symmetric(vertical: 16);

  static const EdgeInsets h16 = EdgeInsets.symmetric(horizontal: 16);
  static const EdgeInsets h32 = EdgeInsets.symmetric(horizontal: 32);

  static const EdgeInsets t8 = EdgeInsets.only(top: 8);
  static const EdgeInsets t10 = EdgeInsets.only(top: 10);
  static const EdgeInsets t16 = EdgeInsets.only(top: 16);
  static const EdgeInsets t20 = EdgeInsets.only(top: 20);
  static const EdgeInsets t30 = EdgeInsets.only(top: 30);
  static const EdgeInsets r10 = EdgeInsets.only(right: 10);
  static const EdgeInsets r20 = EdgeInsets.only(right: 20);
  static const EdgeInsets rlt40 = EdgeInsets.only(right: 40,left: 40, top: 40);
  static const EdgeInsets rl40t30 = EdgeInsets.only(right: 40,left: 40, top: 30);
  static const EdgeInsets rl20t70 = EdgeInsets.only(right: 20,left: 20, top: 70);
  static const EdgeInsets l40t50 = EdgeInsets.only(left: 40, top: 50);
  static const EdgeInsets t30rl20 = EdgeInsets.only(top: 30, right: 20, left: 20);
}
