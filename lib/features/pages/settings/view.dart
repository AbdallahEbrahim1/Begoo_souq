import 'package:begoo_souq/components/custom_appBar.dart';
import 'package:begoo_souq/components/helper_methods.dart';
import 'package:begoo_souq/features/app_info/view.dart';
import 'package:begoo_souq/features/notifications/view.dart';
import 'package:begoo_souq/features/pages/settings/bloc/bloc.dart';
import 'package:begoo_souq/features/pages/settings/widgets/build_list_tile.dart';
import 'package:begoo_souq/features/profile/view.dart';
import 'package:begoo_souq/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kiwi/kiwi.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _bloc = KiwiContainer().resolve<SettingsBloc>();

  @override
  void initState() {
    _bloc.add(GetSettingsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isTitle: true,
        title: LocaleKeys.SETTINGS.tr(),
      ),
      backgroundColor: HexColor('#FAFAFA'),
      body: ListView(
        children: [
          BuildListTile(
            onTap: () {
              navigateTo(context, const ProfileView());
            },
            title: LocaleKeys.MY_ACCOUNT.tr(),
          ),
          BuildListTile(
            onTap: () {
              navigateTo(context, const NotificationsView());
            },
            title: LocaleKeys.NOTIFICATIONS.tr(),
          ),
          BuildListTile(
            onTap: () {},
            title: LocaleKeys.LANGUAGE.tr(),
          ),
          BuildListTile(
            onTap: () {
              // navigateTo(context, const ChView());
            },
            title: LocaleKeys.CHOOSE_COUNTRY.tr(),
          ),
          BlocBuilder(
            bloc: _bloc,
            builder: (context, state) {
              if (state is SettingsSuccessState) {
                final model = state.model.data;
                return ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: model.pages.length,
                  // itemCount: 3,
                  itemBuilder: (context, index) => BuildListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => AppInfoView(
                            title: model.pages[index].title,
                            contect: model.pages[index].contect,
                          ),
                        ),
                      );
                    },
                    title: model.pages[index].title,
                  ),
                );
              } else {
                return Container();
              }
            },
          ),
          BuildListTile(
            onTap: () {},
            title: LocaleKeys.RATE_APP.tr(),
          ),
        ],
      ),
    );
  }
}
