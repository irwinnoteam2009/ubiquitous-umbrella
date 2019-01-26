import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test app',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ubiquitous-umbrella'),
        ),
        body: Center(
          child: GridView.count(
            crossAxisCount: 3,
            padding: EdgeInsets.all(2.0),
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
            children: genGridTile(6),
          ),
        ));
  }
}

List<GridTile> genGridTile(int count) {
  return List<GridTile>.generate(
      count,
      (int index) => GridTile(
            child: Image.asset(
              'images/test/${index + 1}.jpg',
              fit: BoxFit.cover,
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black38,
              title: Text('index: ${index+1}'),
            ),
          )
    );
}
