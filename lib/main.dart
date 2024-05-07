import 'package:flutter/material.dart';
import 'package:flutter03_mingflix/provider/navigation_index_provider.dart';
import 'package:flutter03_mingflix/screen/main_screen.dart';
import 'package:flutter03_mingflix/widget/main_bottom_navigation_bar.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(PureApp());
}

class PureApp extends StatefulWidget {
  const PureApp({super.key});

  @override
  _PureAppState createState() => _PureAppState();

}
class _PureAppState extends State {  @override

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pure',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.amber,
        brightness: Brightness.light
        ),
        useMaterial3: true
      ),
      home: ChangeNotifierProvider(
        create: (BuildContext context) => NavigationIndexProvider(),
        child: Scaffold(
          bottomNavigationBar: MainBottomNavigationBar(),
          body: MainScreen(),
        ),
      ),
    );
  }
}