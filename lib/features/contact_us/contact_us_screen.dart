import 'package:begoo_souq/components/custom_text_field/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

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
      drawer: Drawer(
        child: Stack(
          children: [
            ListView(
              children: const [
                // Image(
                //   image: AssetImage('assets/images/Group 2.png'),
                // ),
                InkWell(
                  // onTap: (){},
                  child: ListTile(
                    title: Text(
                      'Home',
                    ),
                    leading: Icon(Icons.home_outlined),
                  ),
                ),
                Divider(),
                InkWell(
                  // onTap: () {},
                  child: ListTile(
                    title: Text(
                      'profile',
                    ),
                    leading: Icon(Icons.perm_identity),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.arrow_back,
            color: HexColor('#505050'), // add custom icons also
          ),
        ),
        title: Center(
          child: Text(
            'Contact Us                     ',
            style: TextStyle(color: HexColor('#505050'), fontSize: 15),
          ),
        ),
        // actions: [],
        elevation: 0,
        backgroundColor: HexColor('#FAFAFA'),
      ),
      body: Container(
          color: HexColor('#FAFAFA'),
          child: Form(
            key: _key,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  SizedBox(
                    height: 40.h,
                    width: 300.w,
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
                          return "AppLocalizations.of(context)!.translate('*required_str')}";
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40.h,
                    width: 300.w,
                    child: CustomTextFiled(
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
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40.h,
                    width: 300.w,
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
                        FocusScope.of(context).requestFocus(passwordFocus);
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
                    height: 20,
                  ),
                  SizedBox(
                    height: 40.h,
                    width: 300.w,
                    child: CustomTextFiled(
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
                        FocusScope.of(context)
                            .requestFocus(confirmPasswordFocus);
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
                    height: 15,
                  ),
                  InkWell(
                    focusNode: buttonRegisterFocusNode,
                    onTap: () {},
                    child: Container(
                      height: 50.h,
                      width: 300.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffef5a2e),
                      ),
                      child: const Center(
                        child: Text(
                          //'${AppLocalizations.of(context)?.translate("KSA")}',
                          'Send',
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
                ],
              ),
            ),
          )),
    );
  }
}
