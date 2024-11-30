import 'package:flutter/material.dart';
import 'package:my_quiz_app/utlis/color_constants.dart';
import 'package:my_quiz_app/view/home_screen/home_screen.dart';
import 'package:my_quiz_app/view/result_screen/result_screen.dart';
//import 'package:my_quiz_app/view/question_screen/question_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: ColorConstants.scaffold_bg),
      home: HomeScreen(),
    );
  }
}
