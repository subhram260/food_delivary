import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
// import 'package:food_delivary/pages/accounts_page.dart';
import 'package:food_delivary/pages/favourite_page.dart';
import 'package:food_delivary/pages/orderpage.dart';
import 'package:food_delivary/profile.dart';
// import 'package:flutter/rendering.dart';
// import 'package:foodify/src/pages/accounts_page.dart';
// import 'package:foodify/src/pages/favourite_page.dart';
// import 'package:foodify/src/pages/orderpage.dart';
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
  Widget currentPage;

  HomePage homePage;
  OrderPage orderPage;
  FavouritePage favouritePage;
  Profile accountsPage;
  @override
  void initState() {
    super.initState();
    homePage = HomePage();
    orderPage = OrderPage();
    favouritePage = FavouritePage();
    accountsPage = Profile();
    pages = [homePage, orderPage, favouritePage, accountsPage];

    currentPage = homePage;
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
              currentTabindex = index;
              currentPage = pages[index];
              switch (currentTabindex) {
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
          currentIndex: currentTabindex,
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
      body: currentPage,
    );
  }
}
