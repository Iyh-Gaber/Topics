import 'package:flutter/material.dart';

class SimpleWidgets extends StatefulWidget {
  const SimpleWidgets({super.key});

  @override
  State<SimpleWidgets> createState() => _SimpleWidgetsState();
}

class _SimpleWidgetsState extends State<SimpleWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///TODO The AppBar Widget
    
      appBar: AppBar(
        elevation: 0,
backgroundColor: Colors.teal,
centerTitle: true,
leading: 
 Icon(Icons.ac_unit_sharp,
 
 )

,
title: Text("center text",
style: TextStyle(color: Colors.yellowAccent),
),
actions: [
  IconButton(onPressed: (){}, icon: Icon(Icons.menu))
],

      ),
   
   body: Column(
    children: [
               
               Center(
                 child: Text('data',
                 style: TextStyle(
                 color: Colors.green,
                 fontSize: 33,
                 fontWeight: FontWeight.bold,
                 decoration: TextDecoration.lineThrough,
                 decorationColor: Colors.red,
                 decorationStyle: TextDecorationStyle.dashed,
                  
                 ),
                 
                 ),
               )


    ],
   ),
   
   
    );
  }
}