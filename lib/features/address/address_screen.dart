import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

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
            // '${AppLocalizations.of(context)?.translate("Address            ")}',
            'Address                   ',
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  // '${AppLocalizations.of(context)?.translate("Address")}',
                  'Address',
                  style: TextStyle(
                    color: HexColor('#EF5A2E'),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              //width: 90,
              decoration: BoxDecoration(
                color: HexColor('#FFFFFF'),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                // onChanged: (value) {},
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  //enabledBorder: InputBorder.none,
                  //focusedBorder: InputBorder.none,
                  // hintText:
                  // '${AppLocalizations.of(context)?.translate("Address_Name")}',
                  hintText: 'Address Name',
                  contentPadding: const EdgeInsets.symmetric(
                    // vertical: 15,
                    horizontal: 20,
                  ),
                  // enabledBorder:
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              //width: 90,
              decoration: BoxDecoration(
                color: HexColor('#FFFFFF'),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                // onChanged: (value) {},
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  //enabledBorder: InputBorder.none,
                  //focusedBorder: InputBorder.none,
                  // hintText:
                  // '${AppLocalizations.of(context)?.translate("Country")}',
                  hintText: 'Country',
                  contentPadding: const EdgeInsets.symmetric(
                    // vertical: 15,
                    horizontal: 20,
                  ),
                  // enabledBorder:
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              //width: 90,
              decoration: BoxDecoration(
                color: HexColor('#FFFFFF'),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                // onChanged: (value) {},
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  //enabledBorder: InputBorder.none,
                  //focusedBorder: InputBorder.none,
                  // hintText:
                  // '${AppLocalizations.of(context)?.translate("Governorate")}',
                  hintText: 'Governate',
                  contentPadding: const EdgeInsets.symmetric(
                    // vertical: 15,
                    horizontal: 20,
                  ),
                  // enabledBorder:
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              //width: 90,
              decoration: BoxDecoration(
                color: HexColor('#FFFFFF'),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                // onChanged: (value) {},
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  // hintText:'${AppLocalizations.of(context)?.translate("Area")}',
                  hintText: 'Area',
                  contentPadding: const EdgeInsets.symmetric(
                    // vertical: 15,
                    horizontal: 20,
                  ),
                  // enabledBorder:
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              //width: 90,
              decoration: BoxDecoration(
                color: HexColor('#FFFFFF'),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                // onChanged: (value) {},
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  // hintText:
                  // '${AppLocalizations.of(context)?.translate("Block_Number")}',
                  hintText: 'Block Number',
                  contentPadding: const EdgeInsets.symmetric(
                    // vertical: 15,
                    horizontal: 20,
                  ),
                  // enabledBorder:
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              //width: 90,
              decoration: BoxDecoration(
                color: HexColor('#FFFFFF'),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                // onChanged: (value) {},
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  // hintText: '${AppLocalizations.of(context)?.translate("Street")}',
                  hintText: 'Street',
                  contentPadding: const EdgeInsets.symmetric(
                    // vertical: 15,
                    horizontal: 20,
                  ),
                  // enabledBorder:
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              //width: 90,
              decoration: BoxDecoration(
                color: HexColor('#FFFFFF'),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                // onChanged: (value) {},
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  // hintText: '${AppLocalizations.of(context)?.translate("Building_Number")}',
                  hintText: 'Building Number',
                  contentPadding: const EdgeInsets.symmetric(
                    // vertical: 15,
                    horizontal: 20,
                  ),
                  // enabledBorder:
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              //width: 90,
              decoration: BoxDecoration(
                color: HexColor('#FFFFFF'),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                // onChanged: (value) {},
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  // hintText: '${AppLocalizations.of(context)?.translate("Phone_Number")}',
                  //hintText: 'Phone Number',
                  contentPadding: const EdgeInsets.symmetric(
                    // vertical: 15,
                    horizontal: 20,
                  ),
                  // enabledBorder:
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              // width: 90,
              decoration: BoxDecoration(
                color: HexColor('#FFFFFF'),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                // onChanged: (value) {},
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  // hintText:
                  //     '${AppLocalizations.of(context)?.translate("Other_Instructions")}',
                  hintText: 'Other Instructions',
                  contentPadding: const EdgeInsets.symmetric(
                    // vertical: 15,
                    horizontal: 20,
                  ),
                  // enabledBorder:
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              //focusNode: buttonProceedFocusNode,
              onTap: () {},
              child: Container(
                height: 50.h,
                width: 300.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffef5a2e),
                ),
                child: const Center(
                  child: Text(
                    'Proceed_to_Payment',
                    // '${AppLocalizations.of(context)?.translate("Proceed_to_Payment")}',
                    style: TextStyle(
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
