import 'dart:async';

import 'package:dynamiccounter/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';


part 'AboutScreenModel.g.dart';

class AboutScreenModel = _AboutScreenModelBase
    with _$AboutScreenModel, NavigationMixin;

// Create a abstract class _AboutScreenModelBase with mixin Store

abstract class _AboutScreenModelBase with Store {
  // Create a variable data with int datatype and assign the value 35 to it and make the variable as observable
  @observable
  int number = 0;

}
