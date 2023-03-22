import 'package:begoo_souq/components/custom_text_field/custom_text_field.dart';
import 'package:begoo_souq/components/navigate/navigate.dart';
import 'package:begoo_souq/features/forget_password/view.dart';
import 'package:begoo_souq/features/register/view.dart';
import 'package:begoo_souq/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../pages/pages_screen.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final mobileFocus = FocusNode();
  final passwordFocus = FocusNode();
  final buttonLoginFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: SingleChildScrollView(
          ///////
          physics: const NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 70.0,
              left: 20.0,
              right: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Image.asset(
                    Res.logo,
                    height: 75.h,
                    width: 130.w,
                    // AppAssets.APP_BAR_LOGO,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  height: 35.h,
                ),
                Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Please login to your account.',
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 25.h,
                ),
                SizedBox(
                  height: 50.h,
                  // width: 300.w,
                  child: CustomTextFiled(
                    hintText: "mobile_number",
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset(
                        'assets/images/noun_Phone_1788724.svg',
                        height: 15,
                      ),
                    ),
                    focusNode: mobileFocus,
                    controller: _mobileController,
                    onFieldSubmitted: (v) {
                      FocusScope.of(context).requestFocus(passwordFocus);
                    },
                    validator: (validator) {
                      if (validator!.isEmpty) {
                        return "enter phone number";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  height: 50.h,
                  // width: 300.w,
                  child: CustomTextFiled(
                    hintText: "password",
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset(
                        'assets/images/password.svg',
                        height: 15,
                      ),
                    ),
                    controller: _passwordController,
                    focusNode: passwordFocus,
                    onFieldSubmitted: (v) {
                      FocusScope.of(context).requestFocus(buttonLoginFocus);
                    },
                    validator: (validator) {
                      if (validator!.isEmpty) {
                        return " enter password";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        navigateTo(context, const ForgetPasswordView());
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                InkWell(
                  focusNode: buttonLoginFocus,
                  onTap: () {
                    if (_key.currentState!.validate()) {}
                  },
                  child: Container(
                    height: 50.h,
                    //width: 300.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffef5a2e),
                    ),
                    child: const Center(
                      child: Text(
                        'Login',
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
                SizedBox(
                  height: 5.h,
                ),
                const Text(
                  // '${AppLocalizations.of(context)?.translate("or_login_with")}',
                  'or Login with',
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset('assets/images/Apple.svg'),
                    ),
                    SizedBox(
                      width: 15.0.w,
                    ),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset('assets/images/fb.svg'),
                    ),
                    SizedBox(
                      width: 15.0.w,
                    ),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset('assets/images/gmail.svg'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                const Text(
                  'Don’t have an account?',
                ),
                SizedBox(
                  height: 15.h,
                ),
                InkWell(
                  onTap: () {
                    navigateTo(context, const RegisterView());
                  },
                  child: Container(
                    height: 50.h,
                    // width: 300.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Create ACCOUNT',
                        style: TextStyle(
                          height: 1,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                InkWell(
                  onTap: () {
                    navigateTo(
                        context,
                        PagesScreen(
                          selectedTabIndex: 0,
                        ));
                  },
                  child: const Text(
                    'Continue as a guest',
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
