import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Ludu Game',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,S
        ),
        body: LuduGame(),
      ),
    ),
  );
}

class LuduGame extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LuduGameState();
  }
}

class _LuduGameState extends State<LuduGame> {
  int upLeftDice = Random().nextInt(6) + 1;
  int upRightDice = Random().nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                child: Image.asset('images/chokkha-$upLeftDice.png'),
                onPressed: () {
                  upLeftDice = Random().nextInt(6) + 1;
                  setState(() {});
                },
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                child: Image.asset('images/chokkha-$upRightDice.png'),
                onPressed: () {
                  upRightDice = Random().nextInt(6) + 1;
                  setState(() {});
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
