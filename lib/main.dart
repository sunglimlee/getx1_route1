import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1_route1/screen/Home.dart';
import 'package:getx1_route1/screen/normal/FirstPage.dart';
import 'package:getx1_route1/screen/named/UserNamedPage.dart';
import 'screen/named/FirstNamedPage.dart';
import 'screen/named/NextNamedPage.dart';
import 'screen/named/SecondNamedPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: Home(), // named route 를 할거기 때문에 더이상 필요가 없다.
      initialRoute: "/", // 이렇게 해주어야지 Getx 에서 named route 사용할 수 있다.
      routes: { // 기존 named 방식으로 사용할 시
        "/": (context) => Home(),
        "/FirstNamedPage" : (context) => FirstNamedPage(),
        "/SecondNamedPage" : (context) => SecondNamedPage(),
      },
      getPages: [ // 위의 routes 의 기존 named 방법 대신 GetX 가 사용하는 방법, 추가로 애니메이션도 바꿀 수 있다.
        GetPage(name: "/", page: () => Home(),transition: Transition.zoom), // 애니메이션 사용하고 싶으면 위의 기존 routes 없애라. 충돌난다.
        GetPage(name: "/FirstNamedPage", page: () => FirstNamedPage(),),
        GetPage(name: "/SecondNamedPage", page: () => SecondNamedPage()),
        GetPage(name: "/NextNamedPage", page: () => NextNamedPage()), // 아규먼트 넘길때, 즉 값을 넘길대
        GetPage(name: "/UserNamedPage/:uid", page: () => UserNamedPage()), // 파라미터 넘길때, 웹페이지처럼 UserId 를 넘길 때
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
