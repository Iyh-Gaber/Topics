import 'package:flutter/material.dart';

class Burger extends StatelessWidget {
  const Burger({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 212, 202),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 241, 206, 193),
        leading: Icon(
          Icons.arrow_back_ios,
          color: const Color.fromARGB(255, 162, 118, 102),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(22),
              child: Image.asset(
                'assets/images/t1.jpg',

                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 18),
            Text(
              'Burger Mix Combo ',
              style: TextStyle(
                fontSize: 29,
                color: const Color.fromARGB(255, 182, 136, 120),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 18),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: const Color.fromARGB(255, 203, 148, 128),
                  size: 30,
                ),
                SizedBox(width: 11),
                Text('4(5)'),
                SizedBox(width: 152),
                Container(
                  padding: EdgeInsets.all(7),
                  height: 55,
                  width: 122,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: const Color.fromARGB(255, 231, 152, 124),
                  ),
                  child: Row(children: [
                    
                    CustomCircleAvatar(color: const Color.fromARGB(255, 155, 118, 104), icon: Icons.abc, background: const Color.fromARGB(255, 233, 196, 183),),
                   SizedBox(width: 4,),
                    Text('1',style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                 
                ),),
                  SizedBox(width: 4,),
                    CustomCircleAvatar(color: const Color.fromARGB(255, 250, 246, 245), icon: Icons.add, background: const Color.fromARGB(255, 146, 97, 79),),
                    
                    ]),
                
                
                ),
              ],
            ),
       
       SizedBox(height: 18),
            Text(
              'Description ',
              style: TextStyle(
                fontSize: 22,
                color: const Color.fromARGB(255, 137, 104, 93),
                fontWeight: FontWeight.bold,
              ),
            ),
          SizedBox(height: 11),
            Text(
              'two Burger + fries + one  drinke + 30% sale ',
              style: TextStyle(
                fontSize: 16,
                color:  const Color.fromARGB(255, 127, 125, 125),
              
              ),
            ),
SizedBox(height: 22),
            Row(
              children: [
                Text(
                  'EGP ',
                  style: TextStyle(
                    fontSize: 22,
                    color:  const Color.fromARGB(255, 52, 51, 51),
                  
                  ),
                ),
                SizedBox(width: 177,),
               Container(
                  padding: EdgeInsets.all(7),
                  height: 44,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: const Color.fromARGB(255, 231, 152, 124),
                  ),
                  child: Center(child: Text('Add To Card')),
                
                
                ),
              ],
            ),
            SizedBox(height: 10,),
            Divider(
      color: const Color.fromARGB(255, 231, 152, 124),
      thickness: 2,
            ),
           Container(
               color: const Color.fromARGB(255, 239, 181, 160),
               height: 100,width: double.infinity,
               child: Column(children: [
                Row(children: [
                  
                ],)
               ],),
           ),
          ],
        ),
      ),
    );
  }
}

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({super.key, required this.color, required this.icon, required this.background});
  final Color color;
  final IconData icon;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: background,
      child: Icon(icon, color: color),
    );
  }
}
