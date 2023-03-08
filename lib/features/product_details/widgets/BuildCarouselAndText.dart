import 'package:begoo_souq/components/CarouselSlider.dart';
import 'package:begoo_souq/components/MyColors.dart';
import 'package:begoo_souq/res.dart';
import 'package:flutter/material.dart';
import 'package:tf_custom_widgets/widgets/MyText.dart';

class BuildCarouselAndText extends StatelessWidget {
  const BuildCarouselAndText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BuildCarouselSlider(
          image: Res.florian_klauer_nptLmg6jqDo_unsplash,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText(
              title: "Product Name",
              color: Colors.deepOrange,
              size: 20,
              fontWeight: FontWeight.bold,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
        MyText(
          title: "Product Code #0089",
          color: MyColors.black,
          size: 13,
          fontWeight: FontWeight.bold,
        ),
        MyText(
          title: "* (4.5)",
          color: MyColors.button,
          size: 13,
          fontWeight: FontWeight.bold,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MyText(
              title: "89.99 KWD",
              color: MyColors.black,
              size: 18,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              width: 10,
            ),
            MyText(
              title: "99.99 KWD",
              color: MyColors.grey,
              size: 15,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.lineThrough,
            ),
          ],
        ),
        MyText(
          title: "10% Discount",
          color: MyColors.black,
          size: 13,
          fontWeight: FontWeight.bold,
        ),
        MyText(
          title: "Brand",
          color: MyColors.black,
          size: 11,
          // fontWeight: FontWeight.bold,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText(
              title: "Bego Souq",
              color: MyColors.black,
              size: 12,
              // fontWeight: FontWeight.bold,
            ),
            InkWell(
              onTap: () {},
              child: MyText(
                title: "View Seller Details",
                color: MyColors.button,
                size: 12,
              ),
            ),
          ],
        ),
        const Divider(
          color: Colors.grey,
          endIndent: 15,
          indent: 15,
        ),
      ],
    );
  }
}
