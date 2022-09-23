import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {

  final String text;
  final TapCallBack onItemTap;
  final Color? color;
  final Color? textColor;

  const CalcButton({
    required this.text,
    required this.onItemTap,
    this.color,
    this.textColor,
    Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      margin: const EdgeInsets.all(3),
      child: MaterialButton(
        color: color ?? Colors.amber,
        onPressed: onItemTap,
        shape: Border(),
        child:  Text(text,
          style: TextStyle(
              color: textColor ?? Colors.black,
              fontSize: 20
          ),
        ),
      ),
    );
  }

}

typedef TapCallBack = void Function();
