import 'package:flutter/material.dart';
import 'package:tf_custom_widgets/widgets/MyText.dart';

class BuildChooseSizeDetails extends StatefulWidget {
  const BuildChooseSizeDetails({Key? key}) : super(key: key);

  @override
  State<BuildChooseSizeDetails> createState() => _BuildChooseSizeDetailsState();
}

class _BuildChooseSizeDetailsState extends State<BuildChooseSizeDetails> {
  @override
  Widget build(BuildContext context) {
    example? groupValue = example.Meterr;
    // ProductsDetailsData productsDetailsData = ProductsDetailsData();
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            title: 'Choose Size',
            color: Colors.black,
            size: 20,
            fontWeight: FontWeight.bold,
          ),
          ListTile(
            title: Text('1X1 Meter'),
            leading: Radio<example>(
              value: example.Meter,
              groupValue: groupValue,
              onChanged: (example? value) {
                setState(() {
                  groupValue = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text('2X2 Meter'),
            leading: Radio(
              value: example.Meterr,
              groupValue: groupValue,
              onChanged: (example? value) {
                setState(() {
                  groupValue = value;
                });
              },
            ),
          ),

          // Container(
          //   height: 50,
          //   color: Colors.red,
          // ),
        ],
      ),
    );
  }
}

enum example { Meter, Meterr }
