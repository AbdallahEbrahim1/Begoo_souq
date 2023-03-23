import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class AboutUsView extends StatefulWidget {
  const AboutUsView({Key? key}) : super(key: key);

  @override
  _AboutUsViewState createState() => _AboutUsViewState();
}

class _AboutUsViewState extends State<AboutUsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.arrow_back,
            color: HexColor('#505050'), // add custom icons also
          ),
        ),
        title: Center(
          child: Text(
            'About Us                  ',
            style: TextStyle(color: HexColor('#505050'), fontSize: 15),
          ),
        ),
        // actions: [],
        elevation: 0,
        backgroundColor: HexColor('#FAFAFA'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 70, right: 20, left: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 75,
                  width: 130,
                  child: ClipRRect(
                    child: SvgPicture.asset(
                      'assets/images/logo.svg',
                      // AppAssets.APP_BAR_LOGO,
                      fit: BoxFit.fill,
                    ),
                    // 'assets/images/logo.svg',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: HexColor('#505050'),
            ),
            const SizedBox(
              height: 45,
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              color: HexColor('#505050'),
            )
          ],
        ),
      ),
    );
  }
}
