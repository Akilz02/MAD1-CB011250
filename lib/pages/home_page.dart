import 'package:flutter/material.dart';
import 'package:test02/components/bottom_nav_bar.dart';
import 'package:test02/pages/setting_page.dart';

import 'cart_page.dart';
import 'profile_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage ({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //navigation bottom bar
  int _selectedIndex = 0;
  void navigateBottomBar(int newIndex){
    setState(() {
      _selectedIndex = newIndex;
    });
  }

  //logout button
  void _handleLogout() {
    Navigator.pushReplacementNamed(context, '/login');
  }

  //pages to display

  final List<Widget> _pages = [
    //shop page
    const ShopPage(),

    //cart page
    const CartPage(),

    //profile page
    const ProfilePage(),

    //settings page
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      appBar: AppBar(
        title: const Text('Bubble Tea Shop'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: _handleLogout,
          ),
        ],
      ),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ) ,
      body: _pages[_selectedIndex],
    );
  }
}
