import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quez_app/model/QuizModel.dart';
import 'package:quez_app/ui/pages/HomePage/HomePage.dart';
import 'package:quez_app/ui/style/AppColors/AppColors.dart';

import '../../widget/TryAgainButton.dart';


class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Your result is :',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
            Text(
              '${Get.arguments.toString()}/${quiz[HomePage.questionType].length}',
              style: TextStyle(
                color: AppColors.greenColor,
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),
            ),
            TryAgainButton(text: 'Try Again',),
          ],
        ),
      ),
    );
  }
}
