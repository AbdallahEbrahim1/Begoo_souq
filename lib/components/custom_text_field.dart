import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFiled extends StatelessWidget {
  final FocusNode? focusNode;
  final ValueChanged<String>? onFieldSubmitted;
  final FormFieldValidator<String>? validator;
  final Widget? prefixIcon;
  final String? labelText;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final String? hintText;
  final bool isEnabled;
  final bool isSearch;
  final Function()? onTap;

  const CustomTextFiled({
    Key? key,
    this.focusNode,
    this.onFieldSubmitted,
    this.validator,
    this.prefixIcon,
    this.labelText,
    this.suffixIcon,
    this.controller,
    this.hintText,
    this.isEnabled = true,
    this.isSearch = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        scrollPhysics: const BouncingScrollPhysics(),
        onFieldSubmitted: onFieldSubmitted,
        validator: validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0.r),
            ),
            borderSide: const BorderSide(
              color: Color(0xffA2ADB5),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0.r),
            ),
            borderSide: const BorderSide(
              color: Color(0xffA2ADB5),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0.r),
            ),
            borderSide: const BorderSide(
              color: Color(0xffA2ADB5),
            ),
          ),
          disabledBorder: isSearch
              ? InputBorder.none
              : OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0.r),
                  ),
                  borderSide: const BorderSide(
                    color: Color(0xffA2ADB5),
                  ),
                ),
          // counterText: '',
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelText: labelText,
          hintText: hintText,
          enabled: isEnabled,
        ),
      ),
    );
  }
}
