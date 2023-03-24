import 'package:begoo_souq/components/default_button.dart';
import 'package:begoo_souq/features/choose_country/view.dart';
import 'package:begoo_souq/res.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/helper_methods.dart';

class ChooseLanguageView extends StatefulWidget {
  const ChooseLanguageView({Key? key}) : super(key: key);

  @override
  _ChooseLanguageViewState createState() => _ChooseLanguageViewState();
}

class _ChooseLanguageViewState extends State<ChooseLanguageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 100,
          right: 20,
          left: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 75.h,
              width: 130.w,
              child: ClipRRect(
                child: Image.asset(
                  Res.logo,
                  // AppAssets.APP_BAR_LOGO,
                  fit: BoxFit.fill,
                ),
                // 'assets/images/logo.svg',
              ),
            ),
            SizedBox(
              height: 45.h,
            ),
            Text(
              'Choose Language',
              style: TextStyle(fontSize: 32.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Please Choose your language !',
                  style: TextStyle(
                    fontSize: 13.sp,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 55.h,
            ),
            SizedBox(
              width: 312.w,
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s'",
                style: TextStyle(
                  fontSize: 15.sp,
                ),
              ),
            ),
            SizedBox(
              height: 55.h,
            ),
            DefaultButton(
              onTap: () {
                context.setLocale(const Locale('en'));
                navigateTo(context, const ChooseCountryView());
              },
              title: 'English',
              height: 50.h,
              width: 260.w,
              color: const Color(0xffef5a2e),
              fontSize: 20.sp,
            ),
            SizedBox(
              height: 35.h,
            ),
            DefaultButton(
              onTap: () {
                context.setLocale(const Locale('ar'));
                navigateTo(context, const ChooseCountryView());
              },
              // title: LocaleKeys.password.tr(),
              title: 'العربية',
              height: 50.h,
              width: 260.w,
              color: Colors.black,
              fontSize: 20.sp,
            ),
          ],
        ),
      ),
    );
  }
}
