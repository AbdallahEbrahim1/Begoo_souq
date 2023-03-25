import 'package:begoo_souq/components/custom_text_field.dart';
import 'package:begoo_souq/components/default_button.dart';
import 'package:begoo_souq/components/helper_methods.dart';
import 'package:begoo_souq/features/forget_password/view.dart';
import 'package:begoo_souq/features/login/bloc/bloc.dart';
import 'package:begoo_souq/features/register/view.dart';
import 'package:begoo_souq/generated/locale_keys.g.dart';
import 'package:begoo_souq/res.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kiwi/kiwi.dart';

import '../pages/view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _bloc = KiwiContainer().resolve<LoginBloc>();
  // final googleSignInService = GoogleSignInService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _bloc.key,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: SingleChildScrollView(
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
                    LocaleKeys.LOGIN.tr(),
                    style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    LocaleKeys.Please_login_to_your_account.tr(),
                    style: TextStyle(
                        fontSize: 15.sp, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  CustomTextFiled(
                    hintText: LocaleKeys.mobile_number.tr(),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset(
                        'assets/images/noun_Phone_1788724.svg',
                        height: 15,
                      ),
                    ),
                    focusNode: _bloc.mobileFocus,
                    controller: _bloc.phoneController,
                    onFieldSubmitted: (v) {
                      FocusScope.of(context).requestFocus(_bloc.passwordFocus);
                    },
                    validator: (validator) {
                      if (validator!.isEmpty) {
                        return "enter phone number";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  CustomTextFiled(
                    hintText: LocaleKeys.password.tr(),
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
                          .requestFocus(_bloc.buttonLoginFocus);
                    },
                    validator: (validator) {
                      if (validator!.isEmpty) {
                        return " enter password";
                      }
                      return null;
                    },
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
                        child: Text(
                          LocaleKeys.forget_password.tr(),
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  BlocConsumer(
                    bloc: _bloc,
                    listener: (context, state) {
                      if (state is LoginSuccessState) {
                        showToast(
                            msg: state.msg,
                            context: context,
                            type: MessageType.success);
                        navigateTo(
                            context,
                            PagesView(
                              selectedTabIndex: 0,
                            ));
                      } else if (state is LoginFailedState) {
                        showToast(
                            msg: state.msg,
                            context: context,
                            type: MessageType.fail);
                      }
                    },
                    builder: (context, state) {
                      return DefaultButton(
                        isLoading: state is LoginLoadingState,
                        focusNode: _bloc.buttonLoginFocus,
                        onTap: () {
                          removeFocus(context);
                          if (_bloc.key.currentState!.validate()) {
                            _bloc.add(LoginEvent());
                          }
                        },
                        title: LocaleKeys.Login.tr(),
                        height: 50.h,
                        color: const Color(0xffef5a2e),
                        fontSize: 20.sp,
                      );
                    },
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    LocaleKeys.or_login_with.tr(),
                    style: TextStyle(
                      color: const Color(0xff1A1A1A),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal,
                    ),
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
                        onTap: () {
                          // await googleSignInService.signIn();
                        },
                        child: SvgPicture.asset('assets/images/gmail.svg'),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    LocaleKeys.Dont_have_an_account.tr(),
                    style: TextStyle(
                      color: const Color(0xff1A1A1A),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  DefaultButton(
                    focusNode: _bloc.buttonLoginFocus,
                    onTap: () {
                      navigateTo(context, const RegisterView());
                    },
                    title: LocaleKeys.Create_Account.tr(),
                    height: 50.h,
                    borderColor: Colors.black,
                    textColor: Colors.black,
                    fontSize: 18.sp,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  InkWell(
                    onTap: () {
                      navigateTo(
                          context,
                          PagesView(
                            selectedTabIndex: 0,
                          ));
                    },
                    child: Text(
                      LocaleKeys.Continue_as_a_guest.tr(),
                      style: TextStyle(
                        color: const Color(0xff1A1818),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
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
      ),
    );
  }
}
