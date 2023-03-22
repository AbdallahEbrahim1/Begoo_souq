import 'package:flutter/material.dart';
import 'package:tf_custom_widgets/tf_custom_widgets.dart';

import '../../../components/ChooseSize.dart';

class BuildChooseSize extends StatelessWidget {
  const BuildChooseSize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            title: "SIZE",
            color: Colors.black,
            size: 20,
          ),
          Row(
            children: [
              ChooseSize(
                color: Colors.black,
                // isSelected: true,
                text: '1-2 Y',
                onTap: () {},
              ),
              ChooseSize(
                color: Colors.red,
                text: '3-4 Y',
                onTap: () {},
              ),
              ChooseSize(
                color: Colors.yellow,
                text: '5-6 Y',
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
