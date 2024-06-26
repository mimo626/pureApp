import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

// PreferredSizeWidget : 크기 조정이 가능한 위젯을 구현할때 사용하는 클래스
// 높이나 가로길이를 조절해야줘야 하는 위젯을 만들 때 반드시 붙혀줘야 한다.
// appBar 에 등록되는 위젯은 반드시 구현해줘야 한다.
class HomeTopAppBar extends StatefulWidget implements PreferredSizeWidget{
  const HomeTopAppBar({super.key});

  @override
  State<HomeTopAppBar> createState() => _HomeTopAppBarState();

  @override
  // TODO: implement preferredSize
  // Material3 에 정한 AppBar의 높이를 설정해준다.
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _HomeTopAppBarState extends State<HomeTopAppBar> {

  @override
  Widget build(BuildContext context) {
    addTest();
    printTest();
    return AppBar(
      title: Row(
        children: [
          // 로고 & 텍스트
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
      // 하트 버튼
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite),
            color: Colors.blueGrey,
        ),
      ],
    );
  }
}
// 테스트 데이터 저장
Future<void> addTest() async {
  await FirebaseFirestore.instance.collection('test').add({
    'data1' : 100,
    'data2' : 11.111,
    'data3' : '안녕하세요'
  });
}

// 테스트 데이터 출력
Future<void> printTest() async {
  var result = await FirebaseFirestore.instance.collection('test').get();

  for(var doc in result.docs){
    var map = doc.data();
    print('firebase test : $map');
  }
}