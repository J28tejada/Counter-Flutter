import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Alterna Counter'))),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$clickCounter',
                style: TextStyle(fontSize: 42, fontWeight: FontWeight.w400),
              ),
              Text(
                'Click${clickCounter <= 1 ? '' : 's'}',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 30),
            FloatingActionButton.extended(
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              },
              label: Icon(Icons.plus_one),
              backgroundColor: const Color.fromARGB(255, 133, 178, 222),
            ),
            SizedBox(width: 20),
            FloatingActionButton.extended(
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              label: Icon(Icons.refresh_rounded),
              backgroundColor: const Color.fromARGB(255, 232, 243, 254),
            ),
            SizedBox(width: 20),
            FloatingActionButton.extended(
              onPressed: () {
                setState(() {
                  clickCounter >= 1 ? clickCounter-- : clickCounter;
                });
              },
              label: Icon(Icons.exposure_minus_1),
              backgroundColor: const Color.fromARGB(255, 133, 178, 222),
            ),
          ],
        ),
      ),
    );
  }
}
