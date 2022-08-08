import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1_route1/screen/Home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SecondPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              //onPressed: () => Navigator.of(context).pop(), // 이게 기존 방식
              onPressed: () => Get.back(), // 정말 무지하게 간단하긴하다. // context 종속이 전혀 없다.
              child: Text("뒤로 이동"),
            ),
            ElevatedButton(
              onPressed: () => Get.offAll(() => const Home()), // 정말 무지하게 간단하긴하다.
              child: Text("홈으로 이동"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder:(context) => Home()),(route) => false,
                );
              },
              child: Text("기존방법으로 홈으로 이동"),
            ),
          ],
        ),
      ),
    );
  }
}
