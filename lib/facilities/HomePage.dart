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
  /*void initState() {
    popUpSignIn = PopUpSignIn();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showPopUp(popUpSignIn);
    });
    super.initState();
  }*/

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
                    Spinner(
  title: "Tentez votre chance !",
  titleColor: Color(0xFFD80497),
  description: "Faites tourner la roue pour tenter d'obtenir d'innombrables cadeaux",
  descriptionColor: Color(0xFFA7A7A7),
  gifts: ["Gift 1", "Gift 2", "Gift 3", ...],
  imagePath: "assets/images/roulette.png",
  iconPath: "assets/images/roulette-icon.png",
)
                    ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    // ignore: sort_child_properties_last
                    child: const Text('شانست رو امتحان کن',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.blue[900]),
                    ),
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
