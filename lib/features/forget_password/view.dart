import 'package:begoo_souq/components/custom_text_field.dart';
import 'package:begoo_souq/components/default_button.dart';
import 'package:begoo_souq/generated/locale_keys.g.dart';
import 'package:begoo_souq/res.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  _ForgetPasswordViewState createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  final TextEditingController _mobileController = TextEditingController();

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  final mobileFocus = FocusNode();

  final buttonLoginFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: _key,
          child: Padding(
            padding: EdgeInsets.all(16.0.r),
            child: Column(
              children: [
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 75,
                      width: 130,
                      child: ClipRRect(
                        child: SvgPicture.asset(
                          'assets/images/logoSvg.svg',
                          // AppAssets.APP_BAR_LOGO,
                          fit: BoxFit.fill,
                        ),
                        // 'assets/images/logo.svg',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 45.h,
                ),
                Text(
                  'Forgot Password',
                  style:
                      TextStyle(fontSize: 32.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 55.h,
                ),
                Text(
                  'Please Enter your Mobile Number.',
                  style: TextStyle(
                    fontSize: 13.sp,
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                CustomTextFiled(
                  hintText: LocaleKeys.mobile_number.tr(),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SvgPicture.asset(
                      Res.noun_Phone_1788724,
                      height: 15.h,
                    ),
                  ),
                  focusNode: mobileFocus,
                  controller: _mobileController,
                  onFieldSubmitted: (v) {
                    FocusScope.of(context).requestFocus(buttonLoginFocus);
                  },
                  validator: (validator) {
                    if (validator!.isEmpty) {
                      return "AppLocalizations.of(context)!.translate('*required_str')}";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 55.h,
                ),
                DefaultButton(
                  onTap: () {
                    // showMyDialog(
                    //   context: context,
                    //   actions: [
                    //     DefaultButton(
                    //       height: 42.h,
                    //       width: 120.w,
                    //       color: Colors.black,
                    //       title: LocaleKeys.DONE.tr(),
                    //       onTap: () {
                    //         navigateTo(context, const UpdatePasswordView());
                    //       },
                    //     ),
                    //   ],
                    //   content: SizedBox(
                    //     height: 200.h,
                    //     width: 300.w,
                    //     child: Column(
                    //       children: [
                    //         SizedBox(
                    //           height: 26.h,
                    //         ),
                    //         SvgPicture.asset(
                    //           Res.noun_like_939692,
                    //           // AppAssets.APP_BAR_LOGO,
                    //           height: 44.h,
                    //           width: 46.w,
                    //           // fit: BoxFit.fill,
                    //         ),
                    //         SizedBox(
                    //           height: 26.h,
                    //         ),
                    //         Text(
                    //           'We Send a password reset link on your ',
                    //           style: TextStyle(
                    //             fontSize: 14.0.sp,
                    //             color: const Color(0xff979797),
                    //           ),
                    //         ),
                    //         Text(
                    //           'Mobile Number ! Please check.',
                    //           style: TextStyle(
                    //             fontSize: 14.0.sp,
                    //             color: const Color(0xff979797),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    //   title: 'Password Send',
                    // );
                  },
                  title: LocaleKeys.Next.tr(),
                  height: 50.h,
                  color: const Color(0xffef5a2e),
                  fontSize: 20.sp,
                  focusNode: buttonLoginFocus,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
