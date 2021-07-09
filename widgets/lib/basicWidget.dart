import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({required this.title});

  // Fields in a widget subclass are always marked 'final'
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // row is a horizontal, linear layout
      child: Row(
        // widget is the type of items in the list.
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // null disables the button
          ),
          // expanded expands its child
          // to fill the available space
          Expanded(
            child: title,
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.search),
            tooltip: 'Search',
          )
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material is a conceptual piece
    // of paper on which the UI appears

    return Material(
      // column is a vertical , liner layout
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'Example title',
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          Expanded(
              child: Center(
            child: Text('Hello world !'),
          ))
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'My app',
    home: SafeArea(
      child: MyScaffold(),
    ),
  ));
}
