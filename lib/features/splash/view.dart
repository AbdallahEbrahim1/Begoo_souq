// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:begoo_souq/features/choose_language/view.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../res.dart';
//
// class SplashView extends StatefulWidget {
//   const SplashView({Key? key}) : super(key: key);
//
//   @override
//   _SplashViewState createState() => _SplashViewState();
// }
//
// class _SplashViewState extends State<SplashView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: AnimatedSplashScreen(
//         splash: Hero(
//           tag: Res.logo,
//           child: Image.asset(
//             Res.logo,
//             width: 200.w,
//             height: 150.h,
//           ),
//         ),
//         duration: 3000,
//         nextScreen: const ChooseLanguageView(),
//       ),
//     );
//
//     // body: Container(
//     //   alignment: Alignment.bottomCenter,
//     //   color: Colors.white,
//     //   child: Center(
//     //     child: AnimationContainer(
//     //       index: 0,
//     //       vertical: true,
//     //       duration: Duration(milliseconds: 1500),
//     //       distance: MediaQuery.of(context).size.height * .3,
//     //       child: Hero(
//     //         tag: Res.logo,
//     //         child: Image.asset(
//     //           Res.logo,
//     //           width: 200,
//     //           height: 150,
//     //         ),
//     //       ),
//     //     ),
//     //   ),
//     // ),
//   }
// }
