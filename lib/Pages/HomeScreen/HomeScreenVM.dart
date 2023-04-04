import 'package:dynamiccounter/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:dynamiccounter/NavigationHelper/Routes.dart';
import 'package:dynamiccounter/Pages/HomeScreen/HomeScreenModel.dart';

class HomeScreenVM extends HomeScreenModel {
  void addValue() {
    var val = data + 1;
    setdata(data: val);
  }

  void navigateValue() {
    navigationStream
        .add(NavigatorPush(pageConfig: Pages.aboutScreenConfig, data: data));
  }
}
