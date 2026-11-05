import 'package:flutter/material.dart';

class SimpleWidgets extends StatefulWidget {
  const SimpleWidgets({super.key});

  @override
  State<SimpleWidgets> createState() => _SimpleWidgetsState();
}

class _SimpleWidgetsState extends State<SimpleWidgets> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        ///TODO The AppBar Widget
        appBar: AppBar(
          elevation: 0,
          // backgroundColor: Colors.teal,
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios_new),
          title: Text("Profile", style: TextStyle(color: Colors.black)),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notification_add_outlined),
            ),
          ],
        ),

        body: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.all(7),
              padding: EdgeInsets.all(7),
              height: 77,
              width: 177,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 214, 245, 114),
                    blurRadius: 7,
                    offset: Offset(2, 2),
                  ),
                ],
                color: Colors.grey,
                borderRadius: BorderRadius.circular(22),
                // borderRadius: BorderRadius.vertical(bottom: Radius.circular(22))
                border: Border(
                  bottom: BorderSide(color: Colors.black, width: 3),
                  left: BorderSide(color: Colors.black, width: 3),
                ),
              ),
              child: Center(
                child: Text(
                  'centersdfdgftfhgfjythdhgkuio8uijtrgbfgbfssmksbckushopksblbffhghkjk;op;8ftyghtghb',
               maxLines: 2,
               overflow:TextOverflow.ellipsis ,
               textAlign:TextAlign.start, 
                
                ),
              ),
            ),
            SizedBox(height: 120),
            Icon(Icons.person, color: Colors.blueGrey, size: 44),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Iyh Gaber Gomah',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  //  decoration: TextDecoration.lineThrough,
                  // decorationColor: Colors.red,
                  decorationStyle: TextDecorationStyle.dashed,
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Flutter Developer',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 22,
                  //    fontWeight: FontWeight.bold,
                  //decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.red,
                  decorationStyle: TextDecorationStyle.dashed,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.facebook_outlined, color: Colors.blue),
                SizedBox(width: 11),
                Icon(Icons.snapchat_outlined, color: Colors.yellow),
                SizedBox(width: 11),
                Icon(Icons.telegram_outlined, color: Colors.lightBlue),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
