import 'package:flutter/material.dart';

class BuildDropdownStar extends StatefulWidget {
  List<DropdownMenuItem<String>> menuItems = [
    const DropdownMenuItem(child: Text("Brand"), value: "Brand"),
    const DropdownMenuItem(child: Text("Apple"), value: "Apple"),
    const DropdownMenuItem(child: Text("Huawei"), value: "Huawei"),
    const DropdownMenuItem(child: Text("Samsung"), value: "Samsung"),
    const DropdownMenuItem(child: Text("Star"), value: "Star"),
  ];
  BuildDropdownStar({Key? key}) : super(key: key);

  @override
  State<BuildDropdownStar> createState() => _BuildDropdownStarState();
}

class _BuildDropdownStarState extends State<BuildDropdownStar> {
  String initialValue = "Star";
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
        value: initialValue,
        onChanged: (dynamic newValue) {
          setState(() {
            initialValue = newValue;
          });
        },
        items: widget.menuItems,
      ),
    );
  }
}
