import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: HexColor('#505050'), // add custom icons also
          ),
        ),
        title: Center(
          child: Text(
            // '${AppLocalizations.of(context)?.translate("Edit_Profile")}',
            'Edit Profile                    ',
            style: TextStyle(
              color: HexColor('#505050'),
              fontSize: 15,
            ),
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
