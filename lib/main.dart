import 'package:flutter/material.dart';
import 'Home.dart';
void main() {
  runApp(const MyCalc());
}

class MyCalc extends StatefulWidget {
  const MyCalc({Key? key}) : super(key: key);

  @override
  State<MyCalc> createState() => _MyCalcState();
}

class _MyCalcState extends State<MyCalc> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Basic Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const Home(),

    );
  }
}

