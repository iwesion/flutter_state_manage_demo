import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/providercounter.dart';

class SecondProviderVC extends StatefulWidget {
  const SecondProviderVC({Key? key}) : super(key: key);

  @override
  _SecondProviderVCState createState() => _SecondProviderVCState();
}

class _SecondProviderVCState extends State<SecondProviderVC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter and provider'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Consumer<ProviderCounter>(
            //   builder: (context, count, child) {
            //     return Text("${count.count}");
            //   },
            // ),
            Text('测试打开上一行++')
          ],
        )));
  }
}
