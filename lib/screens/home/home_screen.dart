import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen appBar 영역(index:0)'),
      ),
      // 수옵
      body: Container(
          color: Colors.orange[100],
          child: Center(
              child: Text("HomeScreen"))),
    );
  }
}
