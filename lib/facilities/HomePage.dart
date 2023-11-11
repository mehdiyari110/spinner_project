import 'package:flutter/material.dart';

import 'authentication/sign_ in/popup.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PopUpSignIn popUpSignIn;

  showPopUp(Widget dialog) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        });
  }

  @override
  void initState() {
    popUpSignIn = PopUpSignIn();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showPopUp(popUpSignIn);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // popup_sing_in a = popup_sing_in as popup_sing_in;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('welcome'),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Container(
                    //این برای اسپینرویل
                    ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('شانست رو امتحان کن',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orange),
                  ),
                ),
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
