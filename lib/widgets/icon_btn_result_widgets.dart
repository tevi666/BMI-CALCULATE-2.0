import 'package:flutter/material.dart';
import '../FontAwesome/my_flutter_app_icons.dart';
import '../app/constants/app_paddings.dart';

class IconBtnResult extends StatelessWidget {
  const IconBtnResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: AppPaddings.r20,
      child: Icon(
        MyFlutterApp.bell,
        color: Colors.white,
      ),
    );
  }
}
