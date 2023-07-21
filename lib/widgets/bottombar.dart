import 'package:flutter/material.dart';
import 'package:invest_app/screens/home_screen.dart';
import 'package:invest_app/screens/product_screen.dart';
import 'package:invest_app/screens/profile_screen.dart';
import 'package:invest_app/screens/transaction_screen.dart';

class ShowBottomBAr extends StatefulWidget {
  const ShowBottomBAr({super.key});

  @override
  State<ShowBottomBAr> createState() => _ShowBottomBArState();
}

class _ShowBottomBArState extends State<ShowBottomBAr> {
  int _selectedIconIndex = 0;
  var screenPages = [
    HomeScreen(),
    ProductScreen(),
    TransactionScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedLabelStyle: const TextStyle(color: Color(0xff31A062)),
        selectedItemColor: const Color(0xff31A062),
        unselectedLabelStyle: const TextStyle(color: Color(0xff999999)),
        unselectedItemColor: const Color(0xff999999),
        currentIndex: _selectedIconIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'Product',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horizontal_circle_outlined),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_rounded),
            label: 'Account',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIconIndex = index;
          });
        },
      ),
      body: screenPages[_selectedIconIndex],
    );
  }
}
