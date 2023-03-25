import 'package:begoo_souq/components/app_dialog.dart';
import 'package:begoo_souq/components/custom_text_field.dart';
import 'package:begoo_souq/components/default_button.dart';
import 'package:begoo_souq/components/helper_methods.dart';
import 'package:begoo_souq/features/change_password/bloc/bloc.dart';
import 'package:begoo_souq/features/profile/view.dart';
import 'package:begoo_souq/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kiwi/kiwi.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  _ChangePasswordViewState createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  final _bloc = KiwiContainer().resolve<ChangePasswordBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white54,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xff505050),
          ),
        ),
        title: Text(
          'Update Password',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.sp,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.r),
        child: Form(
          key: _bloc.key,
          child: Column(
            children: [
              CustomTextFiled(
                hintText: 'Old Password',
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SvgPicture.asset(
                    'assets/images/password.svg',
                    height: 15,
                  ),
                ),
                focusNode: _bloc.oldPasswordFocus,
                controller: _bloc.oldPasswordController,
                onFieldSubmitted: (v) {
                  FocusScope.of(context).requestFocus(_bloc.passwordFocus);
                },
                validator: (validator) {
                  if (validator!.isEmpty) {
                    return "AppLocalizations.of(context)!.translate('*required_str')}";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFiled(
                hintText: 'New Password',
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SvgPicture.asset(
                    'assets/images/password.svg',
                    height: 15,
                  ),
                ),
                focusNode: _bloc.passwordFocus,
                controller: _bloc.passwordController,
                onFieldSubmitted: (v) {
                  FocusScope.of(context)
                      .requestFocus(_bloc.confirmPasswordFocus);
                },
                validator: (validator) {
                  if (validator!.isEmpty) {
                    return "AppLocalizations.of(context)!.translate('*required_str')}";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFiled(
                hintText: 'Confirm New Password',
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
                      .requestFocus(_bloc.buttonUpdatePasswordFocus);
                },
                validator: (validator) {
                  if (validator!.isEmpty) {
                    return "AppLocalizations.of(context)!.translate('*required_str')}";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 400.h,
              ),
              //passwordChangedProfileDialog
              BlocConsumer(
                bloc: _bloc,
                listener: (context, state) {
                  if (state is ChangePasswordSuccessState) {
                    passwordChangedDialog(context, onClickDoneBtn: () {
                      navigateTo(context, const ProfileView());
                    });
                  } else if (state is ChangePasswordFailedState) {
                    showToast(
                        msg: state.msg,
                        context: context,
                        type: MessageType.fail);
                  }
                },
                builder: (context, state) {
                  return DefaultButton(
                    isLoading: state is ChangePasswordLoadingState,
                    height: 50.h,
                    title: LocaleKeys.Update_Password.tr(),
                    fontSize: 20.sp,
                    color: const Color(0xffef5a2e),
                    focusNode: _bloc.buttonUpdatePasswordFocus,
                    onTap: () {
                      _bloc.add(ChangePasswordEvent());
                    },
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
