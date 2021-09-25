import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery/providers/main_provider.dart';
import 'package:grocery/utils/colors.dart';
import 'package:provider/provider.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainProvider = Provider.of<MainProvider>(context);
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: MyColors.primary,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      currentIndex: mainProvider.currentScreen,
      onTap: (index) {
        mainProvider.currentScreen = index;
      },
      items: const [
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.search),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.shoppingCart),
          label: "Cart",
        ),
        BottomNavigationBarItem(
          icon: FaIcon(FontAwesomeIcons.user),
          label: "Profile",
        ),
      ],
    );
  }
}
