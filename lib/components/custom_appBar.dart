import 'package:begoo_souq/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  String? title;
  List<Widget>? actions;
  Widget? widget;
  bool isHome;
  bool isTitle;
  bool isLeading;

  CustomAppBar({
    Key? key,
    this.title,
    this.actions,
    this.isHome = false,
    this.isTitle = false,
    this.isLeading = false,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color(0xffFAFAFA),
      centerTitle: true,
      actions: actions,
      title: isTitle
          ? isHome
              ? Image.asset(Res.logo, height: 30.h, width: 54.w)
              : Text(
                  title!,
                  style: TextStyle(
                    color: const Color(0xff505050),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                )
          : const SizedBox(),
      leading: isHome
          ? Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: Image.asset('assets/images/noun_menu_1807546.png'),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            )
          : isLeading
              ? GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Color(0xff505050),
                    size: 30,
                  ),
                )
              : null,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(60);
}
