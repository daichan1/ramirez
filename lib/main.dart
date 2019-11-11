import 'package:flutter/material.dart';
import './new/index.dart';
import './root/index.dart';

void main() {
  runApp(new MaterialApp(
    title: "Test",
    routes: <String, WidgetBuilder>{
      '/': (BuildContext context) => new MainScreen(),
      '/new': (BuildContext context) => new NewRootScreen(),
      '/root': (BuildContext context) => new RootScreen(),
    },
  ));
}

class MainScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ワンタップ経路表示'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_circle),
              onPressed: () {
                Navigator.pushNamed(context, '/new');
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              RoutePatten(),
              Container(
                child: RaisedButton(
                  child: Text('経路を表示する'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/root');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ルートパターンをState管理
class RoutePatten extends StatefulWidget {
  // @overrideは同じ名前のスーパークラスをオーバーライドする
  @override
  _RoutePatten createState() => _RoutePatten();
}

// ルートパターンを選択するフォームコンポーネント
// Stateクラスを継承(RoutePatten)
class _RoutePatten extends State<RoutePatten> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(100),
          child: DropdownButton<String>(
            value: dropdownValue,
            icon: Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: <String>['One', 'Two', 'Free', 'Four'].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}