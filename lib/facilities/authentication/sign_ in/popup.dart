import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PopUpSignIn extends StatefulWidget {
  const PopUpSignIn({super.key});

  @override
  State<PopUpSignIn> createState() => _PopUpSignInState();
}

class _PopUpSignInState extends State<PopUpSignIn> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Dialog(
        child: Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height * 2 / 5,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),//این کار نمیکنه
            ),
            child: Expanded(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    'ورود',
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'برای ورود شماره موبایل خود را وارد کنید',
                    style: TextStyle(
                        color: Color(0xff707070),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                          width: 60,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 1.5,
                                    blurRadius: 3)
                              ]),
                          child: const Center(
                            child: Text(
                              '+98',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: 150,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: '9123456789',
                            // labelText: 'شماره تلفن',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          maxLength: 10,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (!value!.startsWith('9')) {
                              return 'شماره تلفن صحیح نیست';
                            }
                            if (value.length < 9 && value.length > 1) {
                              return 'شماره تلفن 10 رقمی است';
                            }
                            return null;
                          },
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                      width: 200,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'تایید',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ))),
                  // SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
