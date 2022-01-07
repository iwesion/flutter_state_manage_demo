import 'package:flutter/material.dart';
import 'package:state_manage_demo/helloword.dart';
import 'package:state_manage_demo/mobx/first_mobx_vc.dart';
import 'package:state_manage_demo/provider/first_provider_vc.dart';

class HomeVC extends StatelessWidget {
  const HomeVC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter and MobX'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const HelloWordPage();
                      }),
                    );
                  },
                  child: const Text("系统setState方法")),
              TextButton(
                  onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const FirstMobxVC();
                          }),
                        )
                      },
                  child: const Text("mobx")),
              TextButton(
                  onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const FirstProviderVC();
                          }),
                        )
                      },
                  child: const Text("provider")),
            ],
          ),
        ));
  }
}
