import 'package:flutter/material.dart';
import 'package:tf_custom_widgets/tf_custom_widgets.dart';

import '../../../components/choose_color.dart';

class BuildChooseColor extends StatelessWidget {
  final String text;
  const BuildChooseColor({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          title: text,
          color: Colors.black,
          size: 20,
          fontWeight: FontWeight.bold,
        ),
        Row(
          children: const [
            ChooseColor(
              color: Colors.black,
              isSelected: true,
            ),
            ChooseColor(
              color: Colors.red,
            ),
            ChooseColor(
              color: Colors.yellow,
            ),
          ],
        ),
      ],
    );
  }
}
