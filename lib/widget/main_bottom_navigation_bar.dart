import 'package:flutter/material.dart';
import 'package:flutter03_mingflix/provider/navigation_index_provider.dart';
import 'package:provider/provider.dart';

class MainBottomNavigationBar extends StatefulWidget {
  const MainBottomNavigationBar({super.key});

  @override
  State<MainBottomNavigationBar> createState() => _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {

  @override
  Widget build(BuildContext context) {
    var navigationIndexProvider = Provider.of<NavigationIndexProvider>(context, listen: false);

    return NavigationBar(
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: "Home"
          ),
          NavigationDestination(
              icon: Icon(Icons.add_comment_outlined),
              selectedIcon: Icon(Icons.add_comment),
              label: "Memory"
          ),
          NavigationDestination(
              icon: Icon(Icons.people_outline),
              selectedIcon: Icon(Icons.people),
              label: "Community"
          ),
          NavigationDestination(
              icon: Icon(Icons.star_border_outlined),
              selectedIcon: Icon(Icons.star),
              label: "My"
          )
      ],
      selectedIndex: navigationIndexProvider.currentPageIndex,
      onDestinationSelected: (value) {
        setState(() {
          navigationIndexProvider.setCurrentPageIndex(value);
        });
      },
      indicatorColor: Colors.white,
    );
  }
}