import 'package:flutter/material.dart';

class ValueTitle extends StatelessWidget {
  const ValueTitle({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}
