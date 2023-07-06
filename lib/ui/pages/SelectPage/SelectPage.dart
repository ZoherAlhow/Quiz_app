import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quez_app/ui/pages/HomePage/HomePage.dart';
import 'package:quez_app/ui/pages/QuestionsType/QuestionsType.dart';
import 'package:quez_app/ui/widget/BigButton.dart';

import '../../style/AppColors/AppColors.dart';
import '../AddQuestion/AddQuestion.dart';

class SelectPage extends StatelessWidget {
  const SelectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: AppBar(
            centerTitle: true,
            backgroundColor: AppColors.primaryColor,
            elevation: 0,
            title: Center(
              child: Text(
                'Quiz App',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.greenColor,
                  fontSize: 28,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome to quiz app please select what you want to do',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 40,),
                BigButton(text: 'Add Question', onPressed: () {
                  Get.to(() => AddQuestion());
                }),
                SizedBox(height: 30,),
                BigButton(text: 'Start Quiz', onPressed: () {
                  Get.to(() => QuestionsType());
                }),
              ],
            ),
      ),
    );
  }
}
