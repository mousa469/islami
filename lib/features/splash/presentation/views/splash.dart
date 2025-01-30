import 'package:flutter/material.dart';
import 'package:myapp/core/services/local_storage/local_storage_keys.dart';
import 'package:myapp/core/services/local_storage/local_storage_services.dart';
import 'package:myapp/features/layout/layout.dart';
import 'package:myapp/features/onBoarding/presentation/views/on_boarding_home.dart';
import 'package:myapp/features/splash/presentation/views/widgets/left_splash_decoration_item.dart';
import 'package:myapp/features/splash/presentation/views/widgets/logo_splash_item.dart';
import 'package:myapp/features/splash/presentation/views/widgets/mosque_splash_item.dart';
import 'package:myapp/features/splash/presentation/views/widgets/right_splash_decoration_item.dart';
import 'package:myapp/features/splash/presentation/views/widgets/right_splash_item.dart';
import 'package:myapp/features/splash/presentation/views/widgets/splash_route_logo.dart';
import 'package:myapp/features/splash/presentation/views/widgets/supervised_splash_logo.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  static const id = "/splash";

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        var isFirstTimeRun =
            LocalStorageServices.getBool(LocalStorageKeys.isFirstTimeRun) ??
                true;
        Navigator.pushReplacementNamed(
            context, isFirstTimeRun ? OnBoardingHome.id : Layout.id);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/background.png"))),
        child: const Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              RightSplashItem(),
              MosqueSplashItem(),
              LogoSplashItem(),
              LeftSplashDecorationItem(),
              RightSplashDecorationItem(),
              SplashRouteLogo(),
              SupervisedSplashLogo()
            ],
          ),
        ));
  }
}
