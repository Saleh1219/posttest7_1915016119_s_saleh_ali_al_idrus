import 'dart:async';

import 'package:flutter/material.dart';
import 'package:posttest7_1915016119_s_saleh_ali_al_idrus/MainPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    splashScreenStart();
    super.initState();
  }

  splashScreenStart() {
    var duration = Duration(seconds: 4);
    return Timer(duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) {
          return MainPage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor:Color.fromARGB(255, 35, 120, 129),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[ 
          Center(
            child: Image.asset(
              "assets/transpay.png",
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 2,
            ),
          ) ,
          Container(
            
            width: 250,
            height: 22,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 67, 145, 155),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              child: Text(
                  "Catat laporan keungan dengan KeuanganKu",
                  style: TextStyle(fontSize: 12, color: Colors.white,),
                ),
            ),
            ),
      ],
      ),
    );

  }
}