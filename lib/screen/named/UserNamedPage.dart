import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1_route1/screen/normal/SecondPage.dart';

class UserNamedPage extends StatelessWidget {
  const UserNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User Parameter Named Page, (동적 URL)"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("전달받은 데이터는 : ${Get.parameters['uid']}"),
            Text("전달받은 데이터는 : ${Get.parameters['name']}"),
            Text("전달받은 데이터는 : ${Get.parameters['age']}"),
            ElevatedButton(
              child: Text("뒤로 이동"),
              onPressed: () => Get.back(), // 정말 무지하게 간단하긴하다.
            ),
          ],
        ),
      ),
    );
  }
}
