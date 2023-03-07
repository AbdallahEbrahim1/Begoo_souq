import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class ProductsDetailsScreen extends StatelessWidget {
  const ProductsDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {},
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
            'assets/images/noun_cart_1533491.png',
            height: 10.h,
            width: 40.w,
          )
        ],
        elevation: 0,
        backgroundColor: HexColor('#FAFAFA'),
      ),
      backgroundColor: HexColor('#FAFAFA'),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                // '${AppLocalizations.of(context)?.translate("Products")}',

                'Product Name',
                style: TextStyle(
                  color: HexColor('#EF5A2E'),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 100.w,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.ios_share,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
