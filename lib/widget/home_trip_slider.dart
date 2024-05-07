import 'package:flutter/material.dart';
import 'package:flutter03_mingflix/screen/trip_detail_screen.dart';

class HomeTripSlider extends StatefulWidget {
  const HomeTripSlider({super.key});

  @override
  State<HomeTripSlider> createState() => _HomeTripSliderState();
}

class _HomeTripSliderState extends State<HomeTripSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('추천하는 여행지'),
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
          builder: (context) => TripDetailScreen(),
          fullscreenDialog: true
        )
      );
    },
    child: Container(
      padding: EdgeInsets.only(right: 10),
      child: Image.asset('lib/assets/images/trip1.PNG')
    ),
  );
}