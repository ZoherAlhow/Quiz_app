
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quez_app/model/QuizModel.dart';
import 'package:quez_app/ui/pages/ResultPage/ResultPage.dart';
import 'package:quez_app/ui/widget/SmallButton.dart';

import '../../style/AppColors/AppColors.dart';
import '../../widget/AnswerButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static int questionType = Get.arguments;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionIndex = 0;
  int? select;
  static int correctAnswers = 0;
  static int wrongAnswers = 0;
  bool isTrue = false;
  List<QuizModel> quizModel = quiz[HomePage.questionType];
  List<QuizModel> skippedQuestion = [];

  void nextQuestion() {
    if (questionIndex < quizModel.length - 1) {
      setState(() {
        questionIndex = questionIndex + 1;
        select = null;
      });
    } else if (skippedQuestion.isNotEmpty) {
      setState(() {
        quizModel = skippedQuestion;
        questionIndex = 0;
        select = null;
        skippedQuestion = [];
      });
    } else {
      Get.to(() => ResultPage(), arguments: correctAnswers,duration: Duration(microseconds: 0));
      questionIndex = 0;
    }
  }

/*
  void skipped() {
    if (questionIndex < quizModel.length - 1) {
      setState(() {
        questionIndex = questionIndex + 1;
        skippedQuestionNumber = skippedQuestionNumber + 1;
        select = null;
      });
    } else if (skippedQuestion.isNotEmpty) {
      skippedQuestionNumber = 0;
      setState(() {
        questionIndex = 0;
        quizModel = skippedQuestion;
        skippedQuestionNumber++;
        skippedQuestion = [];
      });
    } else {
      questionIndex = 0;
      Get.to(() => ResultPage(), arguments: correctAnswers);
    }
  }
*/
  @override
  void initState() {
    correctAnswers = 0;
    wrongAnswers = 0;
  }

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
                  'Personality Test',
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
          child: Padding(
            padding: EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '${quizModel[questionIndex].num.toString()}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.greenColor,
                      ),
                    ),
                    Text(
                      '/${quiz[Get.arguments].length}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.greenColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  quizModel[questionIndex].question.toString(),
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 310,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return AnswerButton(
                        answerData: quizModel[questionIndex]
                            .answer![index]['text']
                            .toString(),
                        answerNumber: '0${index + 1}',
                        buttonColor: (select == index)
                            ? AppColors.greenColor
                            : AppColors.primaryColor,
                        onClick: () {
                          setState(() {
                            select = index;
                          });
                          isTrue =
                              quizModel[questionIndex].answer![index]['result'];
                          print(isTrue);
                        },
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SmallButton(
                      text: 'Skip',
                      onPressed: () {
                        skippedQuestion.add(quizModel[questionIndex]);
                        setState(() {
                          nextQuestion();
                        });
                      },
                    ),
                    SmallButton(
                        text: 'Next',
                        onPressed: () {
                          if (isTrue == true) {
                            correctAnswers++;
                            print(correctAnswers);
                          } else {
                            wrongAnswers++;
                          }
                          setState(() {
                            nextQuestion();
                          });
                        }),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

/*
                AnswerButton(
                  answerData:
                      quizModel[questionIndex].answer![1]['text'].toString(),
                  answerNumber: '02',
                  onClick: () {
                    if (quizModel[questionIndex].answer![1]['result'] == true) {
                      correctAnswers = correctAnswers + 1;
                      print(correctAnswers);
                    }
                    answerChosen();
                  },
                ),
                AnswerButton(
                  answerData:
                      quizModel[questionIndex].answer![2]['text'].toString(),
                  answerNumber: '03',
                  onClick: () {
                    if (quizModel[questionIndex].answer![2]['result'] == true) {
                      correctAnswers = correctAnswers + 1;
                      print(correctAnswers);
                    }
                    answerChosen();
                  },
                ),
                AnswerButton(
                  answerData:
                      quizModel[questionIndex].answer![3]['text'].toString(),
                  answerNumber: '04',
                  onClick: () {
                    if (quizModel[questionIndex].answer![3]['result'] == true) {
                      correctAnswers = correctAnswers + 1;
                      print(correctAnswers);
                    }
                    answerChosen();
                  },
                ),

 */
