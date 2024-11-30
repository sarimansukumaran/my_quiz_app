import 'package:flutter/material.dart';
import 'package:my_quiz_app/dummyDb.dart';
import 'package:my_quiz_app/utlis/color_constants.dart';
import 'package:my_quiz_app/view/question_screen/question_Screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildTopProfileSection(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Lets play",
                style: TextStyle(
                    color: ColorConstants.main_white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount: DummyDb.mainQuizListDb.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 25,
                      childAspectRatio: 2 / 2.5,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => CustomCategoryCard(
                        subImage: DummyDb.mainQuizListDb[index]["image"],
                        subjectName: DummyDb.mainQuizListDb[index]["sub"],
                        noOfQus: DummyDb
                            .mainQuizListDb[index]["subQuestion"].length
                            .toString(),
                        index: index,
                      ))
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _buildTopProfileSection() {
    return PreferredSize(
      preferredSize: Size.fromHeight(100),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hi,John",
                  style: TextStyle(
                      color: ColorConstants.main_white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
                Text(
                  "Let's make this day productive",
                  style: TextStyle(
                      color: ColorConstants.main_white,
                      fontWeight: FontWeight.w200,
                      fontSize: 12),
                )
              ],
            ),
            Spacer(),
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(""),
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
      ),
    );
  }
}

class CustomCategoryCard extends StatelessWidget {
  CustomCategoryCard({
    required this.subImage,
    required this.subjectName,
    required this.noOfQus,
    required this.index,
    super.key,
  });
  String subImage;
  String subjectName;
  String noOfQus;
  int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => QuestionScreen(
                      selectedCategory: DummyDb.mainQuizListDb[index],
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
            color: ColorConstants.category_bg,
            border: Border.all(color: ColorConstants.main_white, width: 2),
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 90,
              width: 70,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(subImage), fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              subjectName,
              style: TextStyle(
                  color: ColorConstants.main_white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
            Text(
              "$noOfQus Questions",
              style: TextStyle(
                  color: ColorConstants.main_white,
                  fontWeight: FontWeight.w200),
            )
          ],
        ),
      ),
    );
  }
}
