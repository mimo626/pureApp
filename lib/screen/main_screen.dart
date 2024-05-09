import 'package:flutter/material.dart';
import 'package:flutter03_mingflix/provider/navigation_index_provider.dart';
import 'package:flutter03_mingflix/screen/community_screen.dart';
import 'package:flutter03_mingflix/screen/home_screen.dart';
import 'package:flutter03_mingflix/screen/memory_screen.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {

    var navigationIndexProvider = Provider.of<NavigationIndexProvider>(context, listen: false);
    var currentIndex = navigationIndexProvider.currentPageIndex;
    
    navigationIndexProvider.addListener(() { 
      setState(() {
        currentIndex = navigationIndexProvider.currentPageIndex;
      });
      
    });
    return Container(
      child: [
      HomeScreen(),
      MemoryScreen(),
      CommunityScreen(),
      Center(child: Text("My"))
      ][currentIndex]
    );
  }
}