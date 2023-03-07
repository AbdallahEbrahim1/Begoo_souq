import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseCountryScreen extends StatefulWidget {
  const ChooseCountryScreen({Key? key}) : super(key: key);

  @override
  _ChooseCountryScreenState createState() => _ChooseCountryScreenState();
}

class _ChooseCountryScreenState extends State<ChooseCountryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 80,
          right: 20,
          left: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 80.h,
              width: 120.w,
              child: ClipRRect(
                child: SvgPicture.asset(
                  'assets/images/logo.svg',
                  // AppAssets.APP_BAR_LOGO,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              // '${AppLocalizations.of(context)?.translate("Choose_Country")}',
              'Choose Country',
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              // '${AppLocalizations.of(context)?.translate("Please_Choose_your_Country")}',
              'Please Choose your Country !',
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                // separatorBuilder: (context, index) {
                //   return SizedBox(
                //     height: 10.h,
                //   );
                // },
                itemBuilder: (context, index) {
                  //print(currenciesSnapshot.data?.data![index].name);
                  return InkWell(
                    onTap: () {},
                    child: Card(
                      elevation: 5,
                      shadowColor: Colors.white54,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 1,
                        ),
                        child: Row(
                          children: [
                            Image.network(
                              'http://linkalintest.com/bego/upload/currencies/KWD.png',
                              // '${currenciesSnapshot.data?.data?[index].image}',
                              height: 40,
                              width: 40,
                              errorBuilder: (context, error, stackTrace) =>
                                  Image.network(
                                // placeholder
                                'https://ahmedshatat.com/wp-content/uploads/2020/10/placeholder-768x512.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Expanded(
                              child: Text(
                                // '${currenciesSnapshot.data?.data?[index].name}',
                                // '${AppLocalizations.of(context)?.translate("KUWAIT")}',
                                'Kuwait',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
