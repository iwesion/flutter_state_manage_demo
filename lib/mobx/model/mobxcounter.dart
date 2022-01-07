import 'package:mobx/mobx.dart';
part 'mobxcounter.g.dart';

class MobxCounter = _MobxCounter with _$MobxCounter;

final MobxCounter mobxcounter = MobxCounter();

abstract class _MobxCounter with Store {
  @observable
  int value = 10;
  @action
  void increment() {
    value++;
  }

  @action
  void decrement() {
    value--;
  }
}
