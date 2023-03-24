import 'package:begoo_souq/components/helper_methods.dart';
import 'package:begoo_souq/features/login/view.dart';
import 'package:begoo_souq/generated/locale_keys.g.dart';
import 'package:begoo_souq/res.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdsView extends StatelessWidget {
  const AdsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              Res.ads,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 30,
            right: 30,
            child: TextButton(
              onPressed: () {
                navigateTo(context, const LoginView());
              },
              child: Text(
                LocaleKeys.SKIP.tr(),
                // 'SKIP',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
