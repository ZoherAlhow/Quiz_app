import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quez_app/ui/pages/HomePage/HomePage.dart';
import 'package:quez_app/ui/style/AppColors/AppColors.dart';

class QuestionsType extends StatelessWidget {
  QuestionsType({Key? key}) : super(key: key);

  List<String> Types = ['Science','Art','Sport','History','Cinema','Geography'];

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
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Text('Please choose the type of question that you want to try',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
              SizedBox(height: 20),
              Container(
                height: 480,
                child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    children: List.generate(6, (index) {
                      return InkWell(
                        onTap: (){
                          Get.to(HomePage(),arguments: index);
                          //print(index);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.buttonColor,
                          ),
                          child: Center(
                            child: Text(
                              '${Types[index]}',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26),
                            ),
                          ),
                        ),
                      );
                    })),
              ),
            ],
          ),
        ));
  }
}
