import 'package:flutter/material.dart';
import 'package:tf_custom_widgets/tf_custom_widgets.dart';

import 'MyColors.dart';

class ChooseSize extends StatelessWidget {
  final Color color;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const ChooseSize({
    Key? key,
    required this.color,
    required this.onTap,
    this.isSelected = false,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      // onTap: () {
      //   print('object');
      //   setState(() {
      //     widget.isSelected != widget.isSelected;
      //   });
      // },
      child: Container(
        margin: const EdgeInsets.only(
          top: 5,
          right: 10,
        ),
        padding: const EdgeInsets.all(10),
        height: 45,
        width: 65,
        decoration: BoxDecoration(
          color: isSelected ? MyColors.button : Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: Container(
          // color: isSelected ? MyColors.button : Colors.white,
          decoration: const BoxDecoration(
              // borderRadius: BorderRadius.all(Radius.circular(8)),
              // color: color,
              // shape: BoxShape.rectangle,
              ),
          child: Center(
            child: MyText(
              size: 10,
              color: isSelected ? Colors.white : Colors.black,
              title: text,
            ),
          ),
        ),
      ),
    );
  }
}
