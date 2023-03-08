import 'package:begoo_souq/components/MyColors.dart';
import 'package:begoo_souq/features/sort_by/widgets/SortByWidgetsImports.dart';
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
      appBar: AppBar(
        backgroundColor: MyColors.bg,
        elevation: 0,
        centerTitle: true,
        title: const Text('Sort By'),
      ),
      body: Stack(
        children: const [
          BuildRadio(),
          BuildButtons(),
        ],
      ),
    );
  }
}
