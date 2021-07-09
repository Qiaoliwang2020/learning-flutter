import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Tutorial',
    home: TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // scaffold is a layout for
    // the major Material Components.

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Text('Qiaoli'),
        actions: <Widget>[
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            tooltip: 'Search',
          )
        ],
      ),
      // body is the majaority of the screen
      body: Center(
        child: Text('Hello, world'),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}
