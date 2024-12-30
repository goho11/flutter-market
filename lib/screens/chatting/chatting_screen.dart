import 'package:flutter/material.dart';

// 파일명: 소문자, _(언더바)
// 클래스명: 대문자. 파일명과 달라도 됨
class ChattingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print("ChattingScreen build");
    return Scaffold(
      body: Center(child: Text("ChattingScreen")),
    );
  }
}