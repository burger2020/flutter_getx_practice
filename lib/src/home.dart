import 'package:flutter/material.dart';
import 'package:flutter_getx_practice/src/page/normal/first.dart';
import 'package:flutter_getx_practice/src/page/normal/simple_state_manage_page.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("main page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => const FirstPage()));
                  Navigator.pushNamed(context, "asd", arguments: 'asd');
                  Get.to(const FirstPage());
                },
                child: const Text("첫번째 화면 - to")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/first");
                  Get.toNamed('/first');
                },
                child: const Text("첫번째 화면 - toNamed")),
            ElevatedButton(
                onPressed: () {
                  // Get.to(const FirstPage(), arguments: "arg");
                  Get.toNamed('/next', arguments: 3);
                },
                child: const Text("arguments 전달")),
            ElevatedButton(
                onPressed: () {
                  // Get.to(const FirstPage(), arguments: "arg");
                  Get.toNamed('/user/29393');
                },
                child: const Text("동적 url")),
            ElevatedButton(
                onPressed: () {
                  Get.to(const SimpleStateManagePage());
                },
                child: const Text("단순 상태 관리"))
          ],
        ),
      ),
    );
  }
}
