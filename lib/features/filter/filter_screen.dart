import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  // late ExpandedTileController _controller;

  @override
  void initState() {
    // initialize controller
    // _controller = ExpandedTileController(isExpanded: true);
    super.initState();
  }

  List title = [
    'Apple',
    'Samsung',
    'Huawei',
    'Xiaomi',
    'Tovs',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor('#FAFAFA'),
          leading: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.arrow_back,
              color: HexColor('#505050'),
            ),
          ),
          title: Center(
            child: Text(
              'Filter         ',
              style: TextStyle(color: HexColor('#505050'), fontSize: 20),
            ),
          ),
          elevation: 0,
        ),
        body: Container());
  }
}
