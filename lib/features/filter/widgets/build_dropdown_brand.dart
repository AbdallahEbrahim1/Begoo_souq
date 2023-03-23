import 'package:flutter/material.dart';

class BuildDropdownBrand extends StatefulWidget {
  const BuildDropdownBrand({Key? key}) : super(key: key);

  @override
  State<BuildDropdownBrand> createState() => _BuildDropdownBrandState();
}

class _BuildDropdownBrandState extends State<BuildDropdownBrand> {
  RangeValues currentRangeValuesAge = const RangeValues(40, 400);
  RangeValues currentRangeValuesPrice = const RangeValues(40, 400);

  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Brand"), value: "Brand"),
    const DropdownMenuItem(child: Text("Apple"), value: "Apple"),
    const DropdownMenuItem(child: Text("Huawei"), value: "Huawei"),
    const DropdownMenuItem(child: Text("Samsung"), value: "Samsung"),
    const DropdownMenuItem(child: Text("Star"), value: "Star"),
  ];

  String selectedValue = "Brand";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      child: DropdownButtonFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          filled: true,
// fillColor: Colors.red,
        ),
// dropdownColor: Colors.blueAccent,
        value: selectedValue,
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
        items: menuItems,
      ),
    );
  }
}
