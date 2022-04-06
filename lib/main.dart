import 'package:flutter/material.dart';
import 'package:flutter_getx_practice/src/home.dart';
import 'package:flutter_getx_practice/src/page/normal/first.dart';
import 'package:flutter_getx_practice/src/page/normal/next.dart';
import 'package:flutter_getx_practice/src/page/normal/second.dart';
import 'package:flutter_getx_practice/src/page/normal/user.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      // routes: {
      //   '/': (context) => const Home(),
      //   '/first': (context) => const FirstPage(),
      //   '/second': (context) => const SecondPage(),
      // },
      getPages: [
        GetPage(
            name: '/',
            page: () => const Home(),
            transition: Transition.zoom,
            transitionDuration: const Duration(milliseconds: 100)),
        GetPage(
            name: '/first',
            page: () => const FirstPage(),
            transition: Transition.zoom,
            transitionDuration: const Duration(milliseconds: 100)),
        GetPage(
            name: '/second',
            page: () => const SecondPage(),
            transition: Transition.zoom,
            transitionDuration: const Duration(milliseconds: 100)),
        GetPage(
            name: '/user/:uid',
            page: () => const UserPage(),
            transition: Transition.zoom,
            transitionDuration: const Duration(milliseconds: 100)),
      ],
    );
  }
}
