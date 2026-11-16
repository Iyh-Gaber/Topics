import 'package:flutter/material.dart';
import 'package:top_food/data_model.dart';

class Chat extends StatelessWidget {
   Chat({super.key});
  List<DataModel> items = [
DataModel(title: 'title', subtitle: 'subtitle', image: 'assets/images/Session-4.png', icon: Icons.call),
DataModel(title: 'title1', subtitle: 'subtitle1', image: 'assets/images/Session-4.png', icon: Icons.car_crash),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(items[index].image.toString()),
                        ),
                        Text(items[index].title.toString()),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemCount: items.length,
                ),
              ),

              SizedBox(height: 22),

              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.asset(items[index].image.toString(),width: 33,height: 33,),
                      title: Text(items[index].title.toString()),
                      subtitle: Text(items[index].subtitle.toString()),
                      trailing: Icon(items[index].icon),
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemCount: items.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
