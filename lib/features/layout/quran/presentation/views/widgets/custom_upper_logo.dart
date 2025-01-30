import 'package:flutter/material.dart';
import 'package:myapp/core/assets/app_assets.dart';

class CustomUpperLogo extends StatelessWidget {
  const CustomUpperLogo({super.key});

  @override
  Widget build(BuildContext context) {
        var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Image.asset(
        AppAssets.islamiOverMosque,
        height: size.height * 0.1636,
        width: size.width * 0.6953,
      ),
    );
  }
}
