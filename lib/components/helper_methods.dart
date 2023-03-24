import 'package:begoo_souq/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) {
        return false;
      },
    );

void navigateReplacement(context, widget) => Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );
Widget myDivider() => Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 20.0,
      ),
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: Colors.grey[300],
      ),
    );
final navigatorKey = GlobalKey<NavigatorState>();

enum MessageType { success, fail, warning }

showToast(
    {required String msg,
    required BuildContext context,
    MessageType type = MessageType.fail}) {
  if (msg.isNotEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: const Duration(seconds: 2),
      backgroundColor: getMsgColor(type),
      content: Text(msg),
      behavior: SnackBarBehavior.floating,
    ));
  }
}

Color getMsgColor(MessageType type) {
  switch (type) {
    case MessageType.fail:
      return Colors.red;
    case MessageType.success:
      return const Color(0xff4C8613);
    case MessageType.warning:
      return Colors.yellow;
  }
}

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

void removeFocus(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);

  if (!currentFocus.hasPrimaryFocus) {
    currentFocus.unfocus();
  }
}
