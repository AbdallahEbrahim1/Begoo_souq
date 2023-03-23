import 'package:begoo_souq/components/custom_appBar.dart';
import 'package:begoo_souq/features/filter/widgets/build_choose_color.dart';
import 'package:begoo_souq/features/filter/widgets/build_choose_size.dart';
import 'package:begoo_souq/features/filter/widgets/build_dropdown_brand.dart';
import 'package:begoo_souq/features/filter/widgets/build_dropdown_star.dart';
import 'package:begoo_souq/features/filter/widgets/build_slider_theme_age.dart';
import 'package:begoo_souq/features/filter/widgets/build_slider_theme_price.dart';
import 'package:begoo_souq/features/sort_by/widgets/build_button.dart';
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
      appBar: CustomAppBar(
        isTitle: true,
        title: 'Filter',
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
              const BuildButtons(),
            ],
          ),
          // BuildButtons(),
        ],
      ),
    );
  }
}
