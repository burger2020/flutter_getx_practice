import 'package:flutter/material.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text('Provider', style: TextStyle(fontSize: 50)),
          const Text('0', style: TextStyle(fontSize: 50)),
          ElevatedButton(onPressed: () {}, child: const Text("+"))
        ],
      ),
    );
  }
}
