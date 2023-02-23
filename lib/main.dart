import 'package:autopilot/screens/splash_page.dart';
import 'package:autopilot/services/classBuilder.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  ClassBuilder.registerClasses();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Nunito',
        primaryColor: Colors.black54,
        primarySwatch: Colors.blueGrey,
      ),
      home: const SplashScreen(),
    );
  }
}

class color {
  static Color primary = const Color.fromARGB(255, 49, 51, 53);
  static Color white = Colors.white;
  static Color black = Colors.black;
  static Color red = Colors.red;
  static Color blue = const Color.fromARGB(255, 13, 30, 70);
  static Color grey = const Color.fromARGB(248, 99, 99, 101);
}
