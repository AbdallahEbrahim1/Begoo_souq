import 'package:begoo_souq/features/pages/our_stars/our_stars_screen.dart';
import 'package:begoo_souq/features/pages/profile/profile_screen.dart';
import 'package:begoo_souq/features/pages/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'categories/categories_view.dart';
import 'favorites/favorites_screen.dart';
import 'home/home_screen.dart';

class PagesScreen extends StatefulWidget {
  int selectedTabIndex;
  PagesScreen({Key? key, this.selectedTabIndex = 0}) : super(key: key);

  @override
  State<PagesScreen> createState() => _PagesScreenState();
}

class _PagesScreenState extends State<PagesScreen> {
  // int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      widget.selectedTabIndex = index;
    });
  }

  static const List _pages = [
    HomeScreen(),
    FavoritesScreen(),
    OurStarsScreen(),
    ProfileScreen(),
    SettingsScreen(),
    CategoriesView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: Stack(
      //     children: [
      //       ListView(
      //         children: const [
      //           // Image(
      //           //   image: AssetImage('assets/images/Group 2.png'),
      //           // ),
      //           InkWell(
      //             // onTap: (){},
      //             child: ListTile(
      //               title: Text(
      //                 'Home',
      //               ),
      //               leading: Icon(Icons.home_outlined),
      //             ),
      //           ),
      //           Divider(),
      //           InkWell(
      //             // onTap: () {},
      //             child: ListTile(
      //               title: Text(
      //                 'profile',
      //               ),
      //               leading: Icon(Icons.perm_identity),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
      // appBar: AppBar(
      //   leading: Builder(
      //     builder: (BuildContext context) {
      //       return IconButton(
      //         icon: Image.asset('assets/images/noun_menu_1807546.png'),
      //         onPressed: () {
      //           Scaffold.of(context).openDrawer();
      //         },
      //         //tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      //       );
      //     },
      //   ),
      //   title: Center(child: Image.asset('assets/images/Group 2.png')),
      //   actions: [
      //     Image.asset(
      //       'assets/images/noun_cart_1533491.png',
      //       height: 10.h,
      //       width: 40.w,
      //     )
      //   ],
      //   elevation: 0,
      //   backgroundColor: HexColor('#FAFAFA'),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: HexColor('#EF5A2E'),
        onTap: _onItemTapped,
        currentIndex: widget.selectedTabIndex,
        // selectedIconTheme: const IconThemeData(
        //   color: Colors.indigoAccent,
        // ),
        // fixedColor: HexColor('#EF5A2E'),
        // backgroundColor: HexColor('#1A1818'),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            // icon: Image.asset('assets/images/noun_Home_3496042.png'),
            // icon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.favorite,
            ),
            //backgroundColor: Colors.white,
            // icon: Image.asset('assets/images/noun_Heart_196534.png'),
            //   icon: Icon(Icons.favorite, color: Colors.white),
            // label: '${AppLocalizations.of(context)?.translate("Favorites")}',

            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.star,
            ),
            // icon: Image.asset('assets/images/noun_appreciation_3117367.png'),
            //  icon: Icon(Icons.star, color: Colors.white),
            // label: '${AppLocalizations.of(context)?.translate("OUR_STARS")}',

            label: 'O Stars',
          ),
          BottomNavigationBarItem(
            // icon: Image.asset('assets/images/'),
            icon: const Icon(Icons.account_circle_outlined),
            // label: '${AppLocalizations.of(context)?.translate("MY_ACCOUNT")}',
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.settings,
            ),
            // icon: Image.asset('assets/images/noun_Settings_3496538.png'),
            //  icon: Icon(Icons.settings, color: Colors.white),
            // label: '${AppLocalizations.of(context)?.translate("SETTINGS")}',
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.category),
            // icon: Image.asset('assets/images/noun_Home_3496042.png'),
            // icon: Icon(Icons.home, color: Colors.white),
            // label: '${AppLocalizations.of(context)?.translate("CATEGORIES")}',
            label: 'Categories',
          ),
        ],
      ),
      backgroundColor: HexColor('#FAFAFA'),
      body: _pages[widget.selectedTabIndex],
    );
  }
}

// InkWell(
//             onTap: () {},
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Card(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10.0),
//                 ),
//                 elevation: 6,
//                 child: SizedBox(
//                   height: 50.0,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Text(
//                         'Search',
//                         style: TextStyle(
//                           color: Colors.grey,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                       Image.asset('assets/images/magnifying-glass.png'),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
