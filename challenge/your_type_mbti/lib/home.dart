import 'package:flutter/material.dart';

import 'package:your_type_mbti/question_page.dart';
import 'package:your_type_mbti/util/app_color.dart';
import 'package:your_type_mbti/util/app_textstyle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "유어타입",
              style: AppTextstyle.koPtBold45(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "MBTI",
                  style: AppTextstyle.koPtRegular30(),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.favorite,
                  size: 30,
                  color: Color(0xFFF7797D),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/main.png',
              width: 320,
            ),
           const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const QuestionPage()));
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: AppColor.pinkRed,
                  // primary: Color(0xFFF7797D),
                  textStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Container(
                  width: 180,
                  height: 54,
                  child: Center(
                    child: Text(
                      "테스트 시작",
                      textAlign: TextAlign.center,
                      style: AppTextstyle.koPtSemiBold20(color: Colors.white),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}