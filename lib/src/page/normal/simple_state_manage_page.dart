import 'package:flutter/material.dart';
import 'package:flutter_getx_practice/src/page/normal/state/with_get_x.dart';
import 'package:flutter_getx_practice/src/page/normal/state/with_provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("단순 상태 관리")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Expanded(child: WithGetX()),
            Expanded(child: WithProvider()),
          ],
        ),
      ),
    );
  }
}
