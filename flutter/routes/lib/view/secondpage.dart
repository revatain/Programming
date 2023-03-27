import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {

    String? args;

    try {
      args = ModalRoute.of(context)?.settings.arguments as String?;
    } catch (e) {
      print(e);
    }

    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, "돌려받았습니다.");
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Second Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(args ?? '잘못된 요청입니다.'),
            ],
          ),
        ),
      ),
    );
  }
}

void showToast(BuildContext context, String message) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(
      content: Text(message),
    ),
  );
}