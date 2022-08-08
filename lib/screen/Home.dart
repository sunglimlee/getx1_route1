import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1_route1/screen/normal/FirstPage.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: Text("일반적인 라우트"),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder:(context) => FirstPage()),
                );
              },
            ),
            ElevatedButton(
              child: Text("Get.to 라우트"),
              onPressed: () => Get.to(() => FirstPage()), // 정말 무지하게 간단하긴하다.
            ),
            ElevatedButton(
              child: Text("일반적인 Named 라우트"),
              onPressed: () {
                Navigator.of(context).pushNamed("/FirstNamedPage");
              },
            ),
            ElevatedButton(
              child: Text("Get.toNamed 라우트"),
              onPressed: () => Get.toNamed("/FirstNamedPage"), // 정말 무지하게 간단하긴하다.
            ),
            ElevatedButton(
              child: Text("Get.toNamed 라우트, 아규먼트 전달"),
              // 여러가지 종류의 데이터를 넘기고 싶을때
              // https://stackoverflow.com/questions/64906620/flutter-passing-multiple-data-with-getx
              onPressed: () => Get.toNamed("/NextNamedPage", arguments: ["개남", "스티브"], ), // 정말 무지하게 간단하긴하다.
            ),
            ElevatedButton(
              child: Text("Get.toNamed 라우트, 파라미터 전달, (동적 URL) "),
              // 유저에 따른 값을 변경하는 것처럼 파라미터를 이용해서 넘겨주고 싶을 때
              onPressed: () => Get.toNamed("/UserNamedPage/234567", ), // 정말 무지하게 간단하긴하다.
            ),
            ElevatedButton( // 물음표도 들어갔을 채 처리
              child: Text("Get.toNamed 라우트, Question 값을 파라미터 전달, (동적 URL) "),
              // 유저에 따른 값을 변경하는 것처럼 파라미터를 이용해서 넘겨주고 싶을 때
              onPressed: () => Get.toNamed("/UserNamedPage/234567?name=스티브&age=52", ), // 정말 무지하게 간단하긴하다.
            ),
          ],
        ),
      ),
    );
  }
}
