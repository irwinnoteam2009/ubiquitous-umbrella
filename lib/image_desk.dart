import 'package:flutter/material.dart';

class ImageDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('custom desk'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List<GridTile>.generate(6, (int index) =>
          GridTile(
            child: Image.asset(
              'images/test/${index+1}.jpg',
              fit: BoxFit.cover,),
            footer: GridTileBar(
              backgroundColor: Colors.white24,
              title: Text('title ${index+1}'),
              subtitle: Text('subtitle ${index+1}'),
              ),
          )
        ),
      ),
    );
  }
}