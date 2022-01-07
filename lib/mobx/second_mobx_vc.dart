import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'model/mobxcounter.dart';

class SecondMobxVC extends StatefulWidget {
  const SecondMobxVC({Key? key}) : super(key: key);

  @override
  _SecondMobxVCState createState() => _SecondMobxVCState();
}

class _SecondMobxVCState extends State<SecondMobxVC> {
  @override
  Widget build(BuildContext context) {
    print("SecondVC1");
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter and MobX'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Observer(
                builder: (_) => Text(
                      "${mobxcounter.value}",
                      style: const TextStyle(fontSize: 30.0),
                    )),
            TextButton(
              onPressed: () => {mobxcounter.value += 2},
              child:
                  const Text('直接改变counter的值', style: TextStyle(fontSize: 30.0)),
            ),
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: mobxcounter.increment,
            ),
          ]),
        ));
  }
}
