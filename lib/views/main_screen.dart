import 'package:flutter/material.dart';
import 'package:e_commerce_app/views/account_page.dart';
import 'package:e_commerce_app/views/cart_page.dart';
import 'package:e_commerce_app/views/explore_page.dart';
import 'package:e_commerce_app/views/favorite_page.dart';
import 'package:e_commerce_app/views/home_products.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeProductPage(),
    ExplorePage(),
    CartPage(),
    FavouritePage(),
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Color.fromRGBO(83, 177, 117, 1),
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.store_outlined),
            label: 'Shope',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search_sharp),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_checkout_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favourit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
