import 'package:flutter/material.dart';
import 'package:quez_app/ui/style/AppColors/AppColors.dart';

class BigButton extends StatelessWidget {
  String text;
  Function onPressed;
  BigButton({required this.text,required this.onPressed});


  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){
        onPressed();
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      color: AppColors.buttonColor,
      height: 60,
      minWidth: 250,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
