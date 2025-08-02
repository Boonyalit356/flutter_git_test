import 'package:flutter/material.dart';
import 'package:flutterapplication1/models/person.dart';
import 'package:flutterapplication1/screens/addform.dart';
import 'package:google_fonts/google_fonts.dart';

class item2 extends StatefulWidget {
  const item2({super.key});

  @override
  State<item2> createState() => _item2State();
}

class _item2State extends State<item2> {
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration( 
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey
                ),
                margin: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                padding: const EdgeInsets.all(40),
                child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(data[index].name,
                              style: GoogleFonts.kanit(
                                textStyle: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold ,color: Colors.white
                                )
                              ),), 
                            
                            Text(
                              "อายุ ${data[index].age}ปี: อาชีพ ${data[index].job}",
                              style: const TextStyle(fontSize: 20), 
                            ),
          
                             Image.asset("assets/images/img1.jpg",
                                width: 30,
                                height: 30,),
                          ],
                        
                      )
                    ],
          
                ),
              );
            },
          ),
        ),
      SizedBox(
        width: 100,
        height: 100,
        child: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (ctx) => const Addform()));
        }, icon: const Icon(Icons.add),
        color: Colors.blue,
        ),
      )
      ]

    );
  }
}