import 'package:begoo_souq/components/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:tf_custom_widgets/widgets/MyText.dart';

import '../../../res.dart';

class BuildRelatedProducts extends StatelessWidget {
  const BuildRelatedProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          title: "Related Products",
          size: 18,
          color: MyColors.black,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: 220,
          // width: MediaQuery.of(context).size.width,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 7,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Card(
                shadowColor: MyColors.black,
                child: InkWell(
                  onTap: () {},
                  // AutoRouter.of(context).push(ProductsDetailsRoute()),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        // height: 150,
                        width: 150,
                        child: Image.asset(
                          Res.pexels_miguel,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText(
                              title: 'product Name',
                              color: MyColors.black,
                              size: 12,
                            ),
                            MyText(
                              title: '22.99 KWD',
                              color: MyColors.black,
                              size: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
