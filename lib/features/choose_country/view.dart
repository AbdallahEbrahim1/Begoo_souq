import 'package:animate_do/animate_do.dart';
import 'package:begoo_souq/components/helper_methods.dart';
import 'package:begoo_souq/features/ads/view.dart';
import 'package:begoo_souq/features/choose_country/bloc/bloc.dart';
import 'package:begoo_souq/generated/locale_keys.g.dart';
import 'package:begoo_souq/network/local/cache_helper.dart';
import 'package:begoo_souq/res.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kiwi/kiwi.dart';

class ChooseCountryView extends StatefulWidget {
  const ChooseCountryView({Key? key}) : super(key: key);

  @override
  _ChooseCountryViewState createState() => _ChooseCountryViewState();
}

class _ChooseCountryViewState extends State<ChooseCountryView> {
  final _bloc = KiwiContainer().resolve<CurrenciesBloc>();
  @override
  void initState() {
    _bloc.add(GetCurrenciesEvent());
    super.initState();
  }

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
            FadeInDown(
              child: Image.asset(
                Res.logo,
                height: 80.h,
                width: 120.w,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            FadeInRight(
              child: Text(
                LocaleKeys.CHOOSE_COUNTRY.tr(),
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            FadeInLeft(
              child: Text(
                LocaleKeys.Please_Choose_your_Country.tr(),
                style: TextStyle(
                  fontSize: 13.sp,
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            BlocBuilder(
              bloc: _bloc,
              builder: (context, state) {
                if (state is CurrenciesSuccessState) {
                  return Expanded(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: state.data.data.length,
                      itemBuilder: (context, index) {
                        final model = state.data.data[index];
                        return index.isOdd
                            ? FadeInRight(
                                child: InkWell(
                                  onTap: () {
                                    CacheHelper.saveIdCountry(model.id);
                                    navigateTo(context, const AdsView());
                                  },
                                  child: Card(
                                    elevation: 5,
                                    shadowColor: Colors.white54,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(8.0.r),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 12.h,
                                        horizontal: 16.w,
                                      ),
                                      child: Row(
                                        children: [
                                          Image.network(
                                            model.image,
                                            // Res.kuwait,
                                            height: 40,
                                            width: 40,
                                          ),
                                          SizedBox(
                                            width: 27.w,
                                          ),
                                          Text(
                                            model.name,
                                            // 'Kuwait',
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : FadeInLeft(
                                child: InkWell(
                                  onTap: () {
                                    CacheHelper.saveIdCountry(model.id);
                                    navigateTo(context, const AdsView());
                                  },
                                  child: Card(
                                    elevation: 5,
                                    shadowColor: Colors.white54,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(8.0.r),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 12.h,
                                        horizontal: 16.w,
                                      ),
                                      child: Row(
                                        children: [
                                          Image.network(
                                            model.image,
                                            // Res.kuwait,
                                            height: 40,
                                            width: 40,
                                          ),
                                          SizedBox(
                                            width: 27.w,
                                          ),
                                          Text(
                                            model.name,
                                            // 'Kuwait',
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                      },
                    ),
                  );
                } else {
                  return Container();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
