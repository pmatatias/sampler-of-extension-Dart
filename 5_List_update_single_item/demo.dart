
import 'package:flutter/material.dart';

import 'list_update.dart';
import 'model.dart';

class ListUpdateDemo extends StatefulWidget {
  const ListUpdateDemo({super.key});

  @override
  State<ListUpdateDemo> createState() => _ListUpdateDemoState();
}

class _ListUpdateDemoState extends State<ListUpdateDemo> {
  /// generate list with length 30
  /// this will same as:
  ///  List<ModelA> myList  = [
  ///  ModelA(id:1,name:"Lorem Ipsum 1"),
  ///  ModelA(id:2,name:"Lorem Ipsum 2"),
  ///  ....
  ///  ....
  ///  ModelA(id:30,name:"Lorem Ipsum 30"),
  /// ];
  ///
  List<ModelA> myList = List.generate(
      30,
      (index) => ModelA(
          id: index,
          name: 'Lorem ipsum dolor sit amet $index',
          subtl: "em accusantium doloremque laudantium"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFF264653),
      appBar: AppBar(title: const Text("Dart Extension #5")),
      body: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context, index) => Card(
          color: myList[index].color ?? const Color(0xFFd8e2dc),
          child: ListTile(
            iconColor: const Color(0xFF2a9d8f),
            style: ListTileStyle.drawer,
            leading: const FlutterLogo(size: 36.0),
            title: Text(myList[index].name),
            subtitle: Text(myList[index].subtl),
            trailing: const Icon(Icons.yard_outlined),
            onTap: () {
              /// here we will use the extension method
              myList.update(
                  index,
                  ModelA(
                      id: index,
                      name: "This is updated data",
                      subtl: "Sed ut perspiciatis unde omnis iste natus",
                      color: const Color(0xffffd670)));
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
