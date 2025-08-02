import 'package:flutter/material.dart';
import 'package:flutterapplication1/screens/item_2.dart';

class Addform extends StatefulWidget {
  const Addform({super.key});

  @override
  State<Addform> createState() => _AddformState();
}

class _AddformState extends State<Addform> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "myhome",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("แบบฟอมร์ม"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Padding(padding: const EdgeInsets.all(15),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  maxLength: 20,
                  decoration: const InputDecoration(
                    label: Text("ขื่อ", style: TextStyle(fontSize: 20 ),)
                  ),
                ),

                TextFormField(
                  maxLength: 20,
                  decoration: const InputDecoration(
                    label: Text("อายุ", style: TextStyle(fontSize: 20 ),)
                  )
                ),

                SizedBox(height: 30,),
                FilledButton(onPressed:(){}, child: 
                  Text("บันทึก", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.blueAccent
                  ),
                ),
                FilledButton(onPressed:(){
                   
                   Navigator.push(context, MaterialPageRoute(builder: (ctx) => const item2()));
                  }, child: 
                  Text("ไปยังหน้าแรก", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.blueAccent
                  ),
                 

                )


              ],
            )),   
        ),
      ),
    );
  }
}