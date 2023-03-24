import 'package:begoo_souq/components/helper_methods.dart';
import 'package:begoo_souq/features/product_details/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildItemGrid extends StatelessWidget {
  const BuildItemGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigateTo(context, const ProductsDetailsView());
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  'assets/images/pexels-pixabay4.png',
                  fit: BoxFit.cover,
                ),
              ),
              const Text(
                'Product Name',
                style: TextStyle(
                  color: Color(0xff505050),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                ' *  (4.5)',
                style: TextStyle(
                  color: Color(0xffEF5A2E),
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '22.99 KWD',
                    style: TextStyle(
                      color: const Color(0xff1A1818),
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(
                    width: 20.h,
                  ),
                  Text(
                    //'${AppLocalizations.of(context)?.translate("KSA")}',
                    '22.99 KWD',
                    style: TextStyle(
                      color: const Color(0xffEF5A2E),
                      fontSize: 10.sp,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                '0% Discount',
                style: TextStyle(
                  color: const Color(0xff7C7C7C),
                  fontSize: 13.sp,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              // const SizedBox(
              //   height: 3,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff1A181833),
                      // foreground
                    ),
                    onPressed: () {},
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        color: const Color(0xff505050),
                        fontSize: 18.sp,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/noun_Heart_19653.png',
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
