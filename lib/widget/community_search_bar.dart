import 'package:flutter/material.dart';

class CommunitySearchBar extends StatefulWidget {
  const CommunitySearchBar({super.key});

  @override
  State<CommunitySearchBar> createState() => _CommunitySearchBarState();

}

class _CommunitySearchBarState extends State<CommunitySearchBar> {
  @override
  Widget build(BuildContext context) {
    return SearchBar(
      leading: Icon(Icons.search_outlined),
      padding: MaterialStatePropertyAll(EdgeInsets.fromLTRB(10, 0, 10, 0)),
      elevation:MaterialStateProperty.all<double?>(0.0),
      backgroundColor: MaterialStateProperty.all(Color(0xffE8F0F9)),
      autoFocus: true,
    );
  }
}
