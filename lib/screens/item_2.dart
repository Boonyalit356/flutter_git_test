import 'package:flutter/material.dart';

class item2 extends StatefulWidget {
  const item2({super.key});

  @override
  State<item2> createState() => _item2State();
}

class _item2State extends State<item2> {
  List data = ["สมชาย", "ก้อง", "ชาลี", "โจโจ้"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueGrey
          ),
          margin: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
          padding: const EdgeInsets.all(40),
          child: Text(data[index]),
        );
      },
    );
  }
}