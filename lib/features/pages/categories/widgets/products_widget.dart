import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsWidget extends StatelessWidget {
  final double width;

  const ProductsWidget({
    Key? key,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      height: MediaQuery.of(context).size.height,
      width: width,
      color: const Color(0xffEFEFEF),
      child: ListView(
        children: [
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return width == 0
                    ? const SizedBox()
                    : InkWell(
                        highlightColor: const Color(0xffEF5A2E),
                        onTap: () {},
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          color: Colors.transparent,
                          padding: const EdgeInsets.only(
                              top: 15, left: 10, right: 8, bottom: 15),
                          child: Text(
                            "Boys Toys",
                            style:
                                TextStyle(color: Colors.black, fontSize: 12.sp),
                          ),
                        ),
                      );
              }),
          // ListView.builder(
          //     shrinkWrap: true,
          //     physics: const NeverScrollableScrollPhysics(),
          //     itemCount: 10,
          //     itemBuilder: (context, index) {
          //       return InkWell(
          //         onTap: () {},
          //         child: Container(
          //             margin: const EdgeInsets.symmetric(vertical: 8),
          //             padding: const EdgeInsets.symmetric(horizontal: 8),
          //             // color: Colors.orange,
          //             child: Row(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               mainAxisSize: MainAxisSize.min,
          //               children: [
          //                 Expanded(
          //                   flex: 1,
          //                   child: Image.asset(
          //                     Res.logo,
          //                     color: Colors.orange,
          //                   ),
          //                 ),
          //                 Expanded(
          //                   flex: 10,
          //                   child: Container(
          //                     padding: const EdgeInsets.only(
          //                         top: 15, left: 10, right: 8, bottom: 15),
          //                     child: const Text(
          //                       "title",
          //                       style:
          //                           TextStyle(color: Colors.black, height: 1.5),
          //                     ),
          //                   ),
          //                 )
          //               ],
          //             )),
          //       );
          //     })
        ],
      ),
    );
  }
}
