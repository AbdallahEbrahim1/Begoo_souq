import 'package:begoo_souq/components/app_dialog.dart';
import 'package:begoo_souq/components/custom_text_field.dart';
import 'package:begoo_souq/components/default_button.dart';
import 'package:begoo_souq/components/helper_methods.dart';
import 'package:begoo_souq/features/login/view.dart';
import 'package:begoo_souq/features/pages/view.dart';
import 'package:begoo_souq/features/register/bloc/bloc.dart';
import 'package:begoo_souq/generated/locale_keys.g.dart';
import 'package:begoo_souq/res.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kiwi/kiwi.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  _RegisterViewState createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final _bloc = KiwiContainer().resolve<RegisterBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            key: _bloc.key,
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
                              Radio<Gender>(
                                onChanged: (newValue) => setState(
                                    () => _bloc.groupValueGender = newValue),
                                groupValue: _bloc.groupValueGender,
                                value: Gender.male,
                                activeColor: Colors.red,
                              ),
                              Text(
                                'Male',
                                style: TextStyle(
                                  // color: _bloc.groupValueGender == 1
                                  //     ? Colors.red
                                  //     : null,
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
                              Radio<Gender>(
                                onChanged: (newValue) => setState(
                                    () => _bloc.groupValueGender = newValue),
                                groupValue: _bloc.groupValueGender,
                                value: Gender.female,
                                activeColor: Colors.red,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                  // color: _bloc.groupValueGender == 0
                                  //     ? Colors.red
                                  //     : null,
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
                    focusNode: _bloc.nameFocus,
                    controller: _bloc.nameController,
                    onFieldSubmitted: (v) {
                      FocusScope.of(context).requestFocus(_bloc.emailFocus);
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
                    focusNode: _bloc.emailFocus,
                    controller: _bloc.emailController,
                    onFieldSubmitted: (v) {
                      FocusScope.of(context).requestFocus(_bloc.mobileFocus);
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
                    focusNode: _bloc.mobileFocus,
                    controller: _bloc.mobileController,
                    onFieldSubmitted: (v) {
                      FocusScope.of(context).requestFocus(_bloc.passwordFocus);
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
                    controller: _bloc.passwordController,
                    focusNode: _bloc.passwordFocus,
                    onFieldSubmitted: (v) {
                      FocusScope.of(context)
                          .requestFocus(_bloc.confirmPasswordFocus);
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
                    controller: _bloc.confirmPasswordController,
                    focusNode: _bloc.confirmPasswordFocus,
                    onFieldSubmitted: (v) {
                      FocusScope.of(context)
                          .requestFocus(_bloc.buttonRegisterFocusNode);
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
                        groupValue: _bloc.value,
                        onChanged: (newValue) => setState(() {
                          _bloc.value = newValue as int;
                        }),
                        activeColor: Colors.red,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'I accept all Privacy Policies!',
                        style: TextStyle(
                          color: _bloc.value == 0 ? Colors.red : null,
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
                  BlocConsumer(
                    bloc: _bloc,
                    listener: (context, state) {
                      if (state is RegisterSuccessState) {
                        signUpConfirmationDialog(context, onClickDoneBtn: () {
                          navigateAndFinish(
                              context,
                              PagesView(
                                selectedTabIndex: 0,
                              ));
                        });
                        // showToast(
                        //     msg: state.msg,
                        //     context: context,
                        //     type: MessageType.success);

                      } else if (state is RegisterFailedState) {
                        showToast(
                            msg: state.msg,
                            context: context,
                            type: MessageType.fail);
                      }
                    },
                    builder: (context, state) {
                      return DefaultButton(
                        isLoading: state is RegisterLoadingState,
                        focusNode: _bloc.buttonRegisterFocusNode,
                        onTap: () {
                          if (_bloc.key.currentState!.validate()) {
                            _bloc.add(RegisterEvent());
                          }
                        },
                        title: LocaleKeys.Register.tr(),
                        height: 50.h,
                        color: const Color(0xffef5a2e),
                        fontSize: 20.sp,
                      );
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    LocaleKeys.Already_have_an_account.tr(),
                    style: TextStyle(
                      color: const Color(0xff1A1A1A),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  DefaultButton(
                    focusNode: _bloc.buttonRegisterFocusNode,
                    onTap: () {
                      navigateTo(context, const LoginView());
                    },
                    title: LocaleKeys.Signin.tr(),
                    height: 50.h,
                    fontSize: 18.sp,
                    borderColor: Colors.black,
                    textColor: Colors.black,
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
