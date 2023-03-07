import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                      //'${AppLocalizations.of(context)?.translate("KSA")}',
                      'Home',
                    ),
                    leading: const Icon(Icons.home_outlined),
                  ),
                ),
                const Divider(),
                InkWell(
                  onTap: () {},
                  child: const ListTile(
                    title: Text(
                      //'${AppLocalizations.of(context)?.translate("KSA")}',
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
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Image.asset('assets/images/noun_menu_1807546.png'),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        centerTitle: true,
        title: Image.asset('assets/images/Group 2.png'),
        actions: [
          IconButton(
            icon: Image.asset(
              'assets/images/noun_cart_1533491.png',
              height: 20.h,
              // width: 20.w,
            ),
            onPressed: () {},
          )
        ],
        elevation: 0,
        backgroundColor: HexColor('#FAFAFA'),
      ),
      backgroundColor: HexColor('#FAFAFA'),
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
              'assets/images/2e398ce187b7ff530922f2bf823b0dba@2x.png',
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
                onTap: () {},
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
                  onTap: () {},
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
                onTap: () {},
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
                  onTap: () {},
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
                            'assets/images/pexels-pixabay-459957.png',
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
                //'${AppLocalizations.of(context)?.translate("KSA")}',
                'NEW ARRIVALS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrangeAccent,
                  fontSize: 18.sp,
                ),
              ),
              InkWell(
                onTap: () {},
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
            // width: MediaQuery.of(context).size.width.w,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
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
                            'assets/images/pexels-miguel-á-padriñán-194094.png',
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
                onTap: () {},
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
                onTap: () {},
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
