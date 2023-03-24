import 'dart:async';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  static const String id = "ituerggoerfhe32534543thr";

  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int vaqt = 0;
  int i = 0;

  // l vaqt sekundlari
  List<int> l = [0, 2, 3, 4, 5];

  // d bu l vaqtdagi textlar
  List<String> d = ["1", '6', '5', '67', 'er'];
  String text1 = "hello12353244444444444444444444444"
      "44fffffffffffffffffffffffffffffffffffffffffffffff"
      "ff44444444444444444444444444444444444444444444444443";

  void _times() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (vaqt == l[i]) {
        setState(() {
          text1 = d[i];
          i++;
          vaqt++;
        });
      } else {
        setState(() {
          vaqt++;
        });
      }
    });
  }
  void _vaqt(){
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        vaqt ++;
      });
    });
  }

  @override
  void InitState() {
    super.initState();
    _vaqt();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            children: [
              Text(
                text1,
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                vaqt.toString(),
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
