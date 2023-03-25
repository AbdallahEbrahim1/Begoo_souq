import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildListTile extends StatelessWidget {
  final Function() onTap;
  final String title;
  // final bool is;
  const BuildListTile({Key? key, required this.onTap, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.5.h),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!, width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        onTap: onTap,
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
        ),
        trailing: const Icon(
          Icons.arrow_forward,
          color: Colors.red,
        ),
      ),
    );
  }
}
