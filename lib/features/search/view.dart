import 'package:begoo_souq/components/custom_appBar.dart';
import 'package:begoo_souq/components/custom_text_field.dart';
import 'package:begoo_souq/generated/locale_keys.g.dart';
import 'package:begoo_souq/res.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isLeading: true,
        isTitle: true,
        title: LocaleKeys.SEARCH.tr(),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.r),
              child: CustomTextFiled(
                isSearch: true,
                hintText: LocaleKeys.Enter_word_for_search.tr(),
                suffixIcon: Image.asset(Res.magnifying_glass),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
