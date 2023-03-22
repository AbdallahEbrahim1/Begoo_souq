import 'package:begoo_souq/features/pages/categories/widgets/products_widget.dart';
import 'package:begoo_souq/res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  late double _contentWidth;
  late double _sideMenuWidth;

  @override
  void didChangeDependencies() {
    _contentWidth = MediaQuery.of(context).size.width * 0.65;
    _sideMenuWidth = MediaQuery.of(context).size.width * 0.35;

    super.didChangeDependencies();
  }

  void _switch(BuildContext context) {
    setState(() {
      _sideMenuWidth =
          _sideMenuWidth == MediaQuery.of(context).size.width * 0.35
              ? 0
              : MediaQuery.of(context).size.width * 0.35;
      _contentWidth = _sideMenuWidth == MediaQuery.of(context).size.width * 0.35
          ? MediaQuery.of(context).size.width * 0.65
          : MediaQuery.of(context).size.width;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Categories',
          style: TextStyle(
            color: const Color(0xff505050),
            fontSize: 15.sp,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Image.asset(
              'assets/images/noun_cart.png',
              height: 10.h,
              width: 40.w,
            ),
          )
        ],
        elevation: 0,
        backgroundColor: const Color(0xffFAFAFA),
      ),
      body: Row(
        children: [
          ProductsWidget(
            width: _sideMenuWidth,
          ),
          Stack(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                height: MediaQuery.of(context).size.height,
                width: _contentWidth,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: InkWell(
                          onTap: () {},
                          child: Card(
                            color: Colors.transparent,
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.transparent, width: 1.0),
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              // width: widget.itemWidth,
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        Res.pexels_cottonbro_3661264,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Makeup",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Positioned(
                top: 0,
                child: InkWell(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  onTap: () {
                    _switch(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffEFEFEF),
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      border: _sideMenuWidth != 0
                          ? Border.all(
                              color: const Color(0xffEFEFEF),
                            )
                          : Border.all(color: Colors.grey[300]!),
                    ),
                    child: Icon(
                      _sideMenuWidth != 0
                          ? Icons.arrow_left_sharp
                          : Icons.arrow_right_sharp,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
