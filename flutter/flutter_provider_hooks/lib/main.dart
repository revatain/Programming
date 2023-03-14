import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

void main() {
  runApp(const CounterApp());
}
@override
Widget build(BuildContext context) {
  return MaterialApp();
}

class CounterApp extends HookWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = useState<int>(0);
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        counter.value++;
      },),
      body: SafeArea(
        child: Center(
          child: Text("${counter.value}", style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}

