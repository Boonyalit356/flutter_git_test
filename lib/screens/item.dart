import 'package:flutter/material.dart';

class item extends StatefulWidget {
  const item({super.key});

  @override
  State<item> createState() => _itemState();
}

class _itemState extends State<item> {
  int quantity = 5;

  void addQuantity(){
    setState(() {
      quantity++;
    });
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$quantity",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
         const SizedBox(height: 10,),
          OutlinedButton(onPressed: addQuantity, 
          child:  const Text("+",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)),

          const SizedBox(height: 10,),
          OutlinedButton(onPressed: (){
              setState(() {
                if(quantity == 0){
                  quantity = 0;
                }else{
                  quantity--;}
                  

              });
          }, 
          child:  const Text("-",style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),))
          ],
      ),
    );
  }
}
