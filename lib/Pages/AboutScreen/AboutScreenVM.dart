import 'package:dynamiccounter/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:dynamiccounter/Pages/AboutScreen/AboutScreenModel.dart';

class AboutScreenVM extends AboutScreenModel{
  AboutScreenVM({required int number}){
    this.number= number;
  }

  void goback(){
    navigationStream.add(NavigatorPop());
  }
}