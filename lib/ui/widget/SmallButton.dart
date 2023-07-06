import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quez_app/ui/pages/HomePage/HomePage.dart';
import 'package:quez_app/ui/style/AppColors/AppColors.dart';

class SmallButton extends StatelessWidget {
  String text;
  Function onPressed;
  SmallButton({required this.text,required this.onPressed});


  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){
        onPressed();
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      color: AppColors.buttonColor,
      height: 60,
      minWidth: 140,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
