import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_delivary/pages/cart.dart';
import 'package:food_delivary/pages/profile.dart';
import 'package:food_delivary/pages/search.dart';
import '../pages/home_page.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color bg0 = Color(0xff6d61f2);
  Color bg1 = Colors.white;
  Color bg2 = Colors.white;
  Color bg3 = Colors.white;
  int currentTabindex = 0;

  List<Widget> pages;
  int selectedindex = 0;
  // Widget currentPage;

  HomePage homePage;
  SearchPage searchPage;
  CartPage cartPage;
  ProfilePage profilePage;
  @override
  void initState() {
    super.initState();
    homePage = HomePage();
    searchPage = SearchPage();
    cartPage = CartPage();
    profilePage = ProfilePage();

    pages = [homePage, searchPage, cartPage, profilePage];

    // currentPage = homePage;
  }

  get bottomNavigation => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 30.0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedIconTheme: IconThemeData(color: Colors.white),
          //unselectedIconTheme: IconThemeData(size: 35.0),
          onTap: (int index) {
            setState(() {
              selectedindex = index;
              // pages[index];
              switch (selectedindex) {
                case 1:
                  bg0 = Colors.white;
                  bg1 = Color(0xff6d61f2);
                  bg2 = Colors.white;
                  bg3 = Colors.white;
                  break;
                case 2:
                  bg0 = Colors.white;
                  bg1 = Colors.white;
                  bg2 = Color(0xff6d61f2);
                  bg3 = Colors.white;
                  break;
                case 3:
                  bg0 = Colors.white;
                  bg1 = Colors.white;
                  bg2 = Colors.white;
                  bg3 = Color(0xff6d61f2);
                  break;
                default:
                  bg1 = bg2 = bg3 = Colors.white;
                  bg0 = Color(0xff6d61f2);
              }
            });
          },
          currentIndex: selectedindex,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Container(
                  height: 55.0,
                  width: 57.29,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: bg0,
                  ),
                  child: Icon(
                    EvaIcons.homeOutline,
                    size: 30.0,
                  ),
                ),
                label: ("Home")),
            BottomNavigationBarItem(
                icon: Container(
                  height: 55.0,
                  width: 57.29,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: bg1,
                  ),
                  child: Icon(
                    EvaIcons.searchOutline,
                    size: 30.0,
                  ),
                ),
                label: ("Orders")),
            BottomNavigationBarItem(
                icon: Container(
                  height: 55.0,
                  width: 57.29,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: bg2,
                  ),
                  child: Icon(
                    EvaIcons.shoppingBagOutline,
                    size: 30.0,
                  ),
                ),
                label: ("Favourite")),
            BottomNavigationBarItem(
                icon: Container(
                  height: 55.0,
                  width: 57.29,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: bg3,
                  ),
                  child: Icon(
                    EvaIcons.personOutline,
                    size: 30.0,
                  ),
                ),
                label: ("Account")),
          ]),
      body: IndexedStack(index: selectedindex, children: pages),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<SearchPage>('searchPage', searchPage));
  }
}
