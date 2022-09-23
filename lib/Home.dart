import 'package:flutter/material.dart';
import 'calc_button.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var operand = '';
  var text = '0';

  insertNumber(value) {
    setState(() {
      if (text == '0' || text == 'Infinity') {
        text = value.toString();
      } else {
        text += value.toString();
      }
    });
  }

  setOperator(newOperator) {
    setState(() {
      if (operand != '') {
        calculate();
        text += newOperator.toString();
        operand = newOperator;
      } else {
        text += newOperator.toString();
        operand = newOperator;
      }
    });
  }

  calculate() {
    var data = text.split(operand);

    var number1 = data[0];
    var number2 = data[1];

    setState(() {
      if (operand == '*') {
        text = (double.parse(number1) * double.parse(number2)).toStringAsFixed(2);
      }
      else if (operand == '/') {
        text = (double.parse(number1) / double.parse(number2)).toStringAsFixed(2);
      }
      else if (operand == '-') {
        text = (double.parse(number1) - double.parse(number2)).toStringAsFixed(2);
      }
      else if (operand == 'mod') {
        text =
            (double.parse(number1) % double.parse(number2)).toStringAsFixed(1);
      }
      else if (operand == '%') {
        text = (double.parse(number1) / double.parse(number2) * 100).toStringAsFixed(2);
      }
      else{
        text = (double.parse(number1) + double.parse(number2)).toStringAsFixed(2);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double screenSize = 290;

    return Scaffold(
      appBar: AppBar(
        title: const Text("RGB Calculator"),
      ),
      body: Container(
        height: size.height,
        child: Column(
          children: [
            Container(
                color: Colors.white,
                height: screenSize,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(text,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 50
                      ),
                    ),
                  ],
                )
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 1),
              child: const Divider(color: Colors.red, height: 8),
            ),
            Container(
              padding: const EdgeInsets.only(top: 4),
              color: Colors.black,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: CalcButton(
                            color: Colors.green,
                            onItemTap: () {
                              insertNumber(7);
                            },
                            text: "7",
                          )
                      ),
                      Expanded(
                          child: CalcButton(
                            color: Colors.green,
                            onItemTap: () {
                              insertNumber(8);
                            },
                            text: "8",
                          )
                      ),
                      Expanded(
                          child: CalcButton(
                            color: Colors.green,
                            onItemTap: () {
                              insertNumber(9);
                            },
                            text: "9",
                          )
                      ),
                      Expanded(
                          child: CalcButton(
                            textColor: Colors.white,
                            onItemTap: () {
                              setOperator('/');
                            },
                            text: "/",
                          )
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: CalcButton(
                            color: Colors.redAccent,
                            onItemTap: () {
                              insertNumber(4);
                            },
                            text: "4",
                          )
                      ),
                      Expanded(
                          child: CalcButton(
                            color: Colors.redAccent,
                            onItemTap: () {
                              insertNumber(5);
                            },
                            text: "5",
                          )
                      ),
                      Expanded(
                          child: CalcButton(
                            color: Colors.redAccent,
                            onItemTap: () {
                              insertNumber(6);
                            },
                            text: "6",
                          )
                      ),
                      Expanded(
                          child: CalcButton(
                            textColor: Colors.white,
                            onItemTap: () {
                              setOperator('*');
                            },
                            text: "*",
                          )
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: CalcButton(
                            color: Colors.blueAccent,
                            onItemTap: () {
                              insertNumber(1);
                            },
                            text: "1",
                          )
                      ),
                      Expanded(
                          child: CalcButton(
                            color: Colors.blueAccent,
                            onItemTap: () {
                              insertNumber(2);
                            },
                            text: "2",
                          )
                      ),
                      Expanded(
                          child: CalcButton(
                            color: Colors.blueAccent,
                            onItemTap: () {
                              insertNumber(3);
                            },
                            text: "3",
                          )
                      ),
                      Expanded(
                          child: CalcButton(
                            textColor: Colors.white,
                            onItemTap: () {
                              setOperator('+');
                            },
                            text: "+",
                          )
                      )
                    ],
                  ),

                  Row(
                    children: [
                      Expanded(
                          child: CalcButton(
                            color: Colors.white,
                            onItemTap: () {
                              insertNumber(0);
                            },
                            text: "0",
                          )
                      ),
                      Expanded(
                          child: CalcButton(
                            color: Colors.white70,
                            onItemTap: () {
                              setOperator('%');
                            },
                            text: "%",
                          )
                      ),
                      Expanded(
                          child: CalcButton(
                            textColor: Colors.white,
                            onItemTap: () {
                              setState(() {
                                text = '0';
                                operand = '';
                              });
                            },
                            text: "CE",
                          )
                      ),
                      Expanded(
                          child: CalcButton(
                            textColor: Colors.white70,
                            onItemTap: () {
                              setOperator('-');
                            },
                            text: "-",
                          )
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: CalcButton(
                            color: Colors.white,
                            onItemTap: () {
                              insertNumber(00);
                            },
                            text: "00",
                          )
                      ),
                      Expanded(
                          child: CalcButton(
                            color: Colors.white70,
                            onItemTap: () {
                              setOperator('.');
                            },
                            text: ".",
                          )
                      ),
                      Expanded(
                          child: CalcButton(
                            textColor: Colors.white,
                            onItemTap: () {
                              setOperator('mod');
                            },
                            text: "mod",
                          )
                      ),
                      Expanded(
                          child: CalcButton(
                            textColor: Colors.white70,
                            onItemTap: () {
                              calculate();
                            },
                            text: "=",
                          )
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
