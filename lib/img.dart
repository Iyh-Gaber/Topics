import 'package:flutter/material.dart';

class Img extends StatelessWidget {
  @override
 

  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Scaffold(
     
     body: Column(children: [
     
      Image.asset('assets/images/t1.jpg',
      width: 500,
      height: 200,
      fit: BoxFit.fitWidth,
      
      ),
      //Image.network('src'),
     
SizedBox(height: 22,),
Container(
  height: 111,
  width: 333,
  decoration: BoxDecoration(
    boxShadow: [
      BoxShadow(color: Colors.black,blurRadius: 2,spreadRadius: 2 )
    ],
    borderRadius: BorderRadius.circular(22),
    color: Colors.amber,
    image:  DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage('assets/images/t1.jpg',
    
    )),

  ),
),
SizedBox(height: 22,),
///TODO لو عايزه احط صورة بس وخلاص بدون ديكوريشن غير كدا استخدم Container
     ClipRRect(
   
borderRadius: BorderRadiusGeometry.circular(22),
child:Image.asset('assets/images/t1.jpg',
height: 111,
  width: 333,
  fit: BoxFit.cover,
),

     ),
SizedBox(height: 22,),
   CircleAvatar(
    backgroundImage: AssetImage('assets/images/t1.jpg'),

    radius: 100,
   ),


     ],),
     
     floatingActionButton: FloatingActionButton(
      backgroundColor: const Color.fromARGB(255, 124, 63, 63),
      foregroundColor: Colors.white,
      onPressed: (){},
         child: Icon(Icons.add,
         weight: 22,
         size: 33,
        // color: Colors.amber,
         ),
     ),
     ),
   );
  }
}
