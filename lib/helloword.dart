import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

class HelloWordPage extends StatefulWidget with Store {
  const HelloWordPage({Key? key}) : super(key: key);

  @override
  _HelloWordPageState createState() => _HelloWordPageState();
}

class _HelloWordPageState extends State<HelloWordPage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("setState==${_counter}");
    return Scaffold(
      appBar: AppBar(
        title: const Text("系统setState"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              "${_counter}",
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
