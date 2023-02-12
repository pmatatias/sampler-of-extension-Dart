import 'package:flutter/material.dart';

import 'responsive_context.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {

@override
Widget build(BuildContext context) {
  return Container(
    child: context.responsive<Widget>(
      mobileWidget, // default 
      md: tabletWidget, // medium
      lg: desktopWidget, // large
    ),
  );
}
    Widget mobileWidget = Column(children: [
    Expanded(
      flex: 2,
      child: Container(
        alignment: Alignment.center,
        color: Colors.blueAccent,
        child: const Text('Mobile', style: TextStyle(fontSize: 24)),
      ),
    ),
    Expanded(
      flex: 5,
      child: Container(
        alignment: Alignment.center,
        color: Colors.grey,
        child: const Text('Mobile', style: TextStyle(fontSize: 24)),
      ),
    ),
    Expanded(
      flex: 7,
      child: Container(
        alignment: Alignment.center,
        color: Colors.green,
        child: const Text('Mobile', style: TextStyle(fontSize: 24)),
      ),
    ),
  ]);
  Widget tabletWidget = Column(children: [
    Expanded(
      flex: 5,
      child: Row(children: [
        Expanded(
          flex: 3,
          child: Container(
            alignment: Alignment.center,
            color: Colors.blueAccent,
            child: const Text('Tablet', style: TextStyle(fontSize: 24)),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            alignment: Alignment.center,
            color: Colors.grey,
            child: const Text('Tablet', style: TextStyle(fontSize: 24)),
          ),
        ),
      ]),
    ),
    Expanded(
      flex: 3,
      child: Container(
        alignment: Alignment.center,
        color: Colors.green,
        child: const Text('Tablet', style: TextStyle(fontSize: 24)),
      ),
    ),
  ]);
  Widget desktopWidget = Row(children: [
    Expanded(
      flex: 4,
      child: Container(
        alignment: Alignment.center,
        color: Colors.blueAccent,
        child: const Text('Desktop', style: TextStyle(fontSize: 24)),
      ),
    ),
    Expanded(
      flex: 7,
      child: Container(
        alignment: Alignment.center,
        color: Colors.grey,
        child: const Text('Desktop', style: TextStyle(fontSize: 24)),
      ),
    ),
    Expanded(
      flex: 10,
      child: Container(
        alignment: Alignment.center,
        color: Colors.green,
        child: const Text('Desktop', style: TextStyle(fontSize: 24)),
      ),
    ),
  ]);
}
