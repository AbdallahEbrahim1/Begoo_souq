import 'package:begoo_souq/components/custom_appBar.dart';
import 'package:begoo_souq/components/navigate.dart';
import 'package:begoo_souq/features/cart/view.dart';
import 'package:begoo_souq/features/flash_deals/view.dart';
import 'package:begoo_souq/features/new_arrivals/view.dart';
import 'package:begoo_souq/features/notifications/view.dart';
import 'package:begoo_souq/features/pages/view.dart';
import 'package:begoo_souq/features/product_details/view.dart';
import 'package:begoo_souq/features/recommended_products/view.dart';
import 'package:begoo_souq/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Stack(
          children: [
            ListView(
              children: [
                InkWell(
                  onTap: () {},
                  child: const ListTile(
                    title: Text(
                      'Home',
                    ),
                    leading: Icon(Icons.home_outlined),
                  ),
                ),
                const Divider(),
                InkWell(
                  onTap: () {},
                  child: const ListTile(
                    title: Text(
                      'profile',
                    ),
                    leading: Icon(Icons.perm_identity),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: CustomAppBar(
        actions: [
          IconButton(
            icon: Image.asset(
              Res.noun_Bell_1497524,
              height: 18.h,
              width: 16.w,
            ),
            onPressed: () {
              navigateTo(context, const NotificationsView());
            },
          ),
          IconButton(
            icon: Image.asset(
              Res.noun_cart,
              height: 18.h,
              width: 16.w,
            ),
            onPressed: () {
              navigateTo(context, const CartScreen());
            },
          ),
        ],
        isTitle: true,
        isHome: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10.r),
        physics: const BouncingScrollPhysics(),
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0.r),
            ),
            child: Container(
              height: 45.h,
              decoration: BoxDecoration(
                color: HexColor('#FFFFFF'),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  //'${AppLocalizations.of(context)?.translate("KSA")}',
                  hintText: 'Search',
                  suffixIcon: Image.asset('assets/images/magnifying-glass.png'),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15.h,
                    horizontal: 40.w,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 200.h,
            child: Image.asset(
              Res.welcome,
              fit: BoxFit.fill,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'CATEGORIES',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrangeAccent,
                  fontSize: 18.sp,
                ),
              ),
              InkWell(
                onTap: () {
                  navigateTo(
                      context,
                      PagesView(
                        selectedTabIndex: 5,
                      ));
                },
                child: Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          SizedBox(
            height: 220.h,
            // width: MediaQuery.of(context).size.width.w,
            child: ListView.builder(
              //shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    navigateTo(context, const ProductsDetailsView());
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8.0.r),
                    child: Column(
                      children: [
                        Container(
                          height: 160.h,
                          width: 130.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image.asset(
                            'assets/images/pexels-cottonbro-3661353.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const Text('Boys Toys'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                //'${AppLocalizations.of(context)?.translate("KSA")}',
                'OUR STARS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrangeAccent,
                  fontSize: 18.sp,
                ),
              ),
              InkWell(
                onTap: () {
                  navigateTo(
                      context,
                      PagesView(
                        selectedTabIndex: 2,
                      ));
                },
                child: Text(
                  //'${AppLocalizations.of(context)?.translate("KSA")}',
                  'View All',
                  style: TextStyle(
                    // color: Colors.deepOrangeAccent,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          SizedBox(
            height: 150.h,
            // width: MediaQuery.of(context).size.width.w,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    navigateTo(context, const ProductsDetailsView());
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8.0.r),
                    child: Column(
                      children: [
                        Container(
                          height: 90.h,
                          width: 90.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Image.asset(
                            'assets/images/pexels-pixabay.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        //'${AppLocalizations.of(context)?.translate("KSA")}',
                        const Text('Kid Name'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'NEW ARRIVALS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrangeAccent,
                  fontSize: 18.sp,
                ),
              ),
              InkWell(
                onTap: () {
                  navigateTo(context, const NewArrivalsView());
                },
                child: Text(
                  //'${AppLocalizations.of(context)?.translate("KSA")}',
                  'View All',
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          SizedBox(
            height: 260.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    navigateTo(context, const ProductsDetailsView());
                  },
                  child: Padding(
                    padding: EdgeInsets.all(8.0.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 180.h,
                          width: 180.w,
                          // width: MediaQuery.of(context).size.width.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                          ),
                          child: Image.asset(
                            Res.pexels_miguel,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  //'${AppLocalizations.of(context)?.translate("KSA")}',
                                  'Product Name',
                                  style: TextStyle(
                                    color: HexColor('#505050'),
                                  ),
                                ),
                                SizedBox(
                                  width: 50.w,
                                ),
                                Image.asset(
                                    'assets/images/noun_Heart_19653.png')
                              ],
                            ),
                            Text(
                              //'${AppLocalizations.of(context)?.translate("KSA")}',
                              'Category Name',
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: HexColor('#EF5A2E'),
                              ),
                            ),
                            Text(
                              //'${AppLocalizations.of(context)?.translate("KSA")}',
                              '22.99 KWD',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: HexColor('#505050'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                //'${AppLocalizations.of(context)?.translate("KSA")}',
                'FLASH DEALS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrangeAccent,
                  fontSize: 18.sp,
                ),
              ),
              InkWell(
                onTap: () {
                  navigateTo(context, const FlashDealsView());
                },
                child: Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          SizedBox(
            height: 220.h,
            child: ListView.builder(
              //shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 140.h,
                        width: 230.w,
                        // width: MediaQuery.of(context).size.width.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/images/joshua-coleman-8V4y-XXT3MQ-unsplash.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                //'${AppLocalizations.of(context)?.translate("KSA")}',
                                'Product Name',
                                style: TextStyle(
                                  color: HexColor('#505050'),
                                ),
                              ),
                              SizedBox(
                                width: 50.w,
                              ),
                              Image.asset('assets/images/noun_Heart_19653.png')
                            ],
                          ),
                          Text(
                            //'${AppLocalizations.of(context)?.translate("KSA")}',
                            'Category Name',
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: HexColor('#EF5A2E'),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                //'${AppLocalizations.of(context)?.translate("KSA")}',
                                '22.99 KWD',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: HexColor('#505050'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'RECOMMENDED PRODUCTS',
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontSize: 18.sp,
                ),
              ),
              InkWell(
                onTap: () {
                  navigateTo(context, const RecommendedProductsView());
                },
                child: Text(
                  'View All',
                  style: TextStyle(
                    // color: Colors.deepOrangeAccent,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          SizedBox(
            height: 240.h,
            child: ListView.builder(
              //shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 150.h,
                        width: 170.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/images/pexels-cottonbro-3661264.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                //'${AppLocalizations.of(context)?.translate("KSA")}',
                                'Product Name',
                                style: TextStyle(
                                  color: HexColor('#505050'),
                                ),
                              ),
                              SizedBox(
                                width: 40.w,
                              ),
                              Image.asset('assets/images/noun_Heart_19653.png')
                            ],
                          ),
                          Text(
                            //'${AppLocalizations.of(context)?.translate("KSA")}',
                            'Category Name',
                            style: TextStyle(
                              fontSize: 10,
                              color: HexColor('#EF5A2E'),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                //'${AppLocalizations.of(context)?.translate("KSA")}',
                                '22.99 KWD',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: HexColor('#505050'),
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Text(
                                //'${AppLocalizations.of(context)?.translate("KSA")}',
                                '22.99 KWD',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: HexColor('#505050'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
