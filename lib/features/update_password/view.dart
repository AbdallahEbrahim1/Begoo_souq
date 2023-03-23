import 'package:begoo_souq/components/custom_text_field.dart';
import 'package:begoo_souq/components/default_button.dart';
import 'package:begoo_souq/components/my_dialog.dart';
import 'package:begoo_souq/components/navigate.dart';
import 'package:begoo_souq/features/login/view.dart';
import 'package:begoo_souq/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UpdatePasswordView extends StatefulWidget {
  const UpdatePasswordView({Key? key}) : super(key: key);

  @override
  _UpdatePasswordViewState createState() => _UpdatePasswordViewState();
}

class _UpdatePasswordViewState extends State<UpdatePasswordView> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  final passwordFocus = FocusNode();
  final confirmPasswordFocus = FocusNode();
  final buttonUpdatePasswordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white54,
        centerTitle: true,
        title: Text(
          'Update Password',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                child: CustomTextFiled(
                  hintText: 'New Password',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SvgPicture.asset(
                      'assets/images/password.svg',
                      height: 15,
                    ),
                  ),
                  focusNode: passwordFocus,
                  controller: _passwordController,
                  onFieldSubmitted: (v) {
                    FocusScope.of(context)
                        .requestFocus(buttonUpdatePasswordFocus);
                  },
                  validator: (validator) {
                    if (validator!.isEmpty) {
                      return "AppLocalizations.of(context)!.translate('*required_str')}";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: CustomTextFiled(
                  hintText: 'Confirm New Password',
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
                        .requestFocus(buttonUpdatePasswordFocus);
                  },
                  validator: (validator) {
                    if (validator!.isEmpty) {
                      return "AppLocalizations.of(context)!.translate('*required_str')}";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 400.h,
              ),
              DefaultButton(
                height: 50.h,
                title: LocaleKeys.Update_Password.tr(),
                fontSize: 20.sp,
                color: const Color(0xffef5a2e),
                focusNode: buttonUpdatePasswordFocus,
                onTap: () {
                  showMyDialog(
                    context: context,
                    actions: [
                      DefaultButton(
                        height: 42.h,
                        width: 120.w,
                        color: Colors.black,
                        title: LocaleKeys.DONE.tr(),
                        onTap: () {
                          navigateTo(context, const LoginView());
                        },
                      ),
                    ],
                    title: 'Password Changed',
                    content: SizedBox(
                      height: 50.h,
                      width: 300.w,
                      child: Column(
                        children: [
                          Text(
                            'Your Password has been successfully',
                            style: TextStyle(
                              fontSize: 14.0.sp,
                              color: const Color(0xff979797),
                            ),
                          ),
                          Text(
                            'updated!',
                            style: TextStyle(
                              fontSize: 14.0.sp,
                              color: const Color(0xff979797),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
