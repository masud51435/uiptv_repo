import 'package:UIPtv/core/app_colors.dart';
import 'package:UIPtv/feature/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class PbottomNavbar extends StatefulWidget {
  const PbottomNavbar({super.key});

  @override
  State<PbottomNavbar> createState() => _PbottomNavbarState();
}

class _PbottomNavbarState extends State<PbottomNavbar> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _screens() {
    return [
      const HomePage(),
      const Center(
        child: Text('add post'),
      ),
      const Center(
        child: Text('next'),
      ),
      const Center(
        child: Text('Now again'),
      ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        inactiveIcon: const Icon(Icons.home_outlined),
        activeColorPrimary: selectedButtonColor,
        inactiveColorPrimary: greyColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Iconsax.monitor5),
        inactiveIcon: const Icon(Icons.monitor_outlined),
        activeColorPrimary: selectedButtonColor,
        inactiveColorPrimary: greyColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.download),
        activeColorPrimary: selectedButtonColor,
        inactiveColorPrimary: greyColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        inactiveIcon: const Icon(Icons.person_outline),
        activeColorPrimary: selectedButtonColor,
        inactiveColorPrimary: greyColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      items: _navBarItems(),
      screens: _screens(),
      navBarStyle: NavBarStyle.style6,
      navBarHeight: 55,
      backgroundColor: navbarColor,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      bottomScreenMargin: 0,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(40),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
