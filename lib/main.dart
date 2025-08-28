import 'package:flutter/material.dart';
import 'package:portfolio_flutter/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ADEREMI ABIODUN | Flutter Developer',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0D1B2A),
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: "Quicksand",
          bodyColor: Colors.white,
          displayColor: const Color.fromARGB(255, 101, 53, 53),
        ),
      ),
      //  ThemeData(
      //   useMaterial3: true,
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      // ),
      home: HomeScreen(),
    );
  }
}
