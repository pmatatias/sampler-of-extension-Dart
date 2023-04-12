import 'abs_pos_extension.dart';
import 'package:flutter/material.dart';

class DartExtension4 extends StatefulWidget {
  const DartExtension4({
    super.key,
  });

  @override
  State<DartExtension4> createState() => _DartExtension4State();
}

class _DartExtension4State extends State<DartExtension4> {
  final containerKey = GlobalKey();
  double _x = 10;
  double _y = 10;

  Rect? _rect;

  Widget _buildRow(String param, String value) => Row(
        children: [
          SizedBox(width: 120, child: Text(param)),
          Expanded(child: Text(value)),
        ],
      );
  @override
  Widget build(BuildContext context) {
    final AppBar appbar = AppBar(
      title: const Text("Dart Extension 4"),
    );
    return GestureDetector(
      onTapDown: (events) {
        print("events: ${events.globalPosition}");

        _x = events.globalPosition.dx;
        _y = events.globalPosition.dy -
            (appbar.preferredSize.height + MediaQuery.of(context).padding.top);
        setState(() {});
      },
      onTapUp: (details) {
        _rect = containerKey.globalPaintBounds;
        setState(() {
          
        });
      },
      child: Scaffold(
        appBar: appbar,
        body: Stack(
          children: [
            Positioned(
              top: _y,
              left: _x,
              width: 30,
              height: 30,
              child: Container(key: containerKey, color: Colors.red),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildRow("Status bar height",
                      ": ${MediaQuery.of(context).padding.top} "),

                  const Divider(),
                  _buildRow(
                      "AppBar height", ": ${appbar.preferredSize.height}"),
                  const Divider(),
                  _buildRow("X coordinate", ": $_x"),
                  const Divider(),
                  _buildRow("Y coordinate", ": $_y"),
                  const Divider(),
                  _buildRow("Widget corner", ": $_rect"),
                  // Container(
                  //   key: containerKey,
                  //   color: Colors.amber,
                  //   padding: const EdgeInsets.all(12),
                  //   child: Text(containerKey.globalPaintBounds.toString()),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
