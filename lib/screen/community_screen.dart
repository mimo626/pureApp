import 'package:flutter/material.dart';
import 'package:flutter03_mingflix/widget/community_top_app_bar.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommunityTopAppBar(),
      body: Container(

      ),
    );
  }
}
