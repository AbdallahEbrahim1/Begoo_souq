import 'package:begoo_souq/components/default_button.dart';
import 'package:begoo_souq/components/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildButtons extends StatelessWidget {
  const BuildButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          DefaultButton(
            height: 52.h,
            width: 161.w,
            // width: MediaQuery.of(context).size.width * .39,
            color: MyColors.button,
            textColor: MyColors.white,
            borderRadius: BorderRadius.circular(10),
            title: "Apply",
            onTap: () {},
          ),
          DefaultButton(
            height: 52.h,
            width: 161.w,
            // width: MediaQuery.of(context).size.width * .4,
            color: MyColors.black,
            textColor: MyColors.white,
            borderRadius: BorderRadius.circular(10),
            title: "Cancel",
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
