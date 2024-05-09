import 'package:flutter/material.dart';
import 'package:flutter03_mingflix/screen/search_screen.dart';

class CommunityTopAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CommunityTopAppBar({super.key});

  @override
  State<CommunityTopAppBar> createState() => _CommunityTopAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _CommunityTopAppBarState extends State<CommunityTopAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset(
            'lib/assets/images/pure.PNG',
            fit: BoxFit.contain,
            height: 30,
          ),
          Padding(padding: EdgeInsets.only(right: 10)),
          Text('Pure', style:
          TextStyle(fontWeight: FontWeight.w300, color: Colors.black87))
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => SearchScreen(),)
              );
            },
            icon: Icon(Icons.search_outlined,
            color: Colors.blueGrey,)),
      ],
    );
  }
}
