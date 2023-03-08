import 'package:begoo_souq/components/custom_text_field/custom_text_field.dart';
import 'package:begoo_souq/components/navigate/navigate.dart';
import 'package:begoo_souq/features/forget_password/forget_password_screen.dart';
import 'package:begoo_souq/features/register/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  height: 75.h,
                  width: 130.w,
                  child: ClipRRect(
                    child: SvgPicture.asset(
                      'assets/images/logo.svg',
                      // AppAssets.APP_BAR_LOGO,
                      fit: BoxFit.fitWidth,
                    ),
                    // 'assets/images/logo.svg',
                  ),
                ),
                SizedBox(
                  height: 35.h,
                ),
                Text(
                  'LOGIN',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Please_login_to_your_account',
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.normal),
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
                        navigateTo(context, const ForgetPasswordScreen());
                      },
                      child: Text(
                        // '${AppLocalizations.of(context)?.translate("forget_password")}',
                        'Forgot Password?',
                        style: const TextStyle(fontWeight: FontWeight.normal),
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
                    child: Center(
                      child: Text(
                        'Login',
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
                SizedBox(
                  height: 5.h,
                ),
                Text(
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
                Text(
                  // '${AppLocalizations.of(context)?.translate("Dont_have_an_account")}'
                  'Don’t have an account?',
                ),
                SizedBox(
                  height: 15.h,
                ),
                InkWell(
                  onTap: () {
                    navigateTo(context, const RegisterScreen());
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
                    child: Center(
                      child: Text(
                        // '${AppLocalizations.of(context)?.translate("Create_Account")}',
                        'Create ACCOUNT',
                        style: const TextStyle(
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
                  // onTap: () {
                  //   navigateTo(context,  );
                  // },
                  child: Text(
                    // '${AppLocalizations.of(context)?.translate("Continue_as_a_guest")}',
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
