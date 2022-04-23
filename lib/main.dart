import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int righDice = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
            title: Text('Dice App'),
            centerTitle: true,
            backgroundColor: Colors.deepPurple),
        body: Center(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: TextButton(
                    onPressed: () {
                      leftDice = 1 + Random().nextInt(6);
                      print(leftDice);
                      setState(() {});
                    },
                    child: Image.asset("assets/images/dice$leftDice.png")),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                    onPressed: () {
                      print("Right dice");
                      righDice = 1 + Random().nextInt(6);
                      setState(() {});
                    },
                    child: Image.asset("assets/images/dice$righDice.png")),
              ),
            ],
          ),
        ));
    ;
  }
}
