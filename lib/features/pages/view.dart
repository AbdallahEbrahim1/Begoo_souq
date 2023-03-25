import 'package:begoo_souq/features/pages/categories/view.dart';
import 'package:begoo_souq/features/pages/home/view.dart';
import 'package:begoo_souq/features/pages/our_stars/view.dart';
import 'package:begoo_souq/features/pages/settings/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PagesView extends StatefulWidget {
  int selectedTabIndex;

  PagesView({Key? key, this.selectedTabIndex = 0}) : super(key: key);

  @override
  State<PagesView> createState() => _PagesViewState();
}

class _PagesViewState extends State<PagesView> {
  // int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      widget.selectedTabIndex = index;
    });
  }

  static const List _pages = [
    HomeView(),
    // FavoritesView(),
    OurStarsView(),
    // ProfileView(),
    SettingsScreen(),
    CategoriesView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(13.0.r),
            topRight: Radius.circular(13.0.r),
          ),
          child: BottomNavigationBar(
            backgroundColor: const Color(0xff1A1818),
            selectedItemColor: const Color(0xffEF5A2E),
            unselectedItemColor: Colors.white,
            onTap: _onItemTapped,
            currentIndex: widget.selectedTabIndex,
            // selectedIconTheme: const IconThemeData(
            //   color: Colors.indigoAccent,
            // ),
            // fixedColor: HexColor('#EF5A2E'),
            // backgroundColor: HexColor('#1A1818'),
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                // icon: Image.asset('assets/images/noun_Home_3496042.png'),
                // icon: Icon(Icons.home, color: Colors.white),
                label: 'Home',
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(
              //     Icons.favorite,
              //   ),
              //   //backgroundColor: Colors.white,
              //   // icon: Image.asset('assets/images/noun_Heart_196534.png'),
              //   //   icon: Icon(Icons.favorite, color: Colors.white),
              //   // label: '${AppLocalizations.of(context)?.translate("Favorites")}',
              //
              //   label: 'Favorites',
              // ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.star,
                ),
                // icon: Image.asset('assets/images/noun_appreciation_3117367.png'),
                //  icon: Icon(Icons.star, color: Colors.white),
                // label: '${AppLocalizations.of(context)?.translate("OUR_STARS")}',

                label: 'O Stars',
              ),
              // BottomNavigationBarItem(
              //   // icon: Image.asset('assets/images/'),
              //   icon: Icon(Icons.account_circle_outlined),
              //   // label: '${AppLocalizations.of(context)?.translate("MY_ACCOUNT")}',
              //   label: 'Account',
              // ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                // icon: Image.asset('assets/images/noun_Settings_3496538.png'),
                //  icon: Icon(Icons.settings, color: Colors.white),
                // label: '${AppLocalizations.of(context)?.translate("SETTINGS")}',
                label: 'Settings',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                // icon: Image.asset('assets/images/noun_Home_3496042.png'),
                // icon: Icon(Icons.home, color: Colors.white),
                // label: '${AppLocalizations.of(context)?.translate("CATEGORIES")}',
                label: 'Categories',
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xffFAFAFA),
      body: _pages[widget.selectedTabIndex],
    );
  }
}
