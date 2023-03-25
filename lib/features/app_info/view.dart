import 'package:animate_do/animate_do.dart';
import 'package:begoo_souq/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppInfoView extends StatelessWidget {
  final String title;
  final String contect;
  const AppInfoView({Key? key, required this.title, required this.contect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final _bloc = KiwiContainer().resolve<AppInfoBloc>();
    // _bloc.add(GetAppInfoEvent());
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xff505050),
          ),
        ),
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(color: const Color(0xff505050), fontSize: 15.sp),
        ),
        elevation: 0,
        backgroundColor: const Color(0xffFAFAFA),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              FadeInDown(
                duration: const Duration(seconds: 1),
                child: BounceInDown(
                  duration: const Duration(seconds: 2),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 40),
                    height: 90.h,
                    width: 150.w,
                    child: Image.asset(
                      Res.logo,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Html(
                  data: contect,
                  style: {
                    "p": Style(
                      fontStyle: FontStyle.normal,
                      fontSize: FontSize(18.sp),
                      fontWeight: FontWeight.w500,
                    ),
                  },
                ),
              ),
              const SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
