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
  final hintText;

  // FocusNode nextFocus;

  const CustomTextFiled({
    this.focusNode,
    this.onFieldSubmitted,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.labelText,
    this.controller,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      scrollPhysics: const BouncingScrollPhysics(),
      onFieldSubmitted: onFieldSubmitted,
      validator: validator,
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
        counterText: '',
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        labelText: labelText,
        hintText: hintText,
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class CustomTextField extends StatelessWidget {
//   final int? maxLines;
//   final Widget? prefixIcon;
//   final String? labelText;
//   final Widget? suffixIcon;
//   final TextEditingController? controller;
//   final fillColor;
//   final label;
//   final hintText;
//   final initialValue;
//   final int? maxLength;
//   final FocusNode? focusNode;
//   final Value<String>? onSubmit;
//
//   CustomTextField({
//     this.maxLines,
//     this.prefixIcon,
//     this.labelText,
//     this.suffixIcon,
//     this.controller,
//     this.fillColor,
//     this.hintText,
//     this.initialValue,
//     this.maxLength,
//     this.focusNode,
//     this.label,
//     required this.onSubmit,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 1,
//       height: 1,
//       child: TextFormField(
//         onFieldSubmitted: onSubmit,
//         maxLines: maxLines,
//         maxLength: maxLength,
//         focusNode: focusNode,
//         controller: controller,
//         decoration: const InputDecoration(
//           border: OutlineInputBorder(),
//         ),
//       ),
//     );
//   }
// }
