import 'package:ecomerce_app/components/bottom_navbar.dart';
import 'package:ecomerce_app/pages/cart_page.dart';
import 'package:ecomerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this selected index is to control the bottom nav bar
  int _selectedIndex = 0;
  // this method will update our selected index
  // when the user taps on the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    // shop page
    const ShopPage(),
    // cart page
    const CartPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavBar(
        onTabChnage: (index) => navigateBottomBar(index),
        onTabChange: (index) {},
      ),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
            builder: (context) => (Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: IconButton(
                  icon: const Icon(Icons.menu),
                  color: Colors.black,
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ))),
          )),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                // logo
                DrawerHeader(
                  child: Image.asset(
                    'assets/images/logo.png',
                    color: Colors.white,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Divider(color: Colors.grey[800])),
                // other pages
                const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: ListTile(
                        leading: Icon(Icons.home, color: Colors.white),
                        title: Text(
                          'Home',
                          style: TextStyle(color: Colors.white),
                        ))),
                // about us
                const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: ListTile(
                        leading: Icon(Icons.info, color: Colors.white),
                        title: Text(
                          'About',
                          style: TextStyle(color: Colors.white),
                        ))),
              ],
            ),
            // logout
            const Padding(
                padding: EdgeInsets.only(left: 25, bottom: 25),
                child: ListTile(
                    leading: Icon(Icons.logout, color: Colors.white),
                    title: Text(
                      'Logout',
                      style: TextStyle(color: Colors.white),
                    )))
            // logout
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
