import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioWithText extends StatefulWidget {
  int value;
  String text;
  int groupValue;
  RadioWithText({required this.value, required this.text,this.groupValue = 0});

  @override
  State<RadioWithText> createState() => _RadioWithTextState();
}

class _RadioWithTextState extends State<RadioWithText> {


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          value: widget.value,
          groupValue: widget.groupValue,
          onChanged: (value) {
            print(value);
            setState(() {
              widget.groupValue = value!;
            });
          },
        ),
        Text(
          widget.text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        )
      ],
    );
  }
}
