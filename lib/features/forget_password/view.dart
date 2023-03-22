import 'package:begoo_souq/components/custom_text_field/custom_text_field.dart';
import 'package:begoo_souq/components/navigate/navigate.dart';
import 'package:begoo_souq/features/update_password/view.dart';
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
                        'assets/images/logo.svg',
                        // AppAssets.APP_BAR_LOGO,
                        fit: BoxFit.fill,
                      ),
                      // 'assets/images/logo.svg',
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    //'${AppLocalizations.of(context)?.translate("KSA")}',
                    'Forgot Password',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 55,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Please Enter your Mobile Number.',
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 50.h,
                width: 260.w,
                child: CustomTextFiled(
                  //'${AppLocalizations.of(context)?.translate("KSA")}',
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
                    FocusScope.of(context).requestFocus(buttonLoginFocus);
                  },
                  validator: (validator) {
                    if (validator!.isEmpty) {
                      return "AppLocalizations.of(context)!.translate('*required_str')}";
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                height: 55,
              ),
              InkWell(
                focusNode: buttonLoginFocus,
                onTap: () {
                  navigateTo(context, const UpdatePasswordView());
                },
                child: Container(
                  height: 50.h,
                  width: 260.w,
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
