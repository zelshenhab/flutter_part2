// ignore_for_file: prefer_const_constructors, unused_element, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Project1(),
    );
  }
}

class Project1 extends StatefulWidget {
  const Project1({super.key});

  @override
  State<Project1> createState() => Project1state();
}

class Project1state extends State<Project1> {
  List verse = [
    {"line1": " 0- What's your name?", "line2": "Zeyad"},
    {"line1": " 1- How old are you?", "line2": "20"},
    {"line1": " 2- Where are you from?", "line2": "Egypt"},
    {"line1": " 3- Where do you live?", "line2": "Kazan"},
    {"line1": " 4- What is your Hoppy?", "line2": "Football"},
    {"line1": " 5- What's your favourite subject?", "line2": "Math"},
  ];
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              verse[myIndex]["line1"],
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              verse[myIndex]["line2"],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (myIndex == 0) {
                        myIndex = verse.length - 1;
                      } else {
                        myIndex--;
                      }
                    });
                  },
                  backgroundColor: Colors.orange,
                  child: Icon(
                    Icons.arrow_left,
                    size: 60,
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      if (myIndex == verse.length - 1) {
                        myIndex = 0;
                      } else {
                        myIndex++;
                      }
                    });
                  },
                  backgroundColor: Colors.orange,
                  child: Icon(Icons.arrow_right, size: 60),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
