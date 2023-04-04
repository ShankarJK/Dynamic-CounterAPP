import 'package:dynamiccounter/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:dynamiccounter/NavigationHelper/NavigationHelper.dart';
import 'package:flutter/material.dart';

import 'HomeScreenVM.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeScreenVM _ins = HomeScreenVM();

  /* Invoke the initState() */
  @override
  void initState() {
    super.initState();
    // Using instance of class HomePageVM access the navigationstream and create a lister event
    _ins.navigationStream.stream.listen((event) {
      // Checks for the condition event is NavigatorPush
      if (event is NavigatorPush) {
        // Using context.Push(), pass the event pageconfig and data
        context.push(pageConfig: event.pageConfig, data: event.data);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
                radius: 45,
                child: Observer(builder: (context) {
                  return Text(_ins.data.toString());
                })),
          ),
          const SizedBox(
            height: 70,
          ),
          ElevatedButton(onPressed: _ins.addValue, child: const Text("Add"))
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _ins.navigateValue,
        label: const Text("Go To Value Page"),
      ),
    );
  }
}
