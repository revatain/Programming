import 'package:flutter/material.dart';

// 받아온 list 데이터를 필터링해서 변경
// where : 필터링
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 받아온 데이터
    List<String> strList = ["apple", "google", "naver"];

    // a라는 글자가 들어간 str만 필터링
    // a가 있으면 true 반대의 경우는 false
    final filter = (String str) {
      return str.contains("a");
    };
    // String을 위젯으로 변경하는 함수
    // 같은 위젯을 리스트로 사용해서 출력할 경우
    // key를 넣어줘야 함.
    final change = (String str) {
      return Text(str, key: UniqueKey(),);
    };

    List<Widget> widgetList = strList.where(filter).map(change).toList();
    // Text 위젯 리스트로 만들기
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: widgetList,
        ),
      ),
    );
  }
}
