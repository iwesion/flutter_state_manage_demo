import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:state_manage_demo/helloword.dart';
import 'package:state_manage_demo/mobx/second_mobx_vc.dart';
import 'model/mobxcounter.dart';

class FirstMobxVC extends StatelessWidget {
  const FirstMobxVC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("触发了build");
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter and MobX'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                '第一页',
                style: TextStyle(fontSize: 30.0),
              ),
              Observer(
                  builder: (_) => Text(
                        '${mobxcounter.value}',
                        style: const TextStyle(fontSize: 30.0),
                      )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton.icon(
                      onPressed: mobxcounter.increment,
                      icon: const Icon(Icons.add),
                      label: const Text('加')),
                  TextButton.icon(
                      onPressed: mobxcounter.decrement,
                      icon: const Icon(Icons.remove),
                      label: const Text('减'))
                ],
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const SecondMobxVC();
                      }),
                    );
                  },
                  child: const Text("下一页")),
              TextButton(
                  onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const HelloWordPage();
                          }),
                        )
                      },
                  child: const Text("用setState方法")),
            ],
          ),
        ));
  }
}
