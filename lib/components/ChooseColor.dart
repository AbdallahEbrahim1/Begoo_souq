import 'package:flutter/material.dart';

class ChooseColor extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ChooseColor({
    Key? key,
    required this.color,
    // by default isSelected is false
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 5,
        right: 10,
      ),
      padding: EdgeInsets.all(10),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: isSelected ? Colors.red : Colors.grey,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: color,
          shape: BoxShape.rectangle,
        ),
      ),
    );
  }
}
