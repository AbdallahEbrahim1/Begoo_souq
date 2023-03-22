import 'package:flutter/material.dart';

import 'MyColors.dart';

class SliderThemeFilter extends StatefulWidget {
  late RangeValues currentRangeValues;
  SliderThemeFilter({
    required this.currentRangeValues,
  });

  @override
  State<SliderThemeFilter> createState() => _SliderThemeFilterState();
}

class _SliderThemeFilterState extends State<SliderThemeFilter> {
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
        showValueIndicator: ShowValueIndicator.always,
        valueIndicatorColor: MyColors.button,
        valueIndicatorTextStyle: const TextStyle(
          color: Colors.white,
          // fontSize: 10,
        ),
      ),
      child: RangeSlider(
          activeColor: MyColors.button,
          inactiveColor: Colors.grey[300],
          min: 1,
          max: 500,
          labels: RangeLabels(
            widget.currentRangeValues.start.round().toString(),
            widget.currentRangeValues.end.round().toString(),
          ),
          values: widget.currentRangeValues,
          onChanged: (RangeValues newValue) {
            setState(() {
              widget.currentRangeValues = newValue;
            });
          }),
    );
  }
}
