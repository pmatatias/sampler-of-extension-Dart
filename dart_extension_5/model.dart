import 'package:flutter/material.dart';

class ModelA {
  final String name;
  final String subtl;
  final int id;
  final Color? color;
  const ModelA(
      {required this.id, required this.name, this.subtl = "", this.color});
}

class ModelB {
  final String name;
  final int id;
  const ModelB({required this.id, required this.name});

  @override
  bool operator ==(Object other) {
    return (other is ModelB) && other.name == name;
  }

  @override
  int get hashCode => id;
}
