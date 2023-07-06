import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quez_app/ui/pages/SelectPage/SelectPage.dart';

import '../../../model/QuizModel.dart';
import '../../style/AppColors/AppColors.dart';
import '../../widget/BigButton.dart';
import '../../widget/MyTextField.dart';
import '../../widget/RadioWithText.dart';
import '../../widget/SmallButton.dart';

class AddQuestion extends StatefulWidget {
  AddQuestion({Key? key}) : super(key: key);

  @override
  State<AddQuestion> createState() => _AddQuestionState();
}

class _AddQuestionState extends State<AddQuestion> {
  var questionCtrl = TextEditingController();

  var answer1Ctrl = TextEditingController();

  var answer2Ctrl = TextEditingController();

  var answer3Ctrl = TextEditingController();

  var answer4Ctrl = TextEditingController();

  int groupValue = 0;
  int group = 0;
  int index = 0;
  int trueIndex = 0;

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
                'Add Question',
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 140,
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: (10 / 2),
                children: [
                  Row(
                    children: [
                      Radio(
                        value: 0,
                        groupValue: groupValue,
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            groupValue = value!;
                            index = value;
                          });
                        },
                      ),
                      Text(
                        'Science',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: groupValue,
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            groupValue = value!;
                            index = value;
                          });
                        },
                      ),
                      Text(
                        'Art',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 2,
                        groupValue: groupValue,
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            groupValue = value!;
                            index = value;
                          });
                        },
                      ),
                      Text(
                        'Sport',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 3,
                        groupValue: groupValue,
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            groupValue = value!;
                            index = value;
                          });
                        },
                      ),
                      Text(
                        'History',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 4,
                        groupValue: groupValue,
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            groupValue = value!;
                            index = value;
                          });
                        },
                      ),
                      Text(
                        'Cinema',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 5,
                        groupValue: groupValue,
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            groupValue = value!;
                            index = value;
                          });
                        },
                      ),
                      Text(
                        'Geography',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      )
                    ],
                  ),

                  /*
                  RadioWithText(value: 0,text: 'Science',groupValue: groupValue),
                  RadioWithText(value: 1,text: 'Art',groupValue: groupValue),
                  RadioWithText(value: 2,text: 'Sport',groupValue: groupValue),
                  RadioWithText(value: 3,text: 'History',groupValue: groupValue),
                  RadioWithText(value: 4,text: 'Cinema',groupValue: groupValue),
                  RadioWithText(value: 5,text: 'Geography',groupValue: groupValue),
                  */
                ],
              ),
            ),
            MyTextFieled(
                text: 'Enter The Question', textEditingCtrl: questionCtrl),
            Row(
              children: [
                MyTextFieled(
                    text: 'Enter The First Answer ',
                    textEditingCtrl: answer1Ctrl),
                Radio(
                  value: 0,
                  groupValue: group,
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      group = value!;
                      trueIndex = value;
                    });
                  },
                )
              ],
            ),
            Row(
              children: [
                MyTextFieled(
                    text: 'Enter The Second Answer',
                    textEditingCtrl: answer2Ctrl),
                Radio(
                  value: 1,
                  groupValue: group,
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      group = value!;
                      trueIndex = value;
                    });
                  },
                )
              ],
            ),
            Row(
              children: [
                MyTextFieled(
                    text: 'Enter The Third Answer', textEditingCtrl: answer3Ctrl),
                Radio(value: 2, groupValue: group, onChanged: (value) {
                  print(value);
                  setState(() {
                    group = value!;
                    trueIndex = value;
                  });
                },)],
            ),
            Row(
              children: [
                MyTextFieled(
                    text: 'Enter The Fourth Answer', textEditingCtrl: answer4Ctrl),
                Radio(value: 3, groupValue: group, onChanged: (value) {
                  print(value);
                  setState(() {
                    group = value!;
                    trueIndex = value;
                  });
                },)],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmallButton(
                  text: 'Add Question',
                  onPressed: () {
                    int x = quiz[index].length;
                    quiz[index].add(
                      QuizModel(
                          num: x + 1,
                          question: questionCtrl.text,
                          answer: [
                            {'text': answer1Ctrl.text, 'result': trueIndex==0?true:false},
                            {'text': answer2Ctrl.text, 'result': trueIndex==1?true:false},
                            {'text': answer3Ctrl.text, 'result': trueIndex==2?true:false},
                            {'text': answer4Ctrl.text, 'result': trueIndex==3?true:false},
                          ]),
                    );
                    setState(() {
                      Get.offAll(SelectPage());
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
