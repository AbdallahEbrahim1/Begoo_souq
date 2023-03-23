import 'package:begoo_souq/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Future<void> showMyDialog(
    {required BuildContext context,
    String? title,
    Widget? content,
    List<Widget>? actions}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        // contentPadding: EdgeInsets.all(2.0.r),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: SvgPicture.asset(
                Res.noun_Close_3490115,
                // AppAssets.APP_BAR_LOGO,
                height: 11.h,
                width: 11.w,
                // fit: BoxFit.fill,
              ),
            ),
            Center(
                child: Text(
              title!,
              style: TextStyle(
                color: const Color(0xff1A1818),
                fontSize: 16.sp,
              ),
            )),
          ],
        ),
        content: content,
        actionsPadding: EdgeInsets.all(20.r),
        actions: actions,
      );
    },
  );
}
