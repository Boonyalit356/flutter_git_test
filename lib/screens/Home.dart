
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network("https://storage.googleapis.com/cms-storage-bucket/lockup_flutter_horizontal.c823e53b3a1a7b0d36a9.png",
        width: 150,
        height: 150,
        ),
        SizedBox(height: 30,)
        ,
        Image.asset("assets/images/img1.jpg",
        width: 150,
        height: 150,),

        TextButton(onPressed: (){
          print("text button click!!!");
          afn();
        }, child: Text("click",style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),)),

        SizedBox(height: 30,),
        FilledButton(
          style: FilledButton.styleFrom(
            foregroundColor: Colors.pinkAccent,
            backgroundColor: Colors.yellow
          ),

          onPressed: (){
          print("click filled BUtton");
          }, 
        child: Text("click",style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),) )
      ],
    );
  }
}

void afn(){
  print("Hello world");
}

