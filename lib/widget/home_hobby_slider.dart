import 'package:flutter/material.dart';
import 'package:flutter03_mingflix/screen/hobby_detail_screen.dart';

class HomeHobbySlider extends StatefulWidget {
  const HomeHobbySlider({super.key});

  @override
  State<HomeHobbySlider> createState() => _HomeHobbySliderState();
}

class _HomeHobbySliderState extends State<HomeHobbySlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('함께 하기 좋은 취미'),
          Padding(padding: EdgeInsets.only(top: 5)),
          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return makeItemList(context);
                },
            ),
          )
        ],
      ),
    );
  }
}

Widget makeItemList(BuildContext context){
  return InkWell(
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => HobbyDetailScreen(),
          fullscreenDialog: true
        )
      );
    },
    child: Container(
      padding: EdgeInsets.only(right: 10),
      child: CircleAvatar(
        backgroundImage: AssetImage('lib/assets/images/love5.PNG'),
        radius: 48,
      ),
    ),
  );
}