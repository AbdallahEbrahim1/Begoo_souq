import 'package:begoo_souq/components/custom_text_field/custom_text_field.dart';
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
        title: Center(
            child: Text(
          'Update Password',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.sp,
          ),
        )),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: CustomTextFiled(
                  hintText: 'Password',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SvgPicture.asset(
                      'assets/images/noun_Phone_1788724.svg',
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
                height: 350.h,
              ),
              InkWell(
                focusNode: buttonUpdatePasswordFocus,
                onTap: () {},
                child: Container(
                  height: 50.h,
                  width: 340.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffef5a2e),
                  ),
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                        height: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
