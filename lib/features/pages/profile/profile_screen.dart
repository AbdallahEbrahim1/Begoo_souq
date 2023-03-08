import 'package:begoo_souq/components/navigate/navigate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

import 'edit_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
          'Profile',
          style: TextStyle(
            color: HexColor('#505050'),
            fontSize: 15.sp,
          ),
        ),
        elevation: 0,
        backgroundColor: HexColor('#FAFAFA'),
      ),
      backgroundColor: HexColor('#FAFAFA'),
      body: ListView(
        padding: EdgeInsets.all(10.r),
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              color: HexColor('#EF5A2E'),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  child: SvgPicture.asset(
                    'assets/images/fb.svg',
                    // AppAssets.APP_BAR_LOGO,
                    fit: BoxFit.fill,
                  ),
                  // 'assets/images/logo.svg',
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  //'${AppLocalizations.of(context)?.translate("KSA")}',
                  'User Name',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'user@gmail.com',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: HexColor('#1A1818'), // background
                  ),
                  onPressed: () {
                    navigateTo(context, const EditScreen());
                  },
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: HexColor('#FFFFFF'),
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {},
            child: Container(
              height: 50.h,
              //width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 4.h,
                  horizontal: 15.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Stars',
                      style: TextStyle(
                        color: HexColor('#1A1A1A'),
                        fontSize: 15.sp,
                      ),
                    ),
                    IconButton(
                      color: Colors.red,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            borderRadius: BorderRadius.circular(10.r),
            onTap: () {},
            child: Container(
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 4.h,
                  horizontal: 15.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wallet',
                      style: TextStyle(
                        color: HexColor('#1A1A1A'),
                        fontSize: 15.sp,
                      ),
                    ),
                    IconButton(
                      color: Colors.red,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {},
            child: Container(
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      // '${AppLocalizations.of(context)?.translate("Orders")}',
                      'Orders',
                      style: TextStyle(
                        color: HexColor('#1A1A1A'),
                        fontSize: 15,
                      ),
                    ),
                    IconButton(
                      color: Colors.red,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {},
            child: Container(
              height: 50,
              //width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      // '${AppLocalizations.of(context)?.translate("FAVORITES")}',

                      'Favorites',
                      style: TextStyle(
                        color: HexColor('#1A1A1A'),
                        fontSize: 15,
                      ),
                    ),
                    IconButton(
                      color: Colors.red,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {},
            child: Container(
              height: 50,
              //width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      // '${AppLocalizations.of(context)?.translate("My_Addresses")}',
                      'My Address',
                      style: TextStyle(
                        color: HexColor('#1A1A1A'),
                        fontSize: 15,
                      ),
                    ),
                    IconButton(
                      color: Colors.red,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {},
            child: Container(
              height: 50,
              //width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                  horizontal: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      // '${AppLocalizations.of(context)?.translate("Change_Password")}',
                      'Change Password',
                      style: TextStyle(
                        color: HexColor('#1A1A1A'),
                        fontSize: 15,
                      ),
                    ),
                    IconButton(
                      color: Colors.red,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 50.h,
              width: 300.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffef5a2e),
              ),
              child: Center(
                child: Text(
                  // '${AppLocalizations.of(context)?.translate("Logout")}',
                  'Logout',
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
    );
  }
}
