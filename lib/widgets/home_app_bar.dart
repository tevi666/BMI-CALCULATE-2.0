import 'package:flutter/material.dart';

import '../app/constants/app_paddings.dart';
import '../app/constants/app_text_style.dart';
import '../app/constants/app_texts.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBar({Key? key, this.icon, required this.name}) : super(key: key);
  final IconData? icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        leading: Icon(icon!),
        title: Text(
          name,
          style: AppTextStyles.w30b,
          textAlign: TextAlign.end,
        ),
        actions: const [
          Padding(
            padding: AppPaddings.r16,
            child: Icon(Icons.notifications_outlined, size: 30,),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight);
}
