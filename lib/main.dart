import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/core/services/local_storage/local_storage_keys.dart';
import 'package:myapp/core/services/local_storage/local_storage_services.dart';
import 'package:myapp/core/theme/app_colors.dart';
import 'package:myapp/features/layout/layout.dart';
import 'package:myapp/features/layout/quran/presentation/views/quran_details.dart';
import 'package:myapp/features/onBoarding/presentation/views/on_boarding_home.dart';
import 'package:myapp/features/splash/presentation/views/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorageServices.init();
  // LocalStorageServices.clear(LocalStorageKeys.mostRecent);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 862),
      minTextAdapt: true,
      child: MaterialApp(
        routes: {
          QuranDetails.id: (context) => const QuranDetails(),
          Layout.id: (context) => const Layout(),
          Splash.id: (context) => const Splash(),
          OnBoardingHome.id: (context) => const OnBoardingHome(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          fontFamily: "Janna-LT",
          scaffoldBackgroundColor: AppColors.secondaryColor,
          useMaterial3: true,
        ),
        initialRoute: Splash.id,
      ),
    );
  }
}
