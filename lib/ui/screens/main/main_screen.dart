import 'package:flutter/material.dart';
import 'package:grocery/providers/main_provider.dart';
import 'package:grocery/ui/screens/cart/cart_screen.dart';
import 'package:grocery/ui/screens/home/home_screen.dart';
import 'package:grocery/ui/screens/search/search_screen.dart';
import 'package:provider/provider.dart';

import 'widgets/my_bottom_navigation_bar.dart';

class MainScreen extends StatelessWidget {
  static const String route = "/MainScreen";

  MainScreen({Key? key}) : super(key: key);

  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final mainProvider = Provider.of<MainProvider>(context);
    return Scaffold(
      body: IndexedStack(children: _screens, index: mainProvider.currentScreen),
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
