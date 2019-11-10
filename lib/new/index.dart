import 'package:flutter/material.dart';

// 新規ルートパターン作成画面
class NewRootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ルートパターン作成'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            StationInput(station: "最寄駅"),
            StationInput(station: "終着駅"),
            RequiredTimeInput(),
            CategoryInput(),
            CreateButton(),
          ],
        ),
      ),
    );
  }
}

// 最寄駅、終着駅の入力共通フォーム
class StationInput extends StatelessWidget {
  final String station;
  StationInput({this.station});
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: station,
          hintText: "ここに登録したい${station}を入力してね"
        ),
      ),
    );
  }
}

// 最寄駅までの所要時間入力フォーム
class RequiredTimeInput extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "最寄駅までの所要時間",
          hintText: "例：20"
        ),
      ),
    );
  }
}

// カテゴリー入力フォーム
class CategoryInput extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "カテゴリー",
          hintText: "カテゴリー名を入力してね"
        ),
      ),
    );
  }
}

// 登録ボタン
class CreateButton extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: RaisedButton(
        child: Text("登録"),
        onPressed: () {

        },
      ),
    );
  }
}