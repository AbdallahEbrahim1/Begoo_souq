import 'package:begoo_souq/features/product_details/widgets/BuildButtonAddToCart.dart';
import 'package:begoo_souq/features/product_details/widgets/BuildCarouselAndText.dart';
import 'package:begoo_souq/features/product_details/widgets/BuildCheckShippingText.dart';
import 'package:begoo_souq/features/product_details/widgets/BuildChooseSizeDetails.dart';
import 'package:begoo_souq/features/product_details/widgets/BuildDescriptionText.dart';
import 'package:begoo_souq/features/product_details/widgets/BuildHighlightsPoints.dart';
import 'package:begoo_souq/features/product_details/widgets/BuildRelatedProducts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

import '../filter/widgets/BuildChooseColor.dart';

class ProductsDetailsScreen extends StatelessWidget {
  const ProductsDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: HexColor('#505050'), // add custom icons also
          ),
        ),
        title: Center(
          child: Text(
            // '${AppLocalizations.of(context)?.translate("Product_Details")}',
            'Product Details',
            style: TextStyle(
              color: HexColor('#505050'),
              fontSize: 15,
            ),
          ),
        ),
        actions: [
          Image.asset(
            'assets/images/noun_cart.png',
            height: 10.h,
            width: 40.w,
          )
        ],
        elevation: 0,
        backgroundColor: HexColor('#FAFAFA'),
      ),
      backgroundColor: HexColor('#FAFAFA'),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(8.0),
        children: const [
          BuildCarouselAndText(),
          //BuildDetailsText
          DescriptionTextWidget(),
          BuildChooseColor(text: "Choose Color"),
          BuildChooseSizeDetails(),
          BuildHighlightsPoints(),
          BuildCheckShippingText(),
          BuildRelatedProducts(),
          BuildButtonAddToCart(),
        ],
      ),
    );
  }
}
