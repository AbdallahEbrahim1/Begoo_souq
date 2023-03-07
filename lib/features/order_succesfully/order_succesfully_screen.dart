import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class OrderSuccesfullyScreen extends StatefulWidget {
  const OrderSuccesfullyScreen({Key? key}) : super(key: key);

  @override
  _OrderSuccesfullyScreenState createState() => _OrderSuccesfullyScreenState();
}

class _OrderSuccesfullyScreenState extends State<OrderSuccesfullyScreen> {
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
              'assets/images/icon.svg',
              // AppAssets.APP_BAR_LOGO,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              //'${AppLocalizations.of(context)?.translate("KSA")}',
              'Order Placed Succesfully!',
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
              'Your order was placed successfully. For more details, check All My Orders page under Profile tab !',
              style: TextStyle(
                fontSize: 13,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 100,
              width: 200.w,
              color: HexColor('#FFFFFF'),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    //'${AppLocalizations.of(context)?.translate("KSA")}',
                    'Order ID',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    //'${AppLocalizations.of(context)?.translate("KSA")}',
                    '22455@',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
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
                    'My Orders',
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
