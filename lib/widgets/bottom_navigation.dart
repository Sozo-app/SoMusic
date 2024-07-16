import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:spark_music/pages/explore/explore_page.dart';
import 'package:spark_music/pages/library/library_page.dart';

import '../pages/home/home_page.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  final List<Widget> _screens = [
    const HomePage(),
    const ExplorePage(),
    const LibraryPage(),
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          elevation: 0,
          backgroundColor: Theme.of(context).colorScheme.onSurface,
          indicatorColor: Theme.of(context).colorScheme.primary,
          iconTheme: MaterialStateProperty.resolveWith<IconThemeData>(
            (states) => IconThemeData(
              color: Theme.of(context).colorScheme.onBackground,
              size: 24,
            ),
          ),
          labelTextStyle: MaterialStateProperty.resolveWith<TextStyle?>(
            (states) => TextStyle(
              color: Theme.of(context).colorScheme.onBackground,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
            ),
          ),
        ),
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedIndex: _currentIndex,
          indicatorColor: Theme.of(context).colorScheme.primary,
          destinations: const [
            NavigationDestination(
              icon: Icon(FluentIcons.home_24_regular),
              selectedIcon: Icon(
                FluentIcons.home_24_filled,
                color: Colors.black,
              ),
              label: 'Home',
              tooltip: 'Home',
            ),
            NavigationDestination(
                icon: Icon(FluentIcons.grid_20_regular),
                label: 'Explore',
                tooltip: 'Explore',
                selectedIcon: Icon(
                  FluentIcons.grid_20_filled,
                  color: Colors.black,
                )),
            NavigationDestination(
              icon: Icon(FluentIcons.library_24_regular),
              selectedIcon: Icon(
                FluentIcons.library_24_filled,
                color: Colors.black,
              ),
              label: 'Library',
              tooltip: 'Library',
            ),
          ],
        ),
      ),
    );
  }
}
