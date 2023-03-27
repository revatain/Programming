import 'package:flutter/material.dart';
import 'package:routes/routes.dart';
import 'package:routes/view/firstpage.dart';
import 'package:routes/view/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Routes.first: (context) => const FirstPage(),
        Routes.second: (context) => const SecondPage(),
      },
      initialRoute: Routes.first,
    );
  }
}