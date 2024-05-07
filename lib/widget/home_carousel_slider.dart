import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeCarouselSlider extends StatefulWidget {
  const HomeCarouselSlider({super.key});

  @override
  State<HomeCarouselSlider> createState() => _HomeCarouselSliderState();
}

class _HomeCarouselSliderState extends State<HomeCarouselSlider> {

  var images = [
    Image.asset("lib/assets/images/love1.PNG"),
    Image.asset("lib/assets/images/love2.PNG"),
    Image.asset("lib/assets/images/love3.PNG"),
    Image.asset("lib/assets/images/love4.PNG"),
    Image.asset("lib/assets/images/love5.PNG")
  ];

  var imagePosition = 0;

  var imageTitles = [
    "사랑1", "사랑2", "사랑3", "사랑4", "사랑5"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 디데이
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 0, 5),
            child: Text(
                "D-378",
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic)),
          ),
          // 커플 이름
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("강민주", style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                  color: Colors.pink),
              Text("김용석", style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),),
            ],
          ),
          // 추억 목록 사진
          Column(
            children: [
              CarouselSlider(
                  items: images,
                  options: CarouselOptions(
                    viewportFraction: 1.0,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    onPageChanged: (index, reason) {
                      setState(() {
                        imagePosition = index;
                      });
                    },
                  )
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Text(imageTitles[imagePosition], style: TextStyle(fontSize: 14)
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              AnimatedSmoothIndicator(
                activeIndex: imagePosition,
                count: images.length,
                effect: ScrollingDotsEffect(
                    dotWidth: 8,
                    dotHeight: 8,
                    dotColor: Colors.blueGrey,
                    activeDotColor: Colors.blueAccent,
                    activeDotScale: 1.5
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}