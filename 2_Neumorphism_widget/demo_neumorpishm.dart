/// you can see on this dartpad
/// https://dartpad.dev/?id=d80516dc3127fc29663ee5b7c245547a
///
/// article on medium :
/// onprogress

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE0E5EC),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SizedBox(
            width: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Neumorphism',
                  style: TextStyle(
                      fontSize: 50,
                      letterSpacing: 10,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    BuildBtn(icon: Icons.skip_previous),
                    BuildBtn(icon: Icons.play_arrow),
                    BuildBtn(icon: Icons.skip_next),
                    BuildBtn(
                      icon: Icons.shuffle_rounded,
                      iconColor: Colors.green,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFE0E5EC),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(Icons.share),
                            SizedBox(
                              width: 12,
                            ),
                            Text("Share")
                          ]),
                    ).addNeumorphism(
                        bottomShadowColor: const Color(0xFFA3B1C6),
                        topShadowColor: Colors.white),
                    const BuildBtn(
                      icon: Icons.bookmark,
                      borderRadius: 12,
                      iconColor: Color(0XFF5081ff),
                    ),
                    const BuildBtn(
                      icon: Icons.favorite,
                      borderRadius: 12,
                      iconColor: Color(0XFFec7cda),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                const Divider(),
                const SizedBox(height: 10),
                const Text(
                  'Flutter Widget',
                  style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 10,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
      ),
    );
  }
}

class BuildBtn extends StatelessWidget {
  final IconData icon;
  final String name;
  final Color? iconColor;
  final double borderRadius;
  const BuildBtn(
      {super.key,
      this.borderRadius = 30,
      this.iconColor,
      this.icon = Icons.cabin,
      this.name = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: const Color(0xFFE0E5EC),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      padding: const EdgeInsets.all(8),
      child: Icon(
        icon,
        color: iconColor,
      ),
    ).addNeumorphism(
        bottomShadowColor: const Color(0xFFA3B1C6),
        borderRadius: borderRadius,
        topShadowColor: Colors.white);
  }
}

extension Neumorphism on Widget {
  addNeumorphism({
    double borderRadius = 10.0,
    Offset offset = const Offset(5, 5),
    double blurRadius = 10,
    Color topShadowColor = Colors.white60,
    Color bottomShadowColor = const Color(0x26234395),
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        boxShadow: [
          BoxShadow(
            offset: offset,
            blurRadius: blurRadius,
            color: bottomShadowColor,
          ),
          BoxShadow(
            offset: Offset(-offset.dx, -offset.dx),
            blurRadius: blurRadius,
            color: topShadowColor,
          ),
        ],
      ),
      child: this,
    );
  }
}
