import 'package:flutter/material.dart';
import 'package:my_quiz_app/dummyDb.dart';
import 'package:my_quiz_app/utlis/color_constants.dart';
import 'package:my_quiz_app/view/home_screen/home_screen.dart';
import 'package:my_quiz_app/view/question_screen/question_Screen.dart';

class ResultScreen extends StatefulWidget {
  ResultScreen(
      {required this.resultcount, required this.selectedCategory, super.key});
  final int resultcount;
  final Map<String, dynamic> selectedCategory;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  int startcount = 0;

  calculateStarCount() {
    var percentage =
        (widget.resultcount / widget.selectedCategory["subQuestion"].length) *
            100;
    if (percentage >= 80) {
      startcount = 3;
    } else if (percentage >= 50) {
      startcount = 2;
    } else if (startcount > 30) {
      startcount = 1;
    } else {
      startcount = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 220,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        3,
                        (index) => Icon(
                          Icons.star,
                          color: index < startcount
                              ? ColorConstants.yellow_color
                              : ColorConstants.main_white,
                          size: index == 1 ? 70 : 50,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Congratulations",
                    style: TextStyle(
                        color: ColorConstants.main_white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Your Score",
                    style: TextStyle(
                      color: ColorConstants.main_white,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    " ${widget.resultcount} / ${widget.selectedCategory["subQuestion"].length}",
                    style: TextStyle(
                        color: ColorConstants.main_white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ],
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  correctAnswerList = [];
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuestionScreen(
                                selectedCategory: widget.selectedCategory,
                              )));
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: ColorConstants.main_white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 14,
                        backgroundColor: ColorConstants.main_black,
                        child: Icon(
                          Icons.refresh,
                          color: ColorConstants.main_white,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Retry",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  correctAnswerList = [];
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: ColorConstants.main_white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Back to Home Page",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
