import 'package:flutter/material.dart';
import 'package:flutter_basic_1/firstpage.dart';
import 'package:flutter_basic_1/secondpage.dart';
import 'package:flutter_basic_1/thirdpage.dart';

void main () {
  runApp(MyApp());
}

// 위젯은 화면을 구성하는 요소
class MyApp extends StatelessWidget {
  // 같은 타입의 위젯이 여러개 있을 경우
  // context가 구분하게 함
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ThirdPage(),
    );
  }
}
