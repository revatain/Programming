import 'package:flutter/material.dart';
import 'package:flutterhttpusers/post/controller/post_table_controller.dart';
import 'package:flutterhttpusers/post/view/pages/listpage.dart';
import 'package:flutterhttpusers/routes.dart';
import 'package:provider/provider.dart';

void main(){
  // controller는 사용하기 전에 주입해줘야 함.
  // 프로젝트가 커지면 하나의 컨트롤러만 사용하기엔 어려움.
  // 주입을 해주는 ChangeNotifierProvider를 여러개 쓰고 싶으면 MultiProvider를 씀.
  runApp(
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (BuildContext context) => PostTableController()),
    ],
    child: MyApp(),
  )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Routes.goRouter,
    );
  }
}
