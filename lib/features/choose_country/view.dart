import 'package:begoo_souq/components/navigate.dart';
import 'package:begoo_souq/features/ads/view.dart';
import 'package:begoo_souq/generated/locale_keys.g.dart';
import 'package:begoo_souq/res.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseCountryView extends StatefulWidget {
  const ChooseCountryView({Key? key}) : super(key: key);

  @override
  _ChooseCountryViewState createState() => _ChooseCountryViewState();
}

class _ChooseCountryViewState extends State<ChooseCountryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 80,
          right: 20,
          left: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              Res.logo,
              height: 80.h,
              width: 120.w,
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              LocaleKeys.CHOOSE_COUNTRY.tr(),
              style: TextStyle(
                fontSize: 32.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Text(
              LocaleKeys.Please_Choose_your_Country.tr(),
              style: TextStyle(
                fontSize: 13.sp,
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  //print(currenciesSnapshot.data?.data![index].name);
                  return InkWell(
                    onTap: () {
                      navigateTo(context, const AdsView());
                    },
                    child: Card(
                      elevation: 5,
                      shadowColor: Colors.white54,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0.r),
                      ),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 12.h,
                          horizontal: 16.w,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              Res.kuwait,
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              width: 27.w,
                            ),
                            Text(
                              'Kuwait',
                              style: TextStyle(
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // const SizedBox(
            //   height: 60,
            // )
          ],
        ),
      ),
    );
  }
}
