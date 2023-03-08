import 'package:begoo_souq/components/MyColors.dart';
import 'package:begoo_souq/features/filter/widgets/BuildChooseColor.dart';
import 'package:begoo_souq/features/filter/widgets/BuildChooseSize.dart';
import 'package:begoo_souq/features/filter/widgets/BuildDropdownBrand.dart';
import 'package:begoo_souq/features/filter/widgets/BuildDropdownStar.dart';
import 'package:begoo_souq/features/filter/widgets/BuildSliderThemeAge.dart';
import 'package:begoo_souq/features/filter/widgets/BuildSliderThemePrice.dart';
import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.bg,
        elevation: 0,
        centerTitle: true,
        title: const Text('Filter'),
      ),
      body: Stack(
        children: [
          ListView(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(10),
            children: [
              const BuildDropdownBrand(),
              BuildDropdownStar(),
              BuildSliderThemePrice(),
              const BuildChooseSize(),
              const BuildChooseColor(text: "COLOR"),
              BuildSliderThemeAge(),
            ],
          ),
          // BuildButtons(),
        ],
      ),
    );
  }
}
