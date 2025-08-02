import 'package:flutter/material.dart';
import 'package:flutterapplication1/screens/Home.dart';
import 'package:flutterapplication1/screens/addform.dart';
import 'package:flutterapplication1/screens/item.dart';

import 'package:flutterapplication1/screens/item_2.dart';

void main() {
  runApp(Myapp());
} 

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "myhome",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("จองจอง"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: const item2(),
      ),
    );
  }
}
