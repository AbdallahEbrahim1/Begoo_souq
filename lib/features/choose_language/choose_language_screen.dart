import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseLanguageScreen extends StatefulWidget {
  const ChooseLanguageScreen({Key? key}) : super(key: key);

  @override
  _ChooseLanguageScreenState createState() => _ChooseLanguageScreenState();
}

class _ChooseLanguageScreenState extends State<ChooseLanguageScreen> {
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
                child: SvgPicture.asset(
                  'assets/images/logo.svg',
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
              // '${AppLocalizations.of(context)?.translate("KSA")}',
              'Choose Language',
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  // '${AppLocalizations.of(context)?.translate("KSA")}',
                  'Please Choose your language !',
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 55,
            ),
            Column(
              children: [
                Text(
                  // '${AppLocalizations.of(context)?.translate("KSA")}',
                  'Lorem Ipsum is simply dummy text of the',
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  // '${AppLocalizations.of(context)?.translate("KSA")}',
                  'printing and typesetting industry. Lorem',
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  // '${AppLocalizations.of(context)?.translate("KSA")}',
                  'Ipsum has been the industry\'s standard',
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  // '${AppLocalizations.of(context)?.translate("KSA")}',
                  'dummy text ever since the 1500s',
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 55,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50.h,
                width: 260.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffef5a2e),
                ),
                child: Center(
                  child: Text(
                    // '${AppLocalizations.of(context)?.translate("KSA")}',

                    'English',
                    style: const TextStyle(
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50.h,
                width: 260.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),
                child: Center(
                  child: Text(
                    // '${AppLocalizations.of(context)?.translate("KSA")}',

                    'العربية',
                    style: const TextStyle(
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
