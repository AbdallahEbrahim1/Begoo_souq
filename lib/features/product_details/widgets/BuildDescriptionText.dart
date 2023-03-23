import 'package:flutter/material.dart';
import 'package:tf_custom_widgets/widgets/MyText.dart';

import '../../../components/my_colors.dart';

class DescriptionTextWidget extends StatefulWidget {
  const DescriptionTextWidget({Key? key}) : super(key: key);

  @override
  _DescriptionTextWidgetState createState() => _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  late String firstHalf;
  late String secondHalf;
  final String description =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s s tandard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,";

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (description.length > 50) {
      firstHalf = description.substring(0, 100);
      secondHalf = description.substring(50, description.length);
    } else {
      firstHalf = description;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          title: 'Details',
          size: 20,
          color: MyColors.black,
          fontWeight: FontWeight.bold,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            // horizontal: 10.0,
            vertical: 10.0,
          ),
          child: secondHalf.isEmpty
              ? Text(
                  firstHalf,
                  style: const TextStyle(color: Colors.grey),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      flag ? (firstHalf) : (firstHalf + secondHalf),
                    ),
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            flag ? "show more" : "show less",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        setState(() {
                          flag = !flag;
                        });
                      },
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}
