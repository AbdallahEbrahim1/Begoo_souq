import 'package:begoo_souq/components/helper_methods.dart';
import 'package:flutter/material.dart';
import 'package:tf_custom_widgets/widgets/DefaultButton.dart';

import '../../cart/view.dart';

class BuildButtonAddToCart extends StatelessWidget {
  const BuildButtonAddToCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.bottomCenter,
      child: DefaultButton(
        width: MediaQuery.of(context).size.width,
        color: Colors.deepOrange,
        textColor: Colors.white,
        borderRadius: BorderRadius.circular(10),
        title: "Add to cart",
        onTap: () {
          navigateTo(context, const CartScreen());
        },
      ),
    );
  }
}
//Text(
// "",
//
// style: TextStyle(
// color: Colors.black,
// fontSize: 16,
// fontWeight: fontWeight.bold),
// ),
// )
