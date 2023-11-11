import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Confirm extends StatefulWidget {
  const Confirm({required this.phone, super.key});
  final int phone;
  @override
  State<Confirm> createState() => _ConfirmState();
}

late Timer _timer;
int _startTime = 30;

class _ConfirmState extends State<Confirm> {
  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_startTime == 1) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _startTime--;
          });
        }
      },
    );
  }

  ///////////////////////////////
  int code = Random().nextInt(89999) + 10000;
  //////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Expanded(
        child: Dialog(
          child: Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 2.5 / 6,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.all(Radius.circular(20)), //این کار نمیکنه
              ),
              child: Expanded(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      'تایید شماره تلفن',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "+98 ",
                          style: TextStyle(
                              color: Color(0xff707070),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          widget.phone.toString(),
                          style: TextStyle(
                              color: Color(0xff707070),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'کد ارسال شده را وارد کنید',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    SizedBox(
                      width: 250,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: '1 – 2 – 3 – 4 – 5',
                          // labelText: 'شماره تلفن',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        maxLength: 5,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _startTime.toString(),
                          style:
                              TextStyle(color: Color(0xff118fff), fontSize: 14),
                        ),
                        SizedBox(width: 5),
                        const Text(
                          ':ارسال مجدد',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'ویرایش شماره تلفن',
                              style: TextStyle(
                                  color: Color(0xff118fff), fontSize: 14),
                            )),
                        const SizedBox(width: 15),
                        SizedBox(
                            width: 75,
                            height: 30,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  'تایید',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ))),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
