import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo.shade900,
      appBar: AppBar(
        title: Text('Dicee'),
        backgroundColor: Colors.indigo.shade900,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftDiceNumber = Random().nextInt(6)+1;
                    rightDiceNumber = Random().nextInt(6)+1;
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png')
            ),
          ),
          Expanded(
              flex: 1,
              child: FlatButton(
                  onPressed: () {
                    setState((){
                      rightDiceNumber = Random().nextInt(6)+1;
                      leftDiceNumber = Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png')
              )
          )
        ],
      ),
    );
  }
}

