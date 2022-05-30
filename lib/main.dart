import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:posttest7_1915016119_s_saleh_ali_al_idrus/MainPage.dart';
import 'package:posttest7_1915016119_s_saleh_ali_al_idrus/SplashScreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

