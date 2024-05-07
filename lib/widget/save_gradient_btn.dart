import 'package:flutter/material.dart';
import 'package:flutter03_mingflix/screen/trip_detail_screen.dart';

class SaveGradientBtn extends StatefulWidget {
  const SaveGradientBtn({super.key});

  @override
  State<SaveGradientBtn> createState() => _SaveGradientBtnState();
}

class _SaveGradientBtnState extends State<SaveGradientBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Stack(
              children: [
                // 그라데이션 배경
                Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Colors.indigo,
                            Colors.blueAccent
                          ]
                        )
                      ),
                    )
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        textStyle: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.save_alt,
                          color: Colors.white,
                        ),
                        Padding(padding: EdgeInsets.only(right: 5)),
                        Text("저장")
                      ],
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}