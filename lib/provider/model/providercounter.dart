import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderCounter with ChangeNotifier {
  //1
  int _count;
  ProviderCounter(this._count);

  void add() {
    _count++;
    //通知用到Counter对象的widget刷新用的。
    notifyListeners(); //2
  }

  get count => _count; //3
}
