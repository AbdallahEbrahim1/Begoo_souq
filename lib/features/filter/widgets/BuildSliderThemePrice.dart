import 'package:flutter/material.dart';
import 'package:tf_custom_widgets/tf_custom_widgets.dart';

import '../../../components/SliderThemeFilter.dart';

class BuildSliderThemePrice extends StatelessWidget {
  RangeValues currentRangeValuesPrice = const RangeValues(40, 400);

  BuildSliderThemePrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
        // margin: EdgeInsets.only(top: 5, left: 20, right: 20),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              title: "PRICE",
              color: Colors.black,
              size: 20,
            ),
            SliderThemeFilter(
              currentRangeValues: currentRangeValuesPrice,
            ),
          ],
        ),
      ),
    );
  }
}
