import 'package:flutter/material.dart';
import 'package:flutter_getx_practice/src/page/normal/second.dart';
import 'package:get/get.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("first page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (_) => const FirstPage()));
                  Get.to(const SecondPage());
                },
                child: const Text("두번째 화면")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const FirstPage()));
                  Get.offNamed('/second');
                  Get.off(const SecondPage());
                },
                child: const Text("두번째 화면"))
          ],
        ),
      ),
    );
  }
}
