import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:messenger/utils/route/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Messenger",
      getPages: appRoute,
      initialRoute: "/",
      debugShowCheckedModeBanner: false, // 이 부분을 추가해주세요
    );
  }
}
