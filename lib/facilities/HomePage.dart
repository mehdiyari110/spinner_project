import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('welcome'),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Container(),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('شانست رو امتحان کن'),
                style: ButtonStyle(
                  shadowColor: MaterialStatePropertyAll(Colors.orange),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
