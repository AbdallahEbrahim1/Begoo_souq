import 'package:begoo_souq/components/custom_appBar.dart';
import 'package:begoo_souq/components/custom_text_field.dart';
import 'package:begoo_souq/components/default_button.dart';
import 'package:begoo_souq/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      appBar: CustomAppBar(
        isTitle: true,
        isLeading: true,
        title: LocaleKeys.Contact_Us.tr(),
      ),
      body: Container(
          color: const Color(0xffFAFAFA),
          child: Form(
            key: _key,
            child: Padding(
              padding: EdgeInsets.all(20.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: HexColor('#1A1818'),
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'You can directly contact us !',
                          style: TextStyle(
                            color: HexColor('#FFFFFF'),
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/noun_Phone_1788724.svg',
                              height: 15,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              '+965 1234 5678',
                              style: TextStyle(
                                color: HexColor('#FFFFFF'),
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/noun_Phone_1788724.svg',
                              height: 15,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              'hello@bego.com',
                              style: TextStyle(
                                color: HexColor('#FFFFFF'),
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Send us a message',
                        style: TextStyle(
                          color: HexColor('#090A0A'),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
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
                        return "AppLocalizations.of(context)!.translate('*required_str')}";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFiled(
                    //'${AppLocalizations.of(context)?.translate("KSA")}',
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
                        return "AppLocalizations.of(context)!.translate('*required_str')}";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFiled(
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
                      FocusScope.of(context).requestFocus(passwordFocus);
                    },
                    validator: (validator) {
                      if (validator!.isEmpty) {
                        return "AppLocalizations.of(context)!.translate('*required_str')}";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFiled(
                    //'${AppLocalizations.of(context)?.translate("KSA")}',
                    hintText: 'Message',
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
                        return "AppLocalizations.of(context)!.translate('*required_str')}";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  DefaultButton(
                    height: 50.h,
                    title: LocaleKeys.send.tr(),
                    onTap: () {},
                    color: const Color(0xffef5a2e),
                    fontSize: 20.sp,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
