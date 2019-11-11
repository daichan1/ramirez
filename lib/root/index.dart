import 'package:flutter/material.dart';

// 経路表示画面
class RootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('経路表示'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('経路表示'),
          ],
        ),
      )
    );
  }
}