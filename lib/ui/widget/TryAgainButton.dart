import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quez_app/ui/pages/SelectPage/SelectPage.dart';
import 'package:quez_app/ui/style/AppColors/AppColors.dart';

class TryAgainButton extends StatelessWidget {
  String text;
  TryAgainButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Get.offAll(SelectPage(),);
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
      minWidth: 150,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
