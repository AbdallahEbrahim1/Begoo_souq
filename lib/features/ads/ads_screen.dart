import 'package:flutter/material.dart';

class AdsScreen extends StatelessWidget {
  const AdsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/images/sandy-millar-nuS2GDpCDoI-unsplash.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 30,
            right: 30,
            child: Text(
              'SKIP',
              // '${AppLocalizations.of(context)?.translate("SKIP")}',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
