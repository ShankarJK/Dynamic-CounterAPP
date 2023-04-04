// ignore_for_file: constant_identifier_names, unused_import

import 'package:dynamiccounter/Pages/AboutScreen/AboutScreen.dart';
import 'package:dynamiccounter/Pages/HomeScreen/HomeScreen.dart';

import 'NavigationHelper.dart';

enum Routes { HomeScreen, AboutScreen }

class Pages {
  Object? data;

  static final PageConfig homeScreenConfig = PageConfig(
      route: Routes.HomeScreen, build: (context) => const HomeScreen());

  static final PageConfig aboutScreenConfig = PageConfig(
    route: Routes.AboutScreen,
    build: (context) => AboutScreen(value: aboutScreenConfig.data),
  );
}
