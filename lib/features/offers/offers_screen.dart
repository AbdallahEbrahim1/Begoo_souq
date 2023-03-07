import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

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
            // '${AppLocalizations.of(context)?.translate("Offers               ")}',
            'Offers                  ',
            style: TextStyle(color: HexColor('#505050'), fontSize: 15),
          ),
        ),
        elevation: 0,
        backgroundColor: HexColor('#FAFAFA'),
      ),
      backgroundColor: HexColor('#FAFAFA'),
      body: GridView.builder(
        padding: const EdgeInsets.all(8.0),
        //shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 6,
        // physics: const BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200.w,
          mainAxisExtent: 200.h,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 130,
                    // width: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'assets/images/florian-klauer-nptLmg6jqDo-unsplash.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        // '${AppLocalizations.of(context)?.translate("Products")}',
                        'Product Name',
                        style: TextStyle(
                          color: HexColor('#505050'),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/images/noun_Heart_19653.png',
                        ),
                      ),
                    ],
                  ),
                  Text(
                    //'${AppLocalizations.of(context)?.translate("KSA")}',
                    '22.99 KWD',
                    style: TextStyle(
                      color: HexColor(
                        '#1A1818',
                      ),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
