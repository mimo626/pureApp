import 'package:flutter/material.dart';
import 'package:flutter03_mingflix/widget/community_search_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            // 검색창
            Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: CommunitySearchBar(),
                )
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
          ],
        ),
      ),
    );
  }
}
