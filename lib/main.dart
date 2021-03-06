import 'package:flutter/material.dart';
import 'package:state_manage_demo/home.dart';
import 'package:state_manage_demo/mobx/first_mobx_vc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeVC(),
    );
  }
}
