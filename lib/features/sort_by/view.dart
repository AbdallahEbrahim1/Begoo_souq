import 'package:begoo_souq/components/custom_appBar.dart';
import 'package:begoo_souq/features/sort_by/widgets/build_button.dart';
import 'package:begoo_souq/features/sort_by/widgets/build_radio.dart';
import 'package:flutter/material.dart';

class SortBy extends StatefulWidget {
  const SortBy({Key? key}) : super(key: key);

  @override
  State<SortBy> createState() => _SortByState();
}

class _SortByState extends State<SortBy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isTitle: true,
        title: 'Sort By',
      ),
      body: Column(
        children: const [
          BuildRadio(),
          BuildButtons(),
        ],
      ),
    );
  }
}
