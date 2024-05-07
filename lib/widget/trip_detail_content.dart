import 'package:flutter/material.dart';

class TripDetailContent extends StatefulWidget {
  const TripDetailContent({super.key});

  @override
  State<TripDetailContent> createState() => _TripDetailContentState();
}

class _TripDetailContentState extends State<TripDetailContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Text("ddfd"),
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('lib/assets/images/love2.PNG'),
                        fit: BoxFit.cover
                    )
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
