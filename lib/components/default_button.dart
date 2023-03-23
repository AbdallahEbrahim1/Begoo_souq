import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultButton extends StatelessWidget {
  final String title;
  final Function() onTap;
  final Color? textColor;
  final Color? color;
  final Color? borderColor;
  final BorderRadius? borderRadius;
  final EdgeInsets? margin;
  final double? width;
  final double? height;
  final double? fontSize;
  final String? fontFamily;
  final bool isLoading;
  final FocusNode? focusNode;

  const DefaultButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.isLoading = false,
    this.color,
    this.textColor,
    this.borderRadius,
    this.margin,
    this.borderColor,
    this.fontFamily,
    this.fontSize,
    this.width,
    this.height,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Center(
        child: Container(
          padding: EdgeInsets.all(2.r),
          height: height,
          width: width,
          child: const CircularProgressIndicator(),
        ),
      );
    }
    return InkWell(
      focusNode: focusNode,
      child: SizedBox(
        width: width ?? MediaQuery.of(context).size.width,
        height: height ?? MediaQuery.of(context).size.height,
        // margin: margin ??
        //     EdgeInsets.symmetric(
        //       horizontal: 5.w,
        //       vertical: 5.h,
        //     ),
        child: ElevatedButton(
          onPressed: onTap,
          child: Text(
            title,
            style: TextStyle(
              fontSize: fontSize ?? 15.sp,
              color: textColor ?? Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: fontFamily,
            ),
          ),
          style: ElevatedButton.styleFrom(
              primary: color ?? Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(10.r),
                side: BorderSide(
                  color: borderColor ?? Colors.white,
                  width: 1.w,
                ),
              ),
              elevation: 0),
        ),
      ),
    );
  }
}
