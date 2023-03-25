import 'package:begoo_souq/components/app_dialog.dart';
import 'package:begoo_souq/components/custom_text_field.dart';
import 'package:begoo_souq/components/default_button.dart';
import 'package:begoo_souq/features/edit_profile/bloc/bloc.dart';
import 'package:begoo_souq/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kiwi/kiwi.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  final _bloc = KiwiContainer().resolve<EditProfileBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: HexColor('#505050'), // add custom icons also
          ),
        ),
        centerTitle: true,
        title: Text(
          // '${AppLocalizations.of(context)?.translate("Edit_Profile")}',
          'Edit Profile',
          style: TextStyle(
            color: HexColor('#505050'),
            fontSize: 15,
          ),
        ),
        elevation: 0,
        backgroundColor: HexColor('#FAFAFA'),
      ),
      backgroundColor: HexColor('#FAFAFA'),
      body: Padding(
        padding: EdgeInsets.all(8.0.r),
        child: Form(
          key: _bloc.key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 20.w),
              //   child: Text(
              //     'Gender',
              //     style: TextStyle(
              //       fontSize: 18.sp,
              //       fontWeight: FontWeight.normal,
              //     ),
              //   ),
              // ),
              // Row(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       SizedBox(
              //         height: 42.h,
              //         width: 90.w,
              //         child: RadioListTile(
              //           value: 1,
              //           groupValue: _groupValueGender,
              //           secondary: Text(
              //             'male',
              //             style: TextStyle(
              //               fontSize: 15.sp,
              //               color: _groupValueGender == 1 ? Colors.red : null,
              //               fontWeight: FontWeight.normal,
              //             ),
              //           ),
              //           onChanged: (newValue) =>
              //               setState(() => _groupValueGender = newValue as int),
              //           activeColor: Colors.black,
              //           selected: false,
              //         ),
              //       ),
              //       SizedBox(
              //         height: 42.h,
              //         width: 105.w,
              //         child: RadioListTile(
              //           value: 0,
              //           groupValue: _groupValueGender,
              //           secondary: Text(
              //             'Female',
              //             style: TextStyle(
              //               fontSize: 15.sp,
              //               // color: _groupValueGender == 0 ? Colors.red : null,
              //               fontWeight: FontWeight.normal,
              //             ),
              //           ),
              //           onChanged: (newValue) =>
              //               setState(() => _groupValueGender = newValue as int),
              //           activeColor: Colors.black,
              //           selected: false,
              //         ),
              //       ),
              //     ]),
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
                            () => _bloc.groupValueGender = newValue as int),
                        groupValue: _bloc.groupValueGender,
                        value: 1,
                        activeColor: Colors.red,
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                          color:
                              _bloc.groupValueGender == 1 ? Colors.red : null,
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
                            () => _bloc.groupValueGender = newValue as int),
                        groupValue: _bloc.groupValueGender,
                        value: 0,
                        activeColor: Colors.red,
                      ),
                      Text(
                        'Female',
                        style: TextStyle(
                          color:
                              _bloc.groupValueGender == 0 ? Colors.red : null,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
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
                  // FocusScope.of(context).requestFocus(emailFocus);
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
                  // FocusScope.of(context).requestFocus(mobileFocus);
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
                  // FocusScope.of(context).requestFocus(passwordFocus);
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
              BlocConsumer(
                bloc: _bloc,
                listener: (context, state) {
                  if (state is EditProfileSuccessState) {
                    requestSentDialog(context, onClickDoneBtn: () {});
                  }
                },
                builder: (context, state) {
                  return DefaultButton(
                    isLoading: state is EditProfileLoadingState,
                    focusNode: _bloc.buttonUpdateFocusNode,
                    height: 50.h,
                    title: LocaleKeys.Update.tr(),
                    fontSize: 20.sp,
                    color: const Color(0xffef5a2e),
                    onTap: () {
                      _bloc.add(EditProfileEvent());
                    },
                  );
                },
              ),
              SizedBox(height: 50.h),
            ],
          ),
        ),
      ),
    );
  }
}
