
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tf_custom_widgets/widgets/MyText.dart';

import '../../../components/MyColors.dart';
import '../../../res.dart';

class BuildHighlightsPoints extends StatelessWidget {
  const BuildHighlightsPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          title: "Highlights Points",
          color: Colors.deepOrange,
          size: 18,
          // fontWeight: FontWeight.bold,
        ),
        Container(
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .34,
                //height: 200,
                child: Image.asset(
                  Res.florian_klauer_nptLmg6jqDo_unsplash,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.deepOrange,
                        ),
                        // Image.asset(
                        //   Res.left_arrow,
                        //   fit: BoxFit.fill,
                        // ),
                        SizedBox(
                          width: 200,
                          child: MyText(
                            title:
                                " Lorem Ipsum is simply dummy text of the printing and typesetting ",
                            color: MyColors.grey,
                            size: 10,
                            fontWeight: FontWeight.bold,
                          ),
                          //     Text(
                          //   " Lorem Ipsum is simply dummy text of the printing and typesetting ",
                          //   maxLines: 2,
                          //   style: TextStyle(
                          //     fontWeight: FontWeight.bold,
                          //     color: Colors.grey,
                          //     fontSize: 13,
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(
                            width: 200,
                            child: MyText(
                              title:
                                  " Lorem Ipsum is simply dummy text of the printing and typesetting ",
                              color: Colors.grey,
                              size: 10,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
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
