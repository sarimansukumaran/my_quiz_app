import 'dart:async';

import 'package:flutter/material.dart';

import 'package:my_quiz_app/utlis/color_constants.dart';
import 'package:my_quiz_app/view/result_screen/result_screen.dart';

List correctAnswerList = [];

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({required this.selectedCategory, super.key});
  final Map<String, dynamic> selectedCategory;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestionIndex = 0;

  int? selectedAnswerIndex;
  int remainingTime = 30;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    remainingTime = 30; // Reset the timer to 30 seconds
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (remainingTime > 0) {
        setState(() {
          remainingTime--;
        });
      } else {
        timer.cancel();
        moveToNextQuestion();
      }
    });
  }

  void moveToNextQuestion() {
    timer?.cancel();
    if (currentQuestionIndex <
        widget.selectedCategory["subQuestion"].length - 1) {
      currentQuestionIndex++;
      startTimer(); // Restart the timer for the next question
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(
            resultcount: correctAnswerList.length,
            selectedCategory: widget.selectedCategory,
          ),
        ),
      );
    }
    setState(() {});
  }

  Color? boxColor;
  Color getColor(int currentOptionIndex) {
    if (selectedAnswerIndex != null && //to show the
        currentOptionIndex ==
            widget.selectedCategory["subQuestion"][currentQuestionIndex]
                ["answerIndex"]) {
      return ColorConstants.rightAnserColor;
    }
    if (selectedAnswerIndex == currentOptionIndex) {
      if (selectedAnswerIndex ==
          widget.selectedCategory["subQuestion"][currentQuestionIndex]
              ["answerIndex"]) {
        correctAnswerList.add(currentOptionIndex);

        return ColorConstants.rightAnserColor;
      } else {
        return ColorConstants.wrongAnswerColor;
      }
    } else {
      return ColorConstants.main_white;
    }
  }

  @override
  Widget build(BuildContext context) {
    int totalnoqs = widget.selectedCategory["subQuestion"].length;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Container(
            //   height: 30,
            //   decoration: BoxDecoration(
            //       border:
            //           Border.all(color: ColorConstants.main_white, width: 1),
            //       borderRadius: BorderRadius.circular(30)),
            // ),
            SizedBox(
              height: 40,
            ),
            CircleAvatar(
              radius: 20,
              backgroundColor: ColorConstants.main_white,
              child: Text(
                "$remainingTime",
                style: TextStyle(
                  color: ColorConstants.main_black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: 200,
              decoration: BoxDecoration(
                  color: ColorConstants.category_bg,
                  border:
                      Border.all(color: ColorConstants.main_white, width: 2),
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                  child: Text(widget.selectedCategory["subQuestion"]
                      [currentQuestionIndex]["question"])),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
                children: List.generate(
              widget
                  .selectedCategory["subQuestion"][currentQuestionIndex]
                      ["option"]
                  .length,
              (index) => InkWell(
                onTap: () {
                  if (selectedAnswerIndex == null) {
                    selectedAnswerIndex = index;
                    setState(() {
                      if (index ==
                          widget.selectedCategory["subQuestion"]
                              [currentQuestionIndex]["answerIndex"]) {
                        correctAnswerList.add(index);
                      }
                    });
                    print(selectedAnswerIndex);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                    height: 30,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: getColor(index), width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.selectedCategory["subQuestion"]
                              [currentQuestionIndex]["option"][index],
                          style: TextStyle(
                              color: ColorConstants.main_white,
                              fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.circle_outlined,
                          color: ColorConstants.main_white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )),
            selectedAnswerIndex == null //contition to show next btn
                ? SizedBox()
                : InkWell(
                    onTap: () {
                      selectedAnswerIndex = null;
                      moveToNextQuestion();
                      print(correctAnswerList);
                    },
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorConstants.main_white),
                      child: Text(
                        "NEXT",
                        style: TextStyle(
                            color: ColorConstants.main_black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
