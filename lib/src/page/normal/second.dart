import 'package:flutter/material.dart';
import 'package:flutter_getx_practice/src/home.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("두번째 화면")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pop();
                  Get.back();
                },
                child: const Text("뒤로 이동")),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_) => const Home()), (route) => false);
                  Get.offAll(const Home());
                },
                child: const Text("홈으로 이동")),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (_) => const Home()), (route) => false);
                  Get.offAllNamed('/');
                },
                child: const Text("홈으로 이동 - named"))
          ],
        ),
      ),
    );
  }
}
