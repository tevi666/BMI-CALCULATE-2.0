import 'package:bmi_calculate/app/constants/app_paddings.dart';
import 'package:bmi_calculate/widgets/navbar_icon.dart';
import 'package:flutter/material.dart';
import '../FontAwesome/my_flutter_app_icons.dart';

class NavbarWidgets extends StatelessWidget {
  const NavbarWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.rl20t70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          NavIcon(icon: MyFlutterApp.menu),
          NavIcon(icon: MyFlutterApp.bell),
        ],
      ),
    );
  }
}
