import 'package:begoo_souq/features/choose_language/view.dart';
import 'package:begoo_souq/network/remote/kiwi.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'network/local/cache_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await CacheHelper.init();
  initKiwi();
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('ar'), Locale("en")],
        startLocale: const Locale("ar"),
        path: 'assets/lang',
        fallbackLocale: const Locale('ar'),
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) => MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          builder: (context, child) => child!,
          home: const ChooseLanguageView()),
    );
  }
}
