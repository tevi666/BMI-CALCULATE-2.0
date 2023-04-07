import 'package:bmi_calculate/app/constants/app_text_style.dart';
import 'package:bmi_calculate/app/constants/app_texts.dart';
import 'package:bmi_calculate/screens/bmi_screens.dart';
import 'package:flutter/material.dart';
import '../app/constants/app_assets.dart';
import '../app/constants/app_size.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    wait();
    super.initState();
  }

  void wait() async {
    await Future.delayed(const Duration(seconds: 2));
    goToHomePage();
  }

  void goToHomePage() async {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const BmiScreens(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: AppSize.fullHeight(context),
        width: AppSize.fullWidth(context),
        child: Center(
          child: Stack(
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(AppAssets.bmi),
                  ),
                ),
              ),
              Text(AppTexts.appTitle, style: AppTextStyles.w30b,)
            ],
          ),
        ),
      ),
    );
  }
}