import 'package:begoo_souq/components/custom_appBar.dart';
import 'package:begoo_souq/components/default_button.dart';
import 'package:begoo_souq/components/helper_methods.dart';
import 'package:begoo_souq/features/address/view.dart';
import 'package:begoo_souq/features/change_password/view.dart';
import 'package:begoo_souq/features/edit_profile/view.dart';
import 'package:begoo_souq/features/login/view.dart';
import 'package:begoo_souq/generated/locale_keys.g.dart';
import 'package:begoo_souq/network/local/cache_helper.dart';
import 'package:begoo_souq/res.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isTitle: true,
        title: LocaleKeys.PROFILE.tr(),
        isLeading: true,
      ),
      backgroundColor: const Color(0xffFAFAFA),
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
                    Res.Apple,
                    fit: BoxFit.fill,
                  ),
                  // 'assets/images/logo.svg',
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  CacheHelper.getName(),
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  CacheHelper.getEmail(),
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
                    navigateTo(context, const EditProfileView());
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
            onTap: () {
              navigateTo(context, const AddressView());
            },
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
            onTap: () {
              navigateTo(context, const ChangePasswordView());
            },
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
          DefaultButton(
            height: 50.h,
            title: LocaleKeys.LOGOUT.tr(),
            fontSize: 20.sp,
            color: const Color(0xffef5a2e),
            onTap: () {
              navigateTo(context, const LoginView());
            },
          )
        ],
      ),
    );
  }
}
