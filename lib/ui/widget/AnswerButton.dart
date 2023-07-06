import 'package:flutter/material.dart';

import '../style/AppColors/AppColors.dart';

class AnswerButton extends StatefulWidget {
  String answerNumber;
  String answerData;
  Function onClick;
  Color buttonColor;

  AnswerButton({
    required this.answerData,
    required this.answerNumber,
    required this.buttonColor,
    required this.onClick,

  });

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(left: 5),
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
          color: widget.buttonColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.blueColor1)),
      child: InkWell(
          onTap: () {
            widget.onClick();
          },
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  widget.answerNumber,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.buttonColor),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                widget.answerData,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          )),
    );
  }
}
