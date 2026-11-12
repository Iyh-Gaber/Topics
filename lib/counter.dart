import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;
  double value = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(count.toString()),
          SizedBox(height: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 165, 203, 234),
                  foregroundColor: const Color.fromARGB(255, 243, 244, 245),
                ),

                onPressed: () {
                  setState(() {
                    if (count > 0) {
                      count--;
                    } else
                      count = 0;
                  });

                  // count--;
                },
                icon: Icon(Icons.remove),
              ),
              SizedBox(width: 22),
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 165, 203, 234),
                  foregroundColor: const Color.fromARGB(255, 243, 244, 245),
                ),

                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                icon: Icon(Icons.add),
              ),
            ],
          ),

          Slider(
            min: 100,
            max: 200,
            value: value,
            onChanged: (value) {
              setState(() {
                 value++;
              });
              value++;
            },
          ),
        ],
      ),
    );
  }
}
