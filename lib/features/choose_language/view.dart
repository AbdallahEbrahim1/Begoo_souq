import 'package:begoo_souq/features/choose_country/view.dart';
import 'package:begoo_souq/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/navigate/navigate.dart';

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
            const Text(
              // '${AppLocalizations.of(context)?.translate("KSA")}',
              'Choose Language',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  // '${AppLocalizations.of(context)?.translate("KSA")}',
                  'Please Choose your language !',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 55,
            ),
            Column(
              children: const [
                Text(
                  // '${AppLocalizations.of(context)?.translate("KSA")}',
                  'Lorem Ipsum is simply dummy text of the',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  // '${AppLocalizations.of(context)?.translate("KSA")}',
                  'printing and typesetting industry. Lorem',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  // '${AppLocalizations.of(context)?.translate("KSA")}',
                  'Ipsum has been the industry\'s standard',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  // '${AppLocalizations.of(context)?.translate("KSA")}',
                  'dummy text ever since the 1500s',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 55.h,
            ),
            InkWell(
              onTap: () {
                navigateTo(context, const ChooseCountryView());
              },
              child: Container(
                height: 50.h,
                width: 260.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffef5a2e),
                ),
                child: const Center(
                  child: Text(
                    // '${AppLocalizations.of(context)?.translate("KSA")}',

                    'English',
                    style: TextStyle(
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            InkWell(
              onTap: () {
                navigateTo(context, const ChooseCountryView());
              },
              child: Container(
                height: 50.h,
                width: 260.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                child: const Center(
                  child: Text(
                    // '${AppLocalizations.of(context)?.translate("KSA")}',
                    'العربية',
                    style: TextStyle(
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
