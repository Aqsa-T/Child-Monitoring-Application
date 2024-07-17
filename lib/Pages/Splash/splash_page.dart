import 'package:flutter/material.dart';
import 'package:fyp_app/Resources/assets_manager.dart';
import 'package:fyp_app/Resources/routes_manager.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then(
        (value) => Navigator.pushReplacementNamed(context, Routes.onboarding));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppAssets.background),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppAssets.logo),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
