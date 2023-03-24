import 'package:begoo_souq/components/custom_appBar.dart';
import 'package:begoo_souq/components/helper_methods.dart';
import 'package:begoo_souq/features/cart/view.dart';
import 'package:begoo_souq/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class OurStarsView extends StatelessWidget {
  const OurStarsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isTitle: true,
        title: 'Our Stars',
        actions: [
          IconButton(
            icon: Image.asset(
              Res.noun_cart,
              height: 18.h,
              width: 16.w,
            ),
            onPressed: () {
              navigateTo(context, const CartScreen());
            },
          ),
        ],
      ),
      backgroundColor: HexColor('#FAFAFA'),
      body: Column(
        //shrinkWrap: true,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0.r),
              ),
              child: Container(
                height: 50.h,
                //width: 90,
                decoration: BoxDecoration(
                  color: HexColor('#FFFFFF'),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: TextField(
                  // onChanged: (value) {},
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: 'Search',
                    suffixIcon:
                        Image.asset('assets/images/magnifying-glass.png'),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 15.h,
                      horizontal: 40.w,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(8.0.r),
              shrinkWrap: true,
              //scrollDirection: Axis.horizontal,
              itemCount: 10,
              // physics: const BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.w,
                //mainAxisSpacing: 10,
                //childAspectRatio: 5 / 2,
                //crossAxisSpacing: 10,
                mainAxisExtent: 170.h,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 140.h,
                        child: Image.asset(
                          'assets/images/pexels-pixabay.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      Text(
                        //'${AppLocalizations.of(context)?.translate("KSA")}',
                        'Kid Name',
                        style: TextStyle(
                          color: HexColor('#505050'),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
