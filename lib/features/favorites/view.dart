import 'package:begoo_souq/components/custom_appBar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isTitle: true,
        title: 'Favorites',
      ),
      backgroundColor: HexColor('#FAFAFA'),
      body: Container(),
    );
  }
}
