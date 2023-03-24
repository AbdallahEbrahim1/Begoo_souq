import 'package:begoo_souq/components/custom_appBar.dart';
import 'package:begoo_souq/components/helper_methods.dart';
import 'package:begoo_souq/features/filter/view.dart';
import 'package:begoo_souq/features/products/widgets/build_item_grid.dart';
import 'package:begoo_souq/features/sort_by/view.dart';
import 'package:begoo_souq/generated/locale_keys.g.dart';
import 'package:begoo_souq/res.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isLeading: true,
        isTitle: true,
        title: LocaleKeys.Products.tr(),
        actions: [
          Image.asset(
            Res.noun_cart,
            height: 10.h,
            width: 40.w,
          )
        ],
      ),
      backgroundColor: HexColor('#FAFAFA'),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 10.0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Kitchen Toys',
                  style: TextStyle(
                    color: const Color(0xffEF5A2E),
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        navigateTo(context, const SortBy());
                      },
                      child: SvgPicture.asset(
                        Res.noun_Sort_317771,
                        height: 18.h,
                        width: 18.w,
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        navigateTo(context, const Filter());
                      },
                      child: SvgPicture.asset(
                        Res.noun_filter_3325169,
                        height: 18.h,
                        width: 18.w,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8.0),
              scrollDirection: Axis.vertical,
              itemCount: 6,
              physics: const BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.w,
                mainAxisSpacing: 10,
                //childAspectRatio: 5 / 2,
                crossAxisSpacing: 10,
                mainAxisExtent: 280.h,
              ),
              itemBuilder: (context, index) {
                return BuildItemGrid();
              },
            ),
          ),
        ],
      ),
    );
  }
}
