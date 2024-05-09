import 'package:flutter/material.dart';
import 'package:flutter03_mingflix/widget/home_top_app_bar.dart';

class MemoryScreen extends StatefulWidget {
  const MemoryScreen({super.key});

  @override
  State<MemoryScreen> createState() => _MemoryScreenState();
}

class _MemoryScreenState extends State<MemoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeTopAppBar(),
      body: Container(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
