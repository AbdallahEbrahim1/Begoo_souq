import 'package:begoo_souq/components/custom_text_field.dart';
import 'package:begoo_souq/components/navigate.dart';
import 'package:begoo_souq/features/login/view.dart';
import 'package:begoo_souq/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  final _key = GlobalKey<FormState>();

  final nameFocus = FocusNode();
  final emailFocus = FocusNode();
  final mobileFocus = FocusNode();
  final passwordFocus = FocusNode();
  final confirmPasswordFocus = FocusNode();
  final buttonRegisterFocusNode = FocusNode();

  int _groupValueGender = -1;
  // int value = 1;
  int? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
                  Image.asset(
                    Res.logo,
                    height: 75.h,
                    width: 130.w,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        // padding: EdgeInsets.symmetric(horizontal: 20.w),
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Text(
                          'Gender',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Radio(
                                onChanged: (newValue) => setState(
                                    () => _groupValueGender = newValue as int),
                                groupValue: _groupValueGender,
                                value: 1,
                                activeColor: Colors.red,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                  color: _groupValueGender == 1
                                      ? Colors.red
                                      : null,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 30.w,
                          ),
                          Row(
                            children: [
                              Radio(
                                onChanged: (newValue) => setState(
                                    () => _groupValueGender = newValue as int),
                                groupValue: _groupValueGender,
                                value: 0,
                                activeColor: Colors.red,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                  color: _groupValueGender == 0
                                      ? Colors.red
                                      : null,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.start,
                      //   children: <Widget>[
                      //     SizedBox(
                      //       width: 115.w,
                      //       height: 52.h,
                      //       child: RadioListTile(
                      //         value: 0,
                      //         groupValue: _groupValue,
                      //         title: Text(
                      //           'Male',
                      //           style: TextStyle(
                      //             color: _groupValue == 0 ? Colors.red : null,
                      //             fontSize: 15.sp,
                      //             fontWeight: FontWeight.normal,
                      //           ),
                      //         ),
                      //         onChanged: (newValue) =>
                      //             setState(() => _groupValue = newValue as int),
                      //         activeColor: Colors.red,
                      //         selected: false,
                      //       ),
                      //     ),
                      //     SizedBox(
                      //       width: 130.w,
                      //       height: 52.h,
                      //       child: RadioListTile(
                      //         value: 1,
                      //         groupValue: _groupValue,
                      //         title: Text(
                      //           'Female',
                      //           style: TextStyle(
                      //             color: _groupValue == 1 ? Colors.red : null,
                      //             fontSize: 15.sp,
                      //             fontWeight: FontWeight.normal,
                      //           ),
                      //         ),
                      //         onChanged: (newValue) =>
                      //             setState(() => _groupValue = newValue as int),
                      //         activeColor: Colors.red,
                      //         selected: false,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextFiled(
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
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomTextFiled(
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
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomTextFiled(
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
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomTextFiled(
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
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomTextFiled(
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
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                        value: 0,
                        groupValue: value,
                        onChanged: (newValue) => setState(() {
                          value = newValue as int;
                        }),
                        activeColor: Colors.red,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'I accept all Privacy Policies!',
                        style: TextStyle(
                          color: value == 0 ? Colors.red : null,
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
                      child: const Center(
                        child: Text(
                          'Register',
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
                    height: 20.h,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  InkWell(
                    onTap: () {
                      navigateTo(context, const LoginView());
                    },
                    child: Container(
                      height: 50.h,
                      //  width: 300.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)),
                      child: Center(
                        child: Text(
                          'Signin',
                          style: TextStyle(
                            height: 1,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
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
      ),
    );
  }
}
