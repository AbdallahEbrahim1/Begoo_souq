import 'package:flutter/material.dart';
import 'package:tf_custom_widgets/widgets/DefaultButton.dart';
import 'package:tf_custom_widgets/widgets/MyText.dart';

import '../../../components/my_colors.dart';

class BuildCheckShippingText extends StatelessWidget {
  const BuildCheckShippingText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText(
              title: 'Check Shipping Availability',
              color: MyColors.black,
              size: 14,
              fontWeight: FontWeight.bold,
            ),
            DefaultButton(
              width: MediaQuery.of(context).size.width * .35,
              color: MyColors.black,
              textColor: MyColors.white,
              borderRadius: BorderRadius.circular(10),
              title: "Check",
              onTap: () {},
            ),
          ],
        ),
        Divider(
          color: MyColors.grey,
          endIndent: 15,
          indent: 15,
        ),
      ],
    );
  }
}
