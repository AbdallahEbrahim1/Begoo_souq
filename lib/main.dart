import 'package:begoo/features/splash/SplashImports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'network/local/cache_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
          // localizationsDelegates: context.localizationDelegates,
          // supportedLocales: context.supportedLocales,
          // locale: context.locale,
          // navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          builder: (context, child) => child!,
          home: const Splash()),
    );
  }
}

// import 'package:begoo/features/splash/SplashImports.dart';
// import 'package:begoo/network/remote/dio_helper.dart';
// import 'package:flutter/material.dart';
//
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//
//   DioHelper.init();
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Begoo App',
//       // home: Splash,
//       home: Splash(),
//     );
//     // return ScreenUtilInit(
//     //   designSize: const Size(360, 690),
//     //   minTextAdapt: true,
//     //   splitScreenMode: true,
//     //   builder: () => const MaterialApp(
//     //     debugShowCheckedModeBanner: false,
//     //     title: 'Begoo App',
//     //     home: ChooseCountryScreen(),
//     //   ),
//     // );
//   }
// }
