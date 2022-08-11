
## GetX 란?
GetX 는 미니 프레임 워크이다. 생산성, 성능, 조직화(MVC, MVVM 즉 Clean Code)


## 설정방법
###### pubspec.yaml 에서
dependencies : 
    get: ^3.24.0

###### main.dart 에서
void main() => runApp(GetMaterialApp(home: Home())); // 상태관리만 사용한다면 GetMaterialApp 을 사용하지 않아도 된다.



# 라우트 관리
- 기본 페이지 라우팅(기존 Navigator 와 GetX route 차이)
- Named 페이지 라우팅 (기존 Navigator 와 GetX route 차이)
- 페이지 전화 효과 적용 (Transition)
- arguments 전달 (데이터를 전달할 때)
- parameters 동적 링크 적용 (페이지에 해당하는 값을 전달할 때)

## 기본 페이지 라우팅
- 기존 Navigator
Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage()));
Navigator.of(context).pop(); // 뒤로가기
Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_) => Home()), (route)=> false;
- GetX route
Get.to(FirstPage()); 
Get.back(); // 뒤로가기
Get.offAll(Home()); // 이게 문제가 뭐냐면 Home() 이 새롭게 생성된다는 점이다. NamedTo 를 사용하면 그럴일이 없지.

## Named 페이지 라우팅
- 기존 방식 GetMaterialApp at main.dart
// initialRoute: "/" 밑에서 route 에서 "/" 를 정의하면 이부분은 필요없슴
route: {
    "/" : (context)=> Home(), 
    "/FirstNamedPage" : (context) => FirstNamedPage(), 
    "/SecondNamedPage" : (context) => SecondNamedPage(),
- 파일에서 사용할 때
Navigatorof(context)pushNamed("/FirstNamedPage");
- GetX in GetMaterialApp at main.dart
getPages: [
    GetPage(name: "/", page: ()=> Home()),
    GetPage(name: "/FirstNamePage", page: ()=> FirstNamedPage()),
    GetPage(name: "/SecondNamePage", page: ()=> SecondNamedPage()),
  ],
- 파일에서 사용할 때
Get.toNamed("/FirstNamedPage");
Get.offNamed("/SecondNamedPage"); // 현재 페이지를 없애고 두번째 페이지로 가자.
Get.offAllNamed("/");

## 페이지 전화 효과 적용 (Transition)
- GetMaterialApp 에서
GetPage(name: "/", page: () => Home(), transition: Transition.zoom), // 여러가지가 있다.

## argument 전달
- 보내는곳에서
  Get.toNamed("/next, arguments: "개남");
  Get.toNamed("/next, arguments: 3);
  Get.toNamed("/NextNamedPage", arguments: ["개남", "스티브"], ),
  Get.toNamed("/NextNamedPage", arguments: [ {"name": "개남", "age": 52} ], ), // 맵을 보낼 때
  onPressed: () => Get.toNamed("/NextNamedPage", arguments: [User(name: "스티브", age: 52) ], ), // User class 보낼 때
- 받는곳에서 
${Get.arguments}
Text("전달받은 데이터는 : ${Get.arguments[0].toString()}"),
Text("전달받은 데이터는 : ${Get.arguments[0]["age"]}"), // 맵을 보냈을 때 받는법
Text("전달받은 데이터는 : ${(Get.arguments as User).age}"), // User class 받을 때, 새로 시작해라. 안그러면 오류나더라.
Text("전달받은 데이터는 : ${(Get.arguments[0] as User).name}"), // User class 리스트로 받을 때, 새로 시작해라. 안그러면 오류나더라.


## url parameter 전달 
- 먼저 이렇게 세팅하고
GetPage(name: "/UserNamedPage/:uid", page: () => UserNamedPage()), // 파라미터 넘길때, 웹페이지처럼 UserId 를 넘길 때
- 보내는곳에서
onPressed: () => Get.toNamed("/UserNamedPage/28357"), 
- 받는곳에서
Text("${Get.parameters['uid']}"),
- 보내는곳에서
onPressed: () => Get.toNamed("/UserNamedPage/28357?name=개남&age=22"),
- 받는곳에서
Text("${Get.parameters['uid']}"),
Text("${Get.parameters['name']}님 안녕하세요."),
Text("${Get.parameters['age']}살 이시군요."),



# 상태관리 
- 단순 상태관리
- 반응형 상태관리

## 단순 상태관리
여기서부터는 getx2_simple_state 를 참조.



# 종속성 관리







# The largest heading
## The second largest heading
###### The smallest heading

1. First list item
    - First nested list item
        - Second nested list item


> Text that is a quote

**This is bold text**
*This text is italicized*
~~This was mistaken text~~
**This text is _extremely_ important**
***All this text is important***
<sub>This is a subscript text</sub>  
<sup>This is a superscript text</sup>

Use `git status` to list all new or modified files that haven't yet been committed.  // Quoting Code

Some basic Git commands are:
``` 
git status
git add
git commit
```

![This is an image](https://myoctocat.com/assets/images/base-octocat.svg)

# getx1_route1

getx with route

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
