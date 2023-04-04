import 'package:dynamiccounter/NavigationHelper/Mixin/NavigationMixin.dart';
import 'package:dynamiccounter/NavigationHelper/NavigationHelper.dart';
import 'package:dynamiccounter/Pages/AboutScreen/AboutScreenVm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key, required this.value});
  final int value;
  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  late final AboutScreenVM _instance = AboutScreenVM(number: widget.value);
  
  /* Invoke the initState() */
  @override
  void initState() {
    super.initState();

    // Using instance of class AboutPageVM access the navigationstream and create a lister event
    _instance.navigationStream.stream.listen((event) {
      // Checks for the condition event is NavigatorPop
      if (event is NavigatorPop) {
        // Invoke the pop() by context.pop
        context.pop();
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Value"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
                radius: 45,
                child: Observer(builder: (context) {
                  return Text(_instance.number.toString());
                })),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed:_instance.goback,
        label: const Text("Go To AboutPage"),
      ),
    );
  }
}
