import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: GestureDetector(
        //   onTap: () {},
        //   child: Icon(
        //     Icons.arrow_back,
        //     color: HexColor('#505050'), // add custom icons also
        //   ),
        // ),
        centerTitle: true,
        title: Text(
          //'${AppLocalizations.of(context)?.translate("KSA")}',
          'Favorites',
          style: TextStyle(
            color: HexColor('#505050'),
            fontSize: 15,
          ),
        ),
        elevation: 0,
        backgroundColor: HexColor('#FAFAFA'),
      ),
      backgroundColor: HexColor('#FAFAFA'),
      body: Container(),
    );
  }
}
