import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("next page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${Get.parameters['uid']}"),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pop();
                  Get.back();
                },
                child: const Text("뒤로 이동")),
          ],
        ),
      ),
    );
  }
}
