import 'package:flutter/material.dart';

class BuildRadio extends StatefulWidget {
  const BuildRadio({Key? key}) : super(key: key);

  @override
  State<BuildRadio> createState() => _BuildRadioState();
}

SingingCharacter? character = SingingCharacter.NewArrivals;

enum SingingCharacter {
  NewArrivals,
  OnlySale,
  MostReviews,
  PriceLowToHigh,
  PriceHighToLow,
}

class _BuildRadioState extends State<BuildRadio> {
  // SortByData sortBy = SortByData();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListTile(
            onTap: () {},
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text('New Arrivals'),
              ],
            ),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.NewArrivals,
              groupValue: character,
              onChanged: (SingingCharacter? value) {
                setState(
                  () {
                    character = value;
                  },
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListTile(
            onTap: () {},
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text('Only Sale'),
              ],
            ),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.OnlySale,
              groupValue: character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  character = value;
                });
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListTile(
            onTap: () {},
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text('Most Reviews'),
              ],
            ),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.MostReviews,
              groupValue: character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  character = value;
                });
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListTile(
            onTap: () {},
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text('Price Low To High'),
              ],
            ),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.PriceLowToHigh,
              groupValue: character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  character = value;
                });
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListTile(
            onTap: () {},
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text('Price High To Low'),
              ],
            ),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.PriceHighToLow,
              groupValue: character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  character = value;
                });
              },
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
