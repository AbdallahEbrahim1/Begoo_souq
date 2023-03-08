import 'package:flutter/material.dart';
import 'package:tf_custom_widgets/tf_custom_widgets.dart';

import '../../../components/SliderThemeFilter.dart';

class BuildSliderThemeAge extends StatelessWidget {
  RangeValues currentRangeValuesAge = const RangeValues(40, 400);
  BuildSliderThemeAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // FilterData filterData = FilterData();
    return Container(
      // margin: EdgeInsets.only(top: 5, left: 20, right: 20),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            title: "AGE",
            color: Colors.black,
            size: 20,
          ),
          SliderThemeFilter(
            currentRangeValues: currentRangeValuesAge,
          ),
        ],
      ),
    );
  }
}
