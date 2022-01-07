import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderCounter with ChangeNotifier {
  //1
  int num = 10;
  ProviderCounter(this.num);

  void add() {
    num++;
    //通知用到Counter对象的widget刷新用的。
    notifyListeners(); //2
  }
}
