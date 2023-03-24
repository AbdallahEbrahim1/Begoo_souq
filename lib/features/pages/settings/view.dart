import 'package:begoo_souq/components/helper_methods.dart';
import 'package:begoo_souq/features/about_us/view.dart';
import 'package:begoo_souq/features/contact_us/view.dart';
import 'package:begoo_souq/features/notifications/view.dart';
import 'package:begoo_souq/features/profile/view.dart';
import 'package:begoo_souq/features/terms_conditions/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Settings',
          style: TextStyle(
            color: HexColor('#505050'),
            fontSize: 15.sp,
          ),
        ),
        elevation: 0,
        backgroundColor: HexColor('#FAFAFA'),
      ),
      backgroundColor: HexColor('#FAFAFA'),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            InkWell(
              highlightColor: const Color(0xffEF5A2E),
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                navigateTo(context, const ProfileView());
              },
              child: Container(
                height: 50,
                //width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'My Account',
                        style: TextStyle(
                          color: HexColor('#1A1A1A'),
                          fontSize: 15,
                        ),
                      ),
                      IconButton(
                        color: Colors.red,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              // splashColor: Colors.red,
              highlightColor: HexColor('#EF5A2E'),
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                navigateTo(context, const NotificationsView());
              },
              child: Container(
                height: 50,
                //width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        // '${AppLocalizations.of(context)?.translate("NOTIFICATIONS")}',
                        'Notifications',
                        style: TextStyle(
                          color: HexColor('#1A1A1A'),
                          fontSize: 15,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              // splashColor: Colors.red,
              highlightColor: HexColor('#EF5A2E'),
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                // navigateTo(context, const ());
              },
              child: Container(
                height: 50,
                //width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Language',
                        style: TextStyle(
                          color: HexColor('#1A1A1A'),
                          fontSize: 15,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              // splashColor: Colors.red,
              highlightColor: HexColor('#EF5A2E'),
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                // navigateTo(context, const ());
              },
              child: Container(
                height: 50,
                //width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Choose Country',
                        style: TextStyle(
                          color: HexColor('#1A1A1A'),
                          fontSize: 15,
                        ),
                      ),
                      IconButton(
                        color: Colors.red,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              // splashColor: Colors.red,
              highlightColor: HexColor('#EF5A2E'),
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                navigateTo(context, const AboutUsView());
              },
              child: Container(
                height: 50,
                //width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'About Bego',
                        style: TextStyle(
                          color: HexColor('#1A1A1A'),
                          fontSize: 15,
                        ),
                      ),
                      IconButton(
                        color: Colors.red,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              // splashColor: Colors.red,
              highlightColor: HexColor('#EF5A2E'),
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                navigateTo(context, const TermsConditionsScreen());
              },
              child: Container(
                height: 50,
                //width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Terms & Conditions',
                        style: TextStyle(
                          color: HexColor('#1A1A1A'),
                          fontSize: 15,
                        ),
                      ),
                      IconButton(
                        color: Colors.red,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              // splashColor: Colors.red,
              highlightColor: HexColor('#EF5A2E'),
              borderRadius: BorderRadius.circular(10),
              onTap: () {},
              child: Container(
                height: 50,
                //width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        // '${AppLocalizations.of(context)?.translate("PRIVACY_POLICIES")}',
                        'Privacy Policies',
                        style: TextStyle(
                          color: HexColor('#1A1A1A'),
                          fontSize: 15,
                        ),
                      ),
                      IconButton(
                        color: Colors.red,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              // splashColor: Colors.red,
              highlightColor: HexColor('#EF5A2E'),
              borderRadius: BorderRadius.circular(10),
              onTap: () {
                navigateTo(context, const ContactUsView());
              },
              child: Container(
                height: 50,
                //width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Contact Us',
                        style: TextStyle(
                          color: HexColor('#1A1A1A'),
                          fontSize: 15,
                        ),
                      ),
                      IconButton(
                        color: Colors.red,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              // splashColor: Colors.red,
              highlightColor: HexColor('#EF5A2E'),
              borderRadius: BorderRadius.circular(10),
              onTap: () {},
              child: Container(
                height: 50,
                //width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 15,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        // '${AppLocalizations.of(context)?.translate("RATE_APP")}',
                        'Rate App',
                        style: TextStyle(
                          color: HexColor('#1A1A1A'),
                          fontSize: 15,
                        ),
                      ),
                      IconButton(
                        color: Colors.red,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                        ),
                      ),
                    ],
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
