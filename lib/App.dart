import 'package:dynamiccounter/NavigationHelper/NavigationHelper.dart';
import 'package:flutter/material.dart';


import 'NavigationHelper/Routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoute(initialPage: Pages.homeScreenConfig, initialPageData: null).onGenerateRoute,
    );
  }
}