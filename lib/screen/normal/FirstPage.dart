import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1_route1/screen/normal/SecondPage.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Named Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () => Get.to(() => SecondPage()), // 정말 무지하게 간단하긴하다.
              child: Text("Get.to Named SecondPage"),
            ),
          ],
        ),
      ),
    );
  }
}
