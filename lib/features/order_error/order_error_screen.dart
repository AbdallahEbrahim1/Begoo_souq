import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class OrderErrorScreen extends StatefulWidget {
  const OrderErrorScreen({Key? key}) : super(key: key);

  @override
  _OrderErrorScreenState createState() => _OrderErrorScreenState();
}

class _OrderErrorScreenState extends State<OrderErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 70,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 75,
              width: 130,
              child: ClipRRect(
                child: SvgPicture.asset(
                  'assets/images/logo.svg',
                  // AppAssets.APP_BAR_LOGO,
                  fit: BoxFit.fill,
                ),
                // 'assets/images/logo.svg',
              ),
            ),
            const SizedBox(
              height: 95,
            ),
            SvgPicture.asset(
              'assets/images/icon-2.svg',
              // AppAssets.APP_BAR_LOGO,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              //'${AppLocalizations.of(context)?.translate("KSA")}',
              'Error !',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: HexColor('#EF5A2E'),
              ),
            ),
            const SizedBox(
              height: 55,
            ),
            const Text(
              //'${AppLocalizations.of(context)?.translate("KSA")}',
              'Error Processing payment !',
              style: TextStyle(
                fontSize: 13,
              ),
            ),
            const SizedBox(
              height: 250,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50.h,
                // width: 260.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffef5a2e),
                ),
                child: const Center(
                  child: Text(
                    //'${AppLocalizations.of(context)?.translate("KSA")}',
                    'Try Again',
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
