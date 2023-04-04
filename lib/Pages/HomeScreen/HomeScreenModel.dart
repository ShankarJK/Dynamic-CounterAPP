import 'package:dynamiccounter/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:mobx/mobx.dart';

part 'HomeScreenModel.g.dart';

class HomeScreenModel = _HomeScreenModelBase
    with _$HomeScreenModel, NavigationMixin;

// Create a abstract class _HomeScreenModelBase with mixin Store

abstract class _HomeScreenModelBase with Store {
  // Create a variable data with int datatype and assign the value 35 to it and make the variable as observable
  @observable
  int data = 0;

  @action
  void setdata({required int data}) {
    this.data = data;
  }
}
