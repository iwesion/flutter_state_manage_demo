import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_manage_demo/provider/second_provider_vc.dart';

import 'model/providercounter.dart';

class FirstProviderVC extends StatefulWidget {
  const FirstProviderVC({Key? key}) : super(key: key);

  @override
  _FirstProviderVCState createState() => _FirstProviderVCState();
}

class _FirstProviderVCState extends State<FirstProviderVC> {
  @override
  Widget build(BuildContext context) {
    print("1111");
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter and provider'),
        ),
        body: Center(
          child: Consumer<ProviderCounter>(builder: (context, count, child) {
            return Column(
              children: [
                Text("${count.num}"),
                TextButton(
                    onPressed: () {
                      count.add();
                    },
                    child: const Text("添加")),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const SecondProviderVC();
                        }),
                      );
                    },
                    child: const Text("下一页")),
              ],
            );
          }),
        ));
  }
}
