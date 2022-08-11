import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1_route1/model/User.dart';
import 'package:getx1_route1/screen/normal/SecondPage.dart';

class NextNamedPage extends StatelessWidget {
  const NextNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next Argument Named Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
//            Text("전달받은 데이터는 : ${Get.arguments[0].toString()}"),
            Text("전달받은 데이터는 : ${(Get.arguments[0] as User).name}"),
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
