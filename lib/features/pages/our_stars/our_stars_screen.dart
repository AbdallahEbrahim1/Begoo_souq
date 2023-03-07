import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class OurStarsScreen extends StatelessWidget {
  const OurStarsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: GestureDetector(
        //   onTap: () {},
        //   child: Icon(
        //     Icons.arrow_back,
        //     color: HexColor('#505050'), // add custom icons also
        //   ),
        // ),
        centerTitle: true,
        title: Text(
          'Our Stars',
          style: TextStyle(
            color: HexColor('#505050'),
            fontSize: 15.sp,
          ),
        ),
        actions: [
          Image.asset(
            'assets/images/noun_cart_1533491.png',
            height: 10.h,
            width: 40.w,
          )
        ],
        elevation: 0,
        backgroundColor: HexColor('#FAFAFA'),
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
                          'assets/images/pexels-pixabay-459957.png',
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
