import 'package:begoo_souq/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tf_custom_widgets/tf_custom_widgets.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final couponController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
        elevation: 0,
        centerTitle: true,
        title: Text(
          'cart',
          style: TextStyle(color: const Color(0xff505050), fontSize: 16.sp),
        ),
        backgroundColor: const Color(0xffFAFAFA),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(10.0.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Hello !',
                  style: TextStyle(
                    color: const Color(0xffEF5A2E),
                    fontWeight: FontWeight.bold,
                    fontSize: 21.sp,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'You have 3 items in your cart',
                  style: TextStyle(
                    color: const Color(0xff505050),
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 10.w),
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemCount: 6,
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 120.h,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            Res.pexels_cottonbro_3661264,
                            height: 95.h,
                            // width: 85.w,
                            fit: BoxFit.fill,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Product Name",
                                    style: TextStyle(
                                      color: const Color(0xff404040),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 60.w,
                                  ),
                                  Text(
                                    "19.99 KWD",
                                    style: TextStyle(
                                      color: const Color(0xffEF5A2E),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                'Bego Souq',
                                style: TextStyle(
                                  color: const Color(0xff404040),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                'Size :1x1 mtr ,Color : Blue,',
                                style: TextStyle(
                                  color: const Color(0xff404040),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp,
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height: 27.h,
                                          width: 25.h,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffAFAFAF),
                                            borderRadius:
                                                BorderRadius.circular(12.r),
                                          ),
                                          child: const Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 7.w,
                                      ),
                                      Container(
                                        height: 27.h,
                                        width: 25.h,
                                        decoration: BoxDecoration(
                                          color: const Color(0xffEF5A2E),
                                          borderRadius:
                                              BorderRadius.circular(12.r),
                                        ),
                                        child: Center(
                                          child: Text(
                                            '1',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 7.w,
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          height: 27.h,
                                          width: 25.h,
                                          decoration: BoxDecoration(
                                            color: const Color(0xffAFAFAF),
                                            borderRadius:
                                                BorderRadius.circular(12.r),
                                          ),
                                          child: const Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 140.w,
                                  ),
                                  const Icon(Icons.delete)
                                ],
                              )
                            ],
                          ),
                          // SizedBox(
                          //   width: 100.w,
                          // ),
                          // Column(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Container(
                          //         height: 27.h,
                          //         width: 27.w,
                          //         decoration: BoxDecoration(
                          //           color: const Color(0xffFFD4D4),
                          //           // color: const Color(0x3f4C8613),
                          //           // border: Border.all(color: Colors.grey),
                          //           borderRadius: BorderRadius.circular(10.0.r),
                          //         ),
                          //         child: ),
                          //   ],
                          // ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
          // SizedBox(
          //   height: 13.h,
          // ),
          Container(
            padding: EdgeInsets.all(10.0.r),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sub Total',
                      style: TextStyle(
                        color: const Color(0xff505050),
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                    Text(
                      '129.97 KWD',
                      style: TextStyle(
                        color: const Color(0xff505050),
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 11.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Gift Wrap',
                      style: TextStyle(
                        color: const Color(0xff505050),
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                    Text(
                      '0.00 KWD',
                      style: TextStyle(
                        color: const Color(0xff505050),
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        color: const Color(0xff505050),
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                    Text(
                      '129.97 KWD',
                      style: TextStyle(
                        color: const Color(0xff505050),
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          DefaultButton(
            height: 55.h,
            width: 343.w,
            title: 'Checkout',
            color: const Color(0xffEF5A2E),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
