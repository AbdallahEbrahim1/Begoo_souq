import 'package:begoo_souq/components/custom_text_field/custom_text_field.dart';
import 'package:begoo_souq/components/navigate/navigate.dart';
import 'package:begoo_souq/features/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  final nameFocus = FocusNode();
  final emailFocus = FocusNode();
  final mobileFocus = FocusNode();
  final passwordFocus = FocusNode();
  final confirmPasswordFocus = FocusNode();
  final buttonRegisterFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // physics: const BouncingScrollPhysics(),
        child: Form(
          key: _key,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 70,
              right: 20,
              left: 20,
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
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  'Register',
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // '${AppLocalizations.of(context)?.translate("Gender")}',
                      'Gender',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        //'${AppLocalizations.of(context)?.translate("KSA")}',
                        /// remove text and add radio button
                        const Text(
                          '* ',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          // '${AppLocalizations.of(context)?.translate("Male")}',
                          'Male',
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        SizedBox(
                          width: 50.w,
                        ),

                        /// remove text and add radio button
                        const Text(
                          '* ',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          // '${AppLocalizations.of(context)?.translate("Female")}',
                          'Female',
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 50.h,
                  //width: 300.w,
                  child: CustomTextFiled(
                    hintText: 'Name',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset(
                        'assets/images/noun_User_1150157.svg',
                        height: 15,
                      ),
                    ),
                    focusNode: nameFocus,
                    controller: _nameController,
                    onFieldSubmitted: (v) {
                      FocusScope.of(context).requestFocus(emailFocus);
                    },
                    validator: (validator) {
                      if (validator!.isEmpty) {
                        return "enter your name";
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
                    hintText: 'Email Address',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset(
                        'assets/images/noun_Email_681592.svg',
                        height: 15,
                      ),
                    ),
                    focusNode: emailFocus,
                    controller: _emailController,
                    onFieldSubmitted: (v) {
                      FocusScope.of(context).requestFocus(mobileFocus);
                    },
                    validator: (validator) {
                      if (validator!.isEmpty) {
                        return "enter a valid email address";
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
                    hintText: 'Mobile Number',
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
                        return "enter a valid phone number";
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
                    // hintText:
                    //     '${AppLocalizations.of(context)?.translate("password")}',
                    hintText: 'Password',
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
                      FocusScope.of(context).requestFocus(confirmPasswordFocus);
                    },
                    validator: (validator) {
                      if (validator!.isEmpty) {
                        return "password is too short";
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
                    hintText: 'Confirm Password',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset(
                        'assets/images/password.svg',
                        height: 15,
                      ),
                    ),
                    controller: _confirmPasswordController,
                    focusNode: confirmPasswordFocus,
                    onFieldSubmitted: (v) {
                      FocusScope.of(context)
                          .requestFocus(buttonRegisterFocusNode);
                    },
                    validator: (validator) {
                      if (validator!.isEmpty) {
                        return "enter password again ^-^";
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      '* ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      // '${AppLocalizations.of(context)?.translate("i_accept_all")}',

                      'I accept all Privacy Policies!',
                      style: const TextStyle(
                        // overflow: TextOverflow.ellipsis,
                        textBaseline: TextBaseline.alphabetic,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                InkWell(
                  focusNode: buttonRegisterFocusNode,
                  onTap: () {
                    // if (_key.currentState!.validate()) {
                    //   // return print('ll');
                    //   navigateTo(context, const RegisterScreen());
                    // }
                  },
                  child: Container(
                    height: 50.h,
                    // width: 300.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffef5a2e),
                    ),
                    child: Center(
                      child: Text(
                        // '${AppLocalizations.of(context)?.translate("Register")}',
                        'Register',
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
                  height: 20.h,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    // '${AppLocalizations.of(context)?.translate("Already_have_an_account")}',
                    'Already have an account?',
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  onTap: () {
                    navigateTo(context, const LoginScreen());
                  },
                  child: Container(
                    height: 50.h,
                    //  width: 300.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Text(
                        // '${AppLocalizations.of(context)?.translate("Signin")}',
                        'Signin',
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
                  height: 5.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
