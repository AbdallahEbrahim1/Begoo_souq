import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildRadio extends StatefulWidget {
  const BuildRadio({Key? key}) : super(key: key);

  @override
  State<BuildRadio> createState() => _BuildRadioState();
}

SingingCharacter? character = SingingCharacter.newArrivals;

enum SingingCharacter {
  newArrivals,
  onlySale,
  mostReviews,
  priceLowToHigh,
  priceHighToLow,
}

class _BuildRadioState extends State<BuildRadio> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          RadioListTile<SingingCharacter>(
            value: SingingCharacter.newArrivals,
            groupValue: character,
            secondary: Text(
              'New Arrivals',
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
            onChanged: (newValue) => setState(() => character = newValue),
            activeColor: Colors.black,
            selected: false,
          ),
          RadioListTile<SingingCharacter>(
            value: SingingCharacter.onlySale,
            groupValue: character,
            secondary: Text(
              'Only Sale',
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
            onChanged: (newValue) => setState(() => character = newValue),
            activeColor: Colors.black,
            selected: false,
          ),
          RadioListTile<SingingCharacter>(
            value: SingingCharacter.mostReviews,
            groupValue: character,
            secondary: Text(
              'Most Reviews',
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
            onChanged: (newValue) => setState(() => character = newValue),
            selected: false,
            activeColor: Colors.black,
          ),
          RadioListTile<SingingCharacter>(
            value: SingingCharacter.priceLowToHigh,
            groupValue: character,
            secondary: Text(
              'Price Low To High',
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
            onChanged: (newValue) => setState(() => character = newValue),
            activeColor: Colors.black,
            selected: false,
          ),
          RadioListTile<SingingCharacter>(
            value: SingingCharacter.priceHighToLow,
            groupValue: character,
            secondary: Text(
              'Price High To Low',
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
            onChanged: (newValue) => setState(() => character = newValue),
            activeColor: Colors.black,
            selected: false,
          ),
          // ListTile(
          //   onTap: () {},
          //   title: Row(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: const [
          //       Text('New Arrivals'),
          //     ],
          //   ),
          //   leading: Radio<SingingCharacter>(
          //     value: SingingCharacter.NewArrivals,
          //     groupValue: character,
          //     onChanged: (SingingCharacter? value) {
          //       setState(
          //         () {
          //           character = value;
          //         },
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
