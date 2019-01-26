import 'package:flutter/material.dart';
import 'image_desk.dart';

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
  onMenuItemClick(String s) {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ubiquitous-umbrella'),
          actions: [
            IconButton(
              icon: Icon(Icons.all_inclusive, color: Colors.white,),
              onPressed: onMenuItemClick('one'),
            ),
            IconButton(
              icon: Icon(Icons.apps, color: Colors.white),
              onPressed: onMenuItemClick('two'),
            ),
            PopupMenuButton(
              onSelected: onMenuItemClick(''),
              itemBuilder: (BuildContext context) {
                return List<PopupMenuItem>.generate(3, (int index) =>
                  PopupMenuItem(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.archive),
                        Text('item: $index'),
                      ],
                    )
                  )
                );
              },
            )
          ],
        ),
        body: Center(
          child: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(4.0),
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
            children: genGridTile(6, context),
          ),
        ));
  }
}

List<GestureDetector> genGridTile(int count, BuildContext context) {
  return List<GestureDetector>.generate(
      count,
      (int index) => 
      GestureDetector(
        onTap: () {
          Navigator.push(
            context, 
            MaterialPageRoute(
              builder: (context) => ImageDesk())
          );
        },
        child: GridTile(
            child: Image.asset(
              'images/test/${index + 1}.jpg',
              fit: BoxFit.cover,
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black38,
              title: Text('index: ${index+1}'),
            ),
          )
      )      
    );
}
