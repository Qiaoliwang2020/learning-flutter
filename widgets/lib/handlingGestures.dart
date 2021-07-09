import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('my button was tapped!');
      },
      child: Container(
        height: 50.0,
        padding: const EdgeInsets.all(15.0),
        margin: const EdgeInsets.symmetric(horizontal: 100.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.blue[500],
        ),
        child: Center(
          child: Text(
            'Engage',
            style: Theme.of(context).primaryTextTheme.button,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          body: Center(
    child: MyButton(),
  ))));
}
