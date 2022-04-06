import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Provider', style: TextStyle(fontSize: 50)),
          Consumer(builder: (_, snapshot, child) {
            return Text("${snapshot.count}")
          })
          const Text('0', style: TextStyle(fontSize: 50)),
          ElevatedButton(onPressed: () {}, child: const Text("+"))
        ],
      ),
    );
  }
}
